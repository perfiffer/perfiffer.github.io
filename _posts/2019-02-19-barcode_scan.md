---
layout: page
title: 利用quagga js实现手机端网页拉起摄像头扫描条形码
tags: 
 - javascript
comments: true
---
日常项目中可能会碰到需要用手机扫描条形码，此操作是在网页端进行操作，不是利用原生的andriod或者ios实现。针对此功能，调研了许久，发现了quagga js可以实现网页端的条形码扫描，配合手机端的文件上传框拉起摄像头，可以实现手机网页的条形
码扫描功能。
 
核心功能是利用Quagga.decodeSingle(config, callback)函数。

```javascript
Quagga.decodeSingle({
    decoder: {
        readers: ["code_128_reader", "ean_reader", "ean_8_reader", "code_39_reader", "code_39_vin_reader", "codabar_reader", "upc_reader", "upc_e_reader", "i2of5_reader", "2of5_reader", "code_93_reader"] // List of active readers
    },
    locate: true, // try to locate the barcode in the image
    src: 'image path' // or 'data:image/jpg;base64,' + base64Data
}, function(result){
    if(result) {
        if(result.codeResult) {
            console.log("result", result.codeResult.code);
        }
    }else{
        alert("未扫描成功!");
    }
});
```
config是配置项，decoder配置解码的方式，locate默认为true即可，src指定二维码文件路径，或者是转化后的base64编码。
   
有关quagga js具体的内容可以访问[quagga](https://serratus.github.io/quaggaJS)官网。
  
此项目已上传github，[barcode_scan](https://github.com/perfiffer/barcode_scan)，有任何问题可以通过邮箱等方式联系我，欢迎指正。

