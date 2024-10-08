# docker build -t oxff00ff/hamster_mayhem_service:latest .
# docker push oxff00ff/hamster_mayhem_service:latest
# docker pull oxff00ff/hamster_mayhem_service:latest

FROM python:3.9-alpine

ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=on

WORKDIR /app

COPY Src ./Src
COPY main_bot.py ./
COPY requirements.txt ./


RUN pip install -r requirements.txt

CMD ["python", "main_bot.py"]