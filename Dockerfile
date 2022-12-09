FROM python:3.8
LABEL maintainer="Katie Gamanji"
COPY . /app
WORKDIR /app
EXPOSE 5000
RUN pip install -r requirements.txt
RUN python init_db.py
CMD [ "python", "app.py" ]

# docker rmi hosamelbasiony/techtrends-k8s
# docker build -t hosamelbasiony/techtrends-k8s .

# docker tag hosamelbasiony/techtrends-k8s hosamelbasiony/techtrends-k8s:v1.0.0
# docker push hosamelbasiony/techtrends-k8s:v1.0.0

# kubectl -n techtrends apply -f yaml/deploy.yaml

# kubectl -n techtrends port-forward svc/techtrends 5000


# kubectl -n ingress-nginx --address 0.0.0.0 port-forward svc/ingress-nginx-controller 5000:80