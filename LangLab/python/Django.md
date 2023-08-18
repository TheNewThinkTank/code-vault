# Django

upcoming:
- configure URLs
- database model creation
- dynamic data in templates
- admin panel

## Setup new Django project
start a new Django project<br>
`django-admin startproject workoutplans .`

install the testing framework (interface between pytest and django, with additional features)<br>
`pip install pytest-django`

start a new Django app<br>
`python manage.py startapp workoutapp`

`cd - python manage.py startapp workoutapp`

add html template:<br>
`mkdir templates && cd templates`

`echo welcome page workout generator > index.html`

Navigate to `project/myproject/settings.py`:

add<br>
`import os`

update `TEMPLATES[“DIRS”]` with:<br>
`os.path.join(BASE_DIR, "workoutapp/templates")`

## Views
open `workoutapp/views.py`

A view is a function that receives a request and returns a response

## Development server
Run app<br>
`python manage.py runserver`

run Django app with the development server<br>
`python manage.py runserver (runs at local port 8000)`

if you wish to change port:<br>
`python manage.py runserver 8080`

then visit<br>
http://127.0.0.1:8000/workoutapp/welcome_view/


## Run Django app with Docker

```BASH
docker build --tag python-django .
docker run --publish 8000:8000 python-django
```
