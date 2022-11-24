
 set -o errexit
 pip install -r requirements.txt
 python manage.py collectstatic --noinput
 python manage.py makemigrations && python manage.py migrate

web: gunicorn in-focus.wsgi:application