# SpringBoot网上商城
> 使用SpringBoot 集成Spring-data-jpa,Druid连接池,thymeleaf模板实现的一个简单网上商城项目，包含后台管理

项目预览地址：[https://skywa1ker.cn/mall/](https://skywa1ker.cn/mall/)

## Docker部署
### Build image
```bash
mvn clean package dockerfile:build -DskipTests -e
```
### Run
```bash
docker run -p 8081:8081 --name mall -v /data/mall/config:/data/mall/config -v /data/mall/log:/data/mall/log -v /data/mall/file:/data/mall/file -v /data/mall/h2db:/data/mall/h2db --restart=always -d skywa1ker/mall:1.0
```