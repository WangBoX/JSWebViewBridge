//
//  CCDGoodSeatPlugin.m
//  JSWebViewBridge
//
//  Created by WangBo on 2018/11/18.
//  Copyright © 2018 wangbo. All rights reserved.
//

#import "CCDGoodSeatPlugin.h"

@implementation CCDGoodSeatPlugin

- (NSString *)identifier{
    
    return @"WebView.bridge.GoodsSeat";
    
}

- (NSString *)javascriptCode{
    
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"GoodsSeat_plugin" ofType:@"js"];
    
    NSString *javascriptCode = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    
    return javascriptCode;
}

- (void)scanGetQrCode:(id)data CallBack:(OCTResponseCallback)callback{
    NSLog(@"======== 扫一扫 =======");
    
    callback(@{
               @"type": @(0),
               @"data": @"hello world~~~"
               });
}


- (void)downloadQrCode:(NSString *)qrCode CallBack:(OCTResponseCallback)callback{
    
    NSLog(@"======== 下载二维码 =======");
    
    callback(@{
               @"type": @(2),
               @"data": @"保存成功",
               });
}

- (void)popViewControllerCallBack:(OCTResponseCallback)callback{
    
    NSLog(@"======== 返回 =======");
    
    callback(@{
               @"type": @(0),
               @"data": @""
               });
}

@end
