
FROM python:3.6 AS builder

RUN pip install mkdocs mkdocs-material pygments

COPY . /app
WORKDIR /app

RUN make build


FROM thriqon/alpine-darkhttpd AS runtime
# RUN rm -rf /www/site
COPY --from=builder /app/site /www

