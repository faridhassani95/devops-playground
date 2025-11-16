# 1. پایه: Alpine سبک
FROM alpine:latest

# 2. نصب bash و curl و یک وب سرور ساده (busybox HTTP server)
RUN apk add --no-cache bash curl busybox-extras

# 3. دایرکتوری کاری
WORKDIR /app

# 4. کپی همه فایل‌ها
COPY . .

# 5. ایجاد یک فایل ساده index.html
RUN echo "<h1>Hello from DevOps Playground!</h1>" > index.html

# 6. فرمان پیش‌فرض: اجرا وب سرور روی پورت 80
CMD ["httpd", "-f", "-p", "80"]
