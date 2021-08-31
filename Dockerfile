FROM python:3.8.5
RUN mkdir /code
COPY requirements.txt /code
RUN pip install --upgrade pip && pip install -r /code/requirements.txt
COPY . /code
WORKDIR /code/infra_project/
CMD python manage.py runserver 0:5000
