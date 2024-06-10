#!/bin/bash 

DJANGO_SUPERUSER_EMAIL = ${DJANGO_SUPERuSER_EMAIL:-"hello@hello.com"}
cd /app/

/opt/venv/bin/python manage.py migrate --noinput 
/opt/venv/bin/python manage.py collectstatic --noinput
/opt/venv/bin/python manage.py createsuperuser --email ${DJANGO_SUPERUSER_EMAIL} --noinput || true

