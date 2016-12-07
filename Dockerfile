FROM msagency/msa-image-python:latest

# Install the Python dependencies
ADD requirements.txt /opt/ms/
RUN pip install -r /opt/ms/requirements.txt

# Override the default endpoints
ADD README.md NAME LICENSE VERSION /opt/ms/
ADD swagger.json /opt/swagger/swagger.json

# Copy all the other application files to /opt/ms
ADD run.sh /opt/ms/
ADD app.py /opt/ms/

# Execute the run script
CMD ["ash", "/opt/ms/run.sh"]
