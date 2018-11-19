# JSWebViewBridge
WKWebView Javascript Bridge

1、pod 'OCTWebViewBridge',  '~>1.2.0'

2、引入文件：CCDGoodSeatPlugin.h/.m/
  GoodSeatPlugin.js

3、WKWebView注入插入器
   // CCDGoodSeatPlugin *plugin = [[CCDGoodSeatPlugin alloc] init];
   // [[OCTWebViewPluginInjector injectorForWebView:self.webView] injectPlugin:plugin];

4、在CCDGoodSeatPlugin.m内部接口处写实现的业务


eg：


    //成功type：0，cancel：1， fail：2
```
- (void)scanGetQrCode:(id)data CallBack:(OCTResponseCallback)callback{
    NSLog(@"======== 扫一扫todo =======");

    callback(@{
               @"type": @(0),
               @"data": @"hello world"
               });
}


- (void)downloadQrCode:(NSString *)qrCode CallBack:(OCTResponseCallback)callback{
    
    NSLog(@"======== 下载二维码todo =======");
    
    callback(@{
               @"type": @(0),
               @"data": @"保存成功",
               });
}

- (void)popViewControllerCallBack:(OCTResponseCallback)callback{
    
    NSLog(@"======== 返回todo =======");
    
    callback(@{
               @"type": @(0),
               @"data": @""
               });
}
```
