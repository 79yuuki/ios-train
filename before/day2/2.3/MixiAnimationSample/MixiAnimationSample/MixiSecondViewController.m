//
//  MixiSecondViewController.m
//  MixiAnimationSample
//
//  Created by Koya Tamura on 2013/04/22.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiSecondViewController.h"

@interface MixiSecondViewController ()

@property (strong, nonatomic) UIImageView *ojisanImageView1;
@property (strong, nonatomic) UIImageView *ojisanImageView2;

@end

static CGRect const kOjisanInitialFrame = {
    { 85, 115 }, { 170, 170 }
};

@implementation MixiSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.ojisanImageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ojisan"]];
    self.ojisanImageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ojisan2"]];
    
    // TODO: ojisanImageView1の追加
    
    // TODO: ojisanImageView2の追加
    
    // TODO: ojisanImageView2を非表示にしておく
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // TODO: アニメーション追加
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
