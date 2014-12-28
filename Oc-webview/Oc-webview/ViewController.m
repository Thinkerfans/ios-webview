//
//  ViewController.m
//  Oc-webview
//
//  Created by apple on 14-12-28.
//  Copyright (c) 2014年 thinker. All rights reserved.
//

#import "ViewController.h"

/*
 webview控件使用小结：
 1、在storyboard中添加webView控件，并绑定到ViewController
 2、设置webView事件处理代理UIWebViewDelegant
 3、指定加载链接，即生产NSRULRequst对象
 4、加载链接
 
 遇到问题：
 1、webview显示内容不全
    将之前对webView控件删除，重新添加控件，并将WebView的scaling属性勾上。
 2、添加Toolbar工具栏，点击其子控件无响应。
    原因：没有打开toolbar的用户相应事件，将其interaction属性勾上即可
 */

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *mWebView;
@end

@implementation ViewController


- (IBAction)doStop:(id)sender {
    NSLog(@"stop");
    [self.mWebView stopLoading];
}

- (IBAction)dofresh:(id)sender {
    NSLog(@" refresh ");

    [self.mWebView reload];

}

- (IBAction)doBack:(id)sender {
    NSLog(@" back ");

    [self.mWebView goBack];

}
- (IBAction)doForward:(id)sender {
    NSLog(@" forward ");

    [self.mWebView goForward];
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    [self.mWebView setDelegate:self];
    [self.mWebView loadRequest:request];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"start load !");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"finish load !");
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"error =%@",error);
}


@end
