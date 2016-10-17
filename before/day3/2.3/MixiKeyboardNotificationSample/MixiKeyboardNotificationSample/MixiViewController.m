//
//  MixiViewController.m
//  MixiKeyboardNotificationSample
//
//  Created by 田村 航弥 on 2013/05/01.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiViewController.h"

@interface MixiViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation MixiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // TODO: 右ボタンを作成
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    
    // TODO: キーボードが隠れる際の通知を登録
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - keyboardNotification
- (void)keyboardWillShow:(NSNotification *)notification {
    NSLog(@"%@", notification.userInfo);
    
    // TODO: textViewの高さからキーボードの高さを引いて再設定する（userInfoのUIKeyboardFrameEndUserInfoKeyの値を参照する）
}

- (void)keyboardWillHide:(NSNotification *)notification {
    NSLog(@"%@", notification.userInfo);
    
    // TODO: textViewの高さをself.view.frameと同じ高さに再設定する
}

#pragma mark - private methods
// TODO: キーボードを隠す処理

@end
