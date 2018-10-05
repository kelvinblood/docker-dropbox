# dropbox
这是一个容器化的dropbox客户端。只需两步即可在linux下运行dropbox。

1. 启动容器：

   ```
   docker run --name=dropbox -d \
     -v /root/Dropbox:/root/Dropbox \
     -v /root/.dropbox:/root/.dropbox \
     kelvinblood/dropbox:v0.2
   ```

2. 关联账号

   ```
   docker logs -f dropbox
   ```

   查看容器的日志，然后浏览器访问认证链接：

   ```
   This computer isn't linked to any Dropbox account...
   Please visit https://www.dropbox.com/cli_link_nonce?nonce=e184433d7baeda90883461fecf1f3b8e to link this device.
   ```

   访问链接即可。

3. 查看dropbox运行状况

   ```
   docker exec dropbox python /dropbox.py status
   ```