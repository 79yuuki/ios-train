//
//  MixiViewController.m
//  MixiUserDefaultsSample
//
//  Created by 田村 航弥 on 2013/05/02.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiViewController.h"

@interface MixiViewController ()

- (IBAction)pressSaveButton:(id)sender;
- (IBAction)pressReadButton:(id)sender;
- (IBAction)pressReadSettingButton:(id)sender;

@end

@implementation MixiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressSaveButton:(id)sender {
    // TODO: 値の保存（NSArrayなど）
}

- (IBAction)pressReadButton:(id)sender {
    // TODO: 保存した値をLog出力
}

- (IBAction)pressReadSettingButton:(id)sender {
    // TODO: 設定の値をLog出力
}

@end
