[![thathan](https://circleci.com/gh/thathan/udacity-project-ml-microservices-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/thathan/udacity-project-ml-microservices-kubernetes)

# Housing prices predictor

## Description

The project contains a model that has been trained to predict housing prices in Boston according to several features, 
such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 
Predictions (inference) about housing prices are served through API calls. 

## Getting Started

* Install dependencies: 
```
pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt
```

* Run web app:
```
python app.py
``` 

You can also run start the web app as a docker container: 
```
./run_docker.sh
```

## Important files in the repo: 

* **run_docker.sh**: Starts the web app as a docker container
* **upload_docker.sh**: Uploads docker image to dockerhub
* **run_kubernetes.sh**: Starts a kubernetes pod with the web app
* **make_prediction.sh**: Makes a call to the web app running on localhost and listening to port 8000

## Running the project in a kubernetes cluster

After setting up a kubernetes cluster, we can replicate the project with the following steps: 
* Run the **run_kubernetes.sh** script. This will start a pod and forward to local port 8000
* Run the **make_prediction.sh** script in order to call the web service and get a prediction
* Run the following command in order to view pod logs: 
```
kubectl logs predictor
```

