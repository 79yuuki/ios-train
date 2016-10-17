//
//  WVSViewController.m
//  WebViewSample
//
//  Created by 武田 祐一 on 2013/04/30.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "WVSViewController.h"

@interface WVSViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

// TODO: ボタン変数を追加

@end

@implementation WVSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.webView.delegate = self;
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://s.amebame.com"]];
    [self.webView loadRequest:request];
    
    // TODO: toolbarにボタンを追加
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// TODO: toolbarのボタンが押された時の処理

#pragma mark - UIWebViewDelegate
// TODO: 読み込み完了のデリゲートメソッド追加。タイトルやボタンの状態変更など

@end
