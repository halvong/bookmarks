Django2, Apress PDF
3/12, Tues
pg116
chp4

#notes
authentication views, pg 106

#database
bookmarks

#superuser
hal:hal

http://localhost:8000/admin

#user
hal:hal
peter:networkof

#steps
1. python manage.py migrate
2. python manage.py runserver
3. python manage.py startapp account
4. docker-compose exec web python manage.py makemigrations account 
5. docker-compose exec web python manage.py sqlmigrate account 0001
6. docker-compose exec web python manage.py migrate
7. docker-compose exec web python manage.py createsuperuser 
8. docker-compose exec web python manage.py shell
   docker-compose exec web python manage.py shell_plus --notebook #doesn't work
9. docker-compose exec database psql -U postgres -h database
10. exec(open('script.py').read())
11. docker-compose stop web
    docker-compose up --build -d web
12. docker-compose logs -f web 
13. docker-compose up -d --force-recreate web #recreate container web 
14. docker-compose exec web python manage.py shell --settings=bookmarks.settings.dev
#----
user = User.objects.get(username='peter')
post = Post(title='Java Lambdas and Parallel Streams', slug='java_lambdas_and_parallel_streams', status='published', body='Java Lambdas and Parallel Streams', author=user)
post.save()
#----
send_mail('Django Bookmarks mail', 'This e-mail was sent with Django.', 'halvong@outlook.com', ['halvong@yahoo.com'], fail_silently=False)
