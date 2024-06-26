FROM python:3.12.2-slim 

COPY . /app

WORKDIR /app

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install pip --upgrade && \ 
    /opt/venv/bin/pip install -r req.txt && \
    chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]

