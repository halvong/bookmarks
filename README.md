Django2, Apress PDF
3/21, Wed
pg178
chp5

bookmarklet works!

#notes
authentication views, pg 106

#database
bookmarks

#superuser
david:david

http://localhost:8000/admin

#user
david:david
hvong@legalzoom.com
---
hal:worknoww 
halvong@yahoo.com
---
peter:ofnetwork 
halvong5@gmail.com
---
tim:tim
halvong@outlook.com

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
    docker-compose exec web python manage.py migrate --settings=bookmarks.settings.dev
15. docker-compose exec web python manage.py makemigrations images --settings=bookmarks.settings.dev

#----
user = User.objects.get(username='peter')
post = Post(title='Java Lambdas and Parallel Streams', slug='java_lambdas_and_parallel_streams', status='published', body='Java Lambdas and Parallel Streams', author=user)
post.save()
#----
send_mail('Django Bookmarks mail', 'This e-mail was sent with Django.', 'halvong@outlook.com', ['halvong@yahoo.com'], fail_silently=False)

#----
http://127.0.0.1:8000/images/create/?title=%20Django%20and%20Duke&url=http://upload.wikimedia.org/wikipedia/commons/8/85/Django_Reinhardt_and_Duke_Ellington_%28Gottlieb%29.jpg



