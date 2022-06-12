
FROM python:3.9.10

WORKDIR /opt/app/

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    tesseract-ocr tesseract-ocr-jpn libtesseract-dev libleptonica-dev tesseract-ocr-script-jpan tesseract-ocr-script-jpan-vert  \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade pip
ADD requirement.txt /tmp/requirement.txt
RUN python -m pip install -r /tmp/requirement.txt
