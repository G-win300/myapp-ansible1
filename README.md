# myapp-ansible1
**Project Summary**  
As soon as the developer pushes the updated code on the GIT master branch, a new test server
will be provisioned with all the required software. After this, the code will be containerized and
deployed on the test server.
The deployment will then be built and pushed to the prod server.
All this should happen automatically and will be triggered from a push to the GitHub master branch.

**goals**
1. Install and configure puppet agent on the slave node (Job 1)
2. Push an Ansible configuration on test server to install docker (Job 2)
3. Pull the PHP website, and the Dockerfile from the git repo and build and deploy your PHP
docker container. After. (Job 3)
4. If Job 3 fails, delete the running container on Test Server
