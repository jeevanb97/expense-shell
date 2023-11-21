#first for UI we are installing Nginx
dnf install nginx -y

cp expense.conf  /etc/nginx/default.d/expense.conf
#next we are removing the default UI content that comes with nginx
rm -rf /usr/share/nginx/html/*
#bring content from net for UI
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip
#unzip it to /usr/share/nginx/html/
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

#copy reverse proxy configuration


#start nginx
systemctl enable nginx
systemctl restart nginx
