FROM alphine: 3.8

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install -r requirements.txt

# Bundle app source
COPY simpleapp.py /src/simpleapp.py

EXPOSE 8000
CMD ["python", "/src/simple.app", "-p 8000"]
