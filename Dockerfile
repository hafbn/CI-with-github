# Dockerfile to build a flask app

FROM python:3.9



WORKDIR C:\Users\Ngoc\Desktop\EFREI\M2\MLinprod\CI-with-github


#copy the requirement file into the same directory which is /usr/app

COPY requirements.txt .



#install the requirements

RUN pip install -r requirements.txt



#copy the app to the current directory

COPY app.py .




#run the app

CMD ["python", "app.py"]