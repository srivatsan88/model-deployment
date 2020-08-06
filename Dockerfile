# lightweight python
FROM python:3.7-slim

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

# Install dependencies
RUN pip install tensorflow==2.1.0 tensorflow-datasets Flask gunicorn

# Run the flask service on container startup
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 SAGunicorns