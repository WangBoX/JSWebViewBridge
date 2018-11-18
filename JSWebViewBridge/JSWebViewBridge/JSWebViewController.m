//
//  JSWebViewController.m
//  JSWebViewBridge
//
//  Created by WangBo on 2018/11/18.
//  Copyright © 2018 wangbo. All rights reserved.
//

#import "JSWebViewController.h"
#import <WebKit/WebKit.h>
#import "OCTWebViewBridge.h"
#import "CCDGoodSeatPlugin.h"


@interface JSWebViewController ()
@property (nonatomic, strong) WKWebView *webView;
@end

@implementation JSWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"商品管理";
    
    [self.view addSubview:self.webView];
    [self.webView loadHTMLString:[self html] baseURL:nil];
    
    [self WebViewInjector];
}


- (void) WebViewInjector{
    
    CCDGoodSeatPlugin *plugin = [[CCDGoodSeatPlugin alloc] init];
    [[OCTWebViewPluginInjector injectorForWebView:self.webView] injectPlugin:plugin];
    
}


- (WKWebView *)webView {
    
    if (!_webView) {
        
        WKUserContentController *userController = [[WKUserContentController alloc] init];
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        configuration.userContentController = userController;
        configuration.allowsInlineMediaPlayback = YES;
        _webView = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:configuration];
    }
    return _webView;
}

- (NSString *)html {
    
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"demo" ofType:@"html"];
    NSString *js = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    return js;
}


@end
