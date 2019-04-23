---
layout: page
title: nginx中location配置项详解
tags: 
 - nginx
comments: true
---
##### 语法：location [=|~|~*|^~|@] /uri/ {...}
location默认位于server配置块中，用于根据用户请求中的URI匹配上面的/uri表达式，如果可以匹配，就选择location {}块中的配置来处理用户请求。匹配规则如下：
`=` *表示把URI作为字符串，与uri完全匹配。例：*   
```nginx
location = / {
 # 只有当用户请求是/时，才会使用该location下的配置。
}
```
`~` *表示匹配URI时字母大小写敏感。*   
`~*` *表示匹配URI时忽略字母大小写的问题。*  
`^~` *表示匹配URI时只需要其前半部分与uri的参数匹配即可。例：*  
```nginx
location ^~ /images/ {
 # 以/images/开始的请求都会匹配上。
}
```
`@` *表示仅用于nginx服务内部的请求之间的重定向，带有@的location不直接处理用户请求。*  
  
uri也是支持正则表达式的，例：
```nginx
location ~* \.(gif|jpg|jpeg|png|bmp)$ {
 # 匹配以gif,jpg,jpeg,png,bmp结尾的请求，并且不区分大小写
}
```
  
location是有顺序的，当一个请求有可能匹配多个location时，实际上这个请求会被第一个location处理。
