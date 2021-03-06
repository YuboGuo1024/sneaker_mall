# Generated by Django 4.0.3 on 2022-04-12 06:58

import apps.sneaker.models
import ckeditor.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Brand',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='', max_length=30, verbose_name='Brand Name')),
                ('icon', models.ImageField(upload_to=apps.sneaker.models.brand_upload_path, verbose_name='Brand Icon')),
                ('description', ckeditor.fields.RichTextField(blank=True, verbose_name='Description')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created At')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Updated At')),
            ],
            options={
                'verbose_name': 'Brand',
                'verbose_name_plural': 'Brand',
                'db_table': 'tb_sneaker_brand',
            },
        ),
        migrations.CreateModel(
            name='Sneaker',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255, verbose_name='Title')),
                ('description', ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Description')),
                ('market_price', models.DecimalField(decimal_places=2, max_digits=5, verbose_name='Market Price')),
                ('discount_price', models.DecimalField(decimal_places=2, max_digits=5, verbose_name='Discount Price')),
                ('is_active', models.BooleanField(default=True, help_text='Change product visibility', verbose_name='Sneaker Visibility')),
                ('click_num', models.IntegerField(default=0, verbose_name='Click Number')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created At')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Updated At')),
                ('brand', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='sneaker.brand', verbose_name='Brand')),
            ],
            options={
                'verbose_name': 'Sneaker',
                'verbose_name_plural': 'Sneakers',
                'db_table': 'tb_sneaker',
                'ordering': ('-created_at',),
            },
        ),
        migrations.CreateModel(
            name='SneakerSize',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('size', models.FloatField(verbose_name='Sneaker Size')),
                ('stock_num', models.IntegerField(default=0, verbose_name='Stock Number')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created At')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Updated At')),
                ('sneaker', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='sneaker_size', to='sneaker.sneaker')),
            ],
            options={
                'verbose_name': 'Sneaker Size',
                'verbose_name_plural': 'Sneaker Size',
                'db_table': 'tb_sneaker_size',
            },
        ),
        migrations.CreateModel(
            name='SneakerImage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(help_text='Upload a sneaker image', upload_to=apps.sneaker.models.sneaker_upload_path, verbose_name='Image')),
                ('is_cover', models.BooleanField(default=False, verbose_name='Is cover')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created At')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Updated At')),
                ('sneaker', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='sneaker_image', to='sneaker.sneaker')),
            ],
            options={
                'verbose_name': 'Sneaker Image',
                'verbose_name_plural': 'Sneaker Images',
                'db_table': 'tb_sneaker_image',
            },
        ),
    ]
