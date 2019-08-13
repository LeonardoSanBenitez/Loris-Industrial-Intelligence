FROM python:3.6-slim
COPY ./app.py /deploy/
COPY ./dockerRequirements /deploy/
COPY ./fpolis_trained_model.pkl /deploy/
WORKDIR /deploy/
RUN pip install -r dockerRequirements
EXPOSE 80
ENTRYPOINT ["python", "app.py"]
