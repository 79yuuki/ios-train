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

@end

@implementation WVSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // TODO: webViewのdelegateをセット
    
    // TODO: requestを作ってwebViewのloadRequestを呼び出す
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate
// TODO: 読み込み開始のデリゲートメソッドを追加

@end
