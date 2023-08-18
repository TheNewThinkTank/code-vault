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
