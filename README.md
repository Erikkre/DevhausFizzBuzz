# DevhausFizzBuzz
![mainMenu](https://github.com/Erikkre/DevhausInterview_DockerFizzBuzz/blob/main/res/readmeImages/instructions.png)

## Junior, Intermediate and Senior Developer  
Write a program in your language of choice that prints the numbers 1 to 105. But for multiples of three  print “Devhaus” instead of the number; for multiples of five print “Learning”; for multiples of seven print  “Model”; for multiples of both three and five print “Devhaus Learning”; for multiples of both three and  seven print “Devhaus Model”; for multiples of all of three, five and seven print “Devhaus Learning  Model”  
Write an automated test that proves that your code works.  
Upload the code to GitHub and provide the link prior to your interview.  
Prepare a 2-minute maximum presentation on how your code works, where the audience would be  another junior developer.  

## Intermediate and Senior Developer  
1. Create a bash shell script that would execute your code and sleep for 60 seconds.  2. From the above, make a multi-stage Dockerfile that compiles your code and executes your test;  the Docker file must have a CMD that executes your shell script.  
3. Create a file (can be shell script or GitHub Action) that builds your Docker image.  4. Push the image to a container registry and provide the image link prior to the interview  
Prepare a 5-minute maximum presentation on how your code works, where the audience would be a  junior developer.  
## Senior Developer  
Expand the work from above, but instead of sleeping for 60 seconds and terminate, make it run an HTTP  server that would work with `curl http://localhost:54321/fizzbuzz` and display the output there as  text/plain.  
The Dockerfile must have a CMD that runs your server; and must have a HEALTHCHECK.  Automate the build so images are pushed to a container registry when new code is pushed.  
Prepare a 10-minute maximum presentation on how your code works; how the deployment to the  registry is implemented and how to manage the changes where the audience would be an intermediate  developer. 


# Interview questions  
Here are the interview questions we may asking you to see if you are a good fit with our corporate  values: Courage, Learning Culture, Integrity, Collaboration.  
1. Explain git rebase. It's not the most common operation in git but it is the one we use quite  often to keep our history clean improving the integrity of the system.  
2. Describe your home lab. Most of the technologies we would be dealing with are quite new and  chances are will not be commonplace in most organizations, we expect a lot of self-learning as  we have a learning culture.  
3. How do you prepare for your daily meeting? 
4. Describe how well you will fit with our corporate values. 
5. What are you experimenting with right now? This may be technical (e.g., Setting up Zipkin to  work in AWS KeySpaces) or non-technical (e.g., cooking). It may be non-related to this work like  making a clone of Flappy Bird using the Unity game engine. This is to check for your fit with  learning culture.  
6. (For non-senior developer candidates) Do you try to do the higher-level assignments? 7. What do you think of the recruitment process? We want feedback from you so we can  continuously improve our processes. 
