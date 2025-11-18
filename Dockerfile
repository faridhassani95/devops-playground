FROM alpine:latest

# نصب bash
RUN apk add --no-cache bash

# ساخت دایرکتوری و فایل html در یک دستور RUN
RUN mkdir -p /app/html && \
    echo '<!DOCTYPE html><html><body><h1>Hello from DevOps Playground!</h1></body></html>' > /app/html/index.html

# دستور پیش‌فرض
CMD ["sh"]
