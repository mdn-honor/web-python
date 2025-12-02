FROM 904115123825.dkr.ecr.ap-northeast-1.amazonaws.com/rongyao/python-web:2.0
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY templates ./templates
EXPOSE 5000
CMD ["python", "app.py"]
