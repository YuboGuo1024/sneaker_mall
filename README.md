# Sneaker Mall

## Requirements

### Packages
See [requirements.txt](requirements.txt). And run this command to install all the packages:

```
pip install -r requirements.txt
```

### MySQL

```
database: sneaker
username: root
password: 123456
port: 3306
```

In this project's root folder, enter into your MySQL shell using `mysql -uroot -p`, and enter the password `123456`.

Create `sneaker` database:
```
mysql> create database sneaker;
```
Import all the tables using `sneaker.sql`:
```
mysql> use sneaker;
mysql> source sneaker.sql
```
Check the tables in `sneaker` database:
```
+----------------------------+
| Tables_in_sneaker          |
+----------------------------+
| auth_group                 |
| auth_group_permissions     |
| auth_permission            |
| auth_user                  |
| auth_user_groups           |
| auth_user_user_permissions |
| django_admin_log           |
| django_content_type        |
| django_migrations          |
| django_session             |
| paypal_ipn                 |
| tb_address                 |
| tb_delivery_options        |
| tb_order                   |
| tb_order_item              |
| tb_sneaker                 |
| tb_sneaker_brand           |
| tb_sneaker_image           |
| tb_sneaker_size            |
+----------------------------+
19 rows in set (0.07 sec)
```

### PayPal

Test account:
```
account: personal@sneaker.com
password: 12345678
```

## Run

In root folder, run this command to start django:
```
python manage.py runserver
```
Enter `127.0.0.1:8000` in your browser to use this project.

You can enter `127.0.0.1:8000/admin` in your browser to see the admin page.

Test accounts:
```
user:
  account: test01
  password: 123456
admin:
  account: admin
  password: 123456 
```
