FROM nginx:1.24.0

## Step 1:
WORKDIR /app

## Step 2:

COPY . /app/index.html /usr/share/nginx/html/
COPY . /app/me.html /usr/share/nginx/html/
COPY . /app/projectmanagement.png /usr/share/nginx/html/

# COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
#RUN pip install --no-cache-dir --upgrade pip &&\
#    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

## Step 4:
EXPOSE 80

## Step 5:
# Run app.py at container launch
#CMD ["python", "app.py"]
