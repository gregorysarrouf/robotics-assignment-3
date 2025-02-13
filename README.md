# Structure
- compose.yml: Docker compose file that starts the containers
- producer/: Directory containing a Dockerfile for the producer 
             container and the script that creates the data
- consumer/: Directory containing a Dockerfile for the consumer 
             container and the sciprt that receives the data

# Application Functionality
- Originally the goal was for the producer container to be
continuously generating log messages for the consumer to receive, 
but in the end I ran into a few issues and just decided to send 
a strip of random numbers once, each time docker compose up is
ran. As for the docker network used, I decided to not configure
it or add a new one since a default bridge network is created
automatically with the docker compose command.

# Running The Containers
- Make sure docker is installed on your system, then simply 
execute the run.sh script located at the root of the project 
directory. It should run docker compose and have the containers, 
network and volume up and running. If you get permission issues,
execute the script as super user.
