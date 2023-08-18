# Django

The Python-based Django framework is used by:

<!-- get URLS served from CDN here: https://icons8.com/icons -->

<div>
<img width="48" height="48" src="https://img.icons8.com/fluency/48/instagram-new.png" alt="instagram-new"/>
<img width="48" height="48" src="https://img.icons8.com/color/48/dropbox.png" alt="dropbox"/>
<img width="48" height="48" src="https://img.icons8.com/color/48/spotify--v1.png" alt="spotify--v1"/>
<img width="48" height="48" src="https://img.icons8.com/fluency/48/youtube-play.png" alt="youtube-play"/>
<img width="48" height="48" src="https://img.icons8.com/material-sharp/48/pinterest--v1.png" alt="pinterest--v1"/>
<img width="48" height="48" src="https://img.icons8.com/color/48/bitbucket.png" alt="bitbucket"/>
</div>

Upcoming:
- configuring URLs
- database model creation
- dynamic data in templates
- admin panel

## Setup new Django project

installation:<br>
`pip install django`

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

under `INSTALLED_APPS`,
add an entry for the name of the new django app that was just created.

## Views

A view is a function that receives a request and returns a response.

example, `workoutapp/views.py`:
```Python
from django.shortcuts import render, HttpResponse


def home(request):
    return HttpResponse("Welcome to the workoutapp")
```

then in `workoutapp/urls.py`:
```Python
from django.urls import path
from . import views

urlpatterns = [
    path("", views.home, name="home")
]
```

then in `workoutplans/urls.py`:
```Python
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path("workoutapp/", include("workoutapp.urls")),
]
```


## Development server
Run app<br>
`python manage.py runserver`

run Django app with the development server<br>
`python manage.py runserver (runs at local port 8000)`

if you wish to change port:<br>
`python manage.py runserver 8080`

then visit<br>
http://127.0.0.1:8000/workoutapp/welcome_view/

## Files

the special configuration files `asgi.py` and `wsgi.py` allow django to communicate with the web server.

the `settings.py` file:<br>
to install django apps, plugins, middleware,
or modify database engines.

the `urls.py` file: configure different url routes,
that can then be directed / routed to different Django applications.

the `manage.py` file acts as a command line tool,
and can be used for running the django development server,
do database migrations, create users and more.

the `models.py` file:
here the database models are placed.

the `admin.py` file:
register database models so they can be viewed on the admin panel.

the `tests.py` file: adding automated tewst cases.

the `views.py` file:
create different views or routes, that can be accessed from the website.

## templates

example, create `templates/index.html`,
populate using emmet,
then add blocks, e.g.
`<title>{% block title %}workoutplans{% endblock %}</title>`

which uses the jinja templating engine, which allows displaying dynamic data.


## CSS

- bootstrap
- tailwind

## Run Django app with Docker

```BASH
docker build --tag python-django .
docker run --publish 8000:8000 python-django
```
