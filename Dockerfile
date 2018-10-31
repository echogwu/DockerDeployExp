FROM python:alpine3.8
ARG HOMEDIR=/Users/echowu/Documents/repos/DockerDeployExp/helloworld-container/

# Bundle app source
COPY . ${HOMEDIR}
RUN echo ${HOMEDIR}

# Install app dependencies
RUN pip install -r ${HOMEDIR}requirements.txt

EXPOSE 8000
CMD python /Users/echowu/Documents/repos/DockerDeployExp/helloworld-container/simpleapp.py -p 8000
