# Mozilla Load-Tester
FROM python:3-slim

RUN \
    apt-get update; \
    apt-get install -y python3-pip python3-venv git build-essential make; \
    apt-get install -y python3-dev libssl-dev libffi-dev

RUN \
    pip install virtualenv; \
    pip install git+https://github.com/loads/ailoads


# run the test
CMD aislave $AILOADS_GITHUB $AILOADS_TEST
