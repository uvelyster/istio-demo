FROM python:3.7-alpine
COPY ./requirement.txt /app/requirement.txt
WORKDIR /app
RUN pip install -r requirement.txt
COPY . /app
ENTRYPOINT [ "python" ]
ARG ver=NA
EXPOSE 5000
ENV VERSION=$ver
CMD [ "app.py" ]

