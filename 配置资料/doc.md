# 1 图片存放位置

idea配置的路径：D:\\IO\\shop\\shopImage\\

nginx配置路径为：../../../IO/shop/travelGuideImages

```
图片真正存放的路径：D:\IO\shop\travelGuideImages的目录下
```



nginx 的配置nginx.conf配置：

```conf

worker_processes  1;

events {
    worker_connections  1024;
}
http {
    include       mime.types;
    default_type  application/octet-stream;
    sendfile        on;
    keepalive_timeout  65;
    server {
   	 	# 端口
        listen       8888;
        server_name  localhost;
        location / {
        	# 路径
            root   ../../../IO/shop/travelGuideImages;
            index  index.html index.htm;
        }
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }
    }
}

```

