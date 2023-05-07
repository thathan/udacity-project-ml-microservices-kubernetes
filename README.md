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
