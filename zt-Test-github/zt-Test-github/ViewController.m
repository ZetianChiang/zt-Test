//
//  ViewController.m
//  zt-Test-github
//
//  Created by weiche on 2017/6/22.
//  Copyright © 2017年 weiche. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<WKNavigationDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    //aaatest
    
//    WKWebView *webview = [[WKWebView alloc] initWithFrame:CGRectMake(0, 64, 320, 300)];
//    [self.view addSubview:webview];
//    webview.navigationDelegate = self;
//    webview.backgroundColor = [UIColor blackColor];
    
    UIWebView *www = [[UIWebView alloc] initWithFrame:CGRectMake(0, 64, 320, 300)];
    [self.view addSubview:www];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"html"];
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];

    [www loadHTMLString:content baseURL:[NSBundle mainBundle].bundleURL];
    
    //    [webview loadHTMLString:content baseURL:[NSBundle mainBundle].bundleURL];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        SecondViewController *sec = [[SecondViewController alloc] init];
//        sec.carName = @"11";
//        sec.carNum = 89076;
//        sec.ttype = TestTypeB;
//        sec.yaoCount = 6;
//        if (sec.navigationController) {
//            [self.navigationController pushViewController:sec animated:YES];
//        } else {
//            [self presentViewController:sec animated:YES completion:nil];
//        }
//    });
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    NSLog(@"1");
    NSString *url = navigationAction.request.URL.absoluteString;
    if ([url isEqualToString:@"https://www.baidu.com/"] ) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
        decisionHandler(WKNavigationActionPolicyCancel);
    } else {
        decisionHandler(WKNavigationActionPolicyAllow);
    }
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler {
    NSLog(@"2");
    decisionHandler(WKNavigationResponsePolicyAllow);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
