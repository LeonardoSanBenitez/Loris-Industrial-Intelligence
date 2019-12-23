# What was done
* I did a simple deploy of an IA based system
* An API receives the input [temperature, pression] and return the real value [consuption]
* Based on the weather regression of 2019-1, with Random Forest, of Fpolis campus
* Hosted on AWS

# How it was done
Main tutorial used: https://towardsdatascience.com/simple-way-to-deploy-machine-learning-models-to-cloud-fd58b771fdcf
Also, to understand more about Flask: https://blog.miguelgrinberg.com/post/designing-a-restful-api-with-python-and-flask

I've changed a few things from the first tutorial, to improve my comprehension
To build: `sudo docker build -t smart-ems .`
To run the container: `sudo docker run -p 5000:5000 smart-ems .`
TO test:

```
curl -X POST \
ec2-18-220-97-52.us-east-2.compute.amazonaws.com:80/predict \
-H 'Content-Type: application/json' \
-d '[19, 1015]'
```

## Future improvements
* That it's just the very very beginning, a simple test just to try a concept
* But here are a few tips on what can be done from here:
* Don't receive just 1 tuple as input, but an array: [(temp1, pression1), (temp2, pression2), ...]
* Do it for every campus, not only fpolis
* Move from AWS to our own server. I don't know if this is the best thing to do, but probably is what will be done for $$ reasons. I few things will have to be changed in the docker file, but I think it will be easy
