FROM python:3.9-slim

# Install necessary packages
RUN pip install netmiko

#Create a directory for the script
RUN mkdir /netmiko
WORKDIR /netmiko

#Copy the python script into the container
COPY get_cisco_config.py /netmiko/

#Set the entry point to run the python script 
ENTRYPOINT ["python", "get_cisco_config.py"]

