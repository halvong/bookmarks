Django2, Apress PDF
3/5, Tues
pg111

#notes
authentication views, pg 106

#database
bookmarks

#superuser
hal:hal

http://localhost:8000/admin

#user
hal:hal

#steps
1. python manage.py migrate
2. python manage.py runserver
3. python manage.py startapp blogi
4. docker-compose exec web python manage.py makemigrations blogi 
5. docker-compose exec web python manage.py sqlmigrate blogi 0001
6. docker-compose exec web python manage.py migrate
7. docker-compose exec web python manage.py createsuperuser 
8. docker-compose exec web python manage.py shell~~~~ 
9. docker-compose exec database psql -U postgres -h database
10. exec(open('script.py').read())
11. docker-compose stop web
    docker-compose up --build -d web
12. docker-compose logs -f web 

#

#----
user = User.objects.get(username='peter')
post = Post(title='Java Lambdas and Parallel Streams', slug='java_lambdas_and_parallel_streams', status='published', body='Java Lambdas and Parallel Streams', author=user)
post.save()
#----
send_mail('Django mail', 'This e-mail was sent with Django.', 'halvong5@gmail.com', ['halvong@yahoo.com'], fail_silently=False)
