# از Alpine به عنوان Base استفاده می‌کنیم
FROM alpine:latest

# نصب bash و وب‌سرور ساده (nginx)
RUN apk add --no-cache bash nginx

# ایجاد دایرکتوری برای وب‌سایت
RUN mkdir -p /app/html

# یک فایل ساده HTML برای تست بسازیم
RUN echo '<!DOCTYPE html><html><body><h1>Hello from DevOps Playground!</h1></body></html>' > /app/html/index.html

# nginx کانفیگ کنیم تا محتویات /app/html رو سرو کنه
RUN sed -i 's|/var/lib/nginx/html|/app/html|g' /etc/nginx/nginx.conf

# expose پورت 80
EXPOSE 80

# دستور پیش‌فرض
CMD ["nginx", "-g", "daemon off;"]
