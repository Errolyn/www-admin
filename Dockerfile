FROM python:3.6-slim

# Extra python env
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PIP_DISABLE_PIP_VERSION_CHECK=1

WORKDIR /app
CMD ["./process_images.py"]

COPY requirements.txt ./
RUN pip install -r requirements.txt
