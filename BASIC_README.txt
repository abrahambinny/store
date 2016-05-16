#BASIC GUIDELINES
------------------------------------------------------------------------

#TOOLS USED
------------------------------------------------------------------------
python2.7
django1.9
jquery
HTML5
CSS

#MYSQL CREDENTIALS
------------------------------------------------------------------------
DBNAME  = 'db_articles'
USERNAME = 'root'
PASSWORD = 'binny@123'

#DATA MIGRATION
-------------------------------------------------------------------------
mysql -u root -pbinny@123 db_articles<article_data.sql 

#RUNSERVER
-------------------------------------------------------------------------
python manage.py runserver
SITE_URL  = http://127.0.0.1:8000/

#ADMIN CREDENTIALS
-------------------------------------------------------------------------
ADMIN_URL = 'http://127.0.0.1:8000/admin/'
USERNAME = 'admin'
PASSWORD = 'admin@123'


