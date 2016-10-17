//
//  MixiViewController.m
//  MixiCodeDesign2
//
//  Created by 田村 航弥 on 2013/05/15.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiViewController.h"
#import "MixiSharedObject.h"

@interface MixiViewController ()

@property (nonatomic, strong) MixiDailyChoiceView *dailyView;
@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation MixiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.dailyView = [MixiDailyChoiceView dailyView];
    self.dailyView.center = self.view.center;
    self.dailyView.delegate = self;
    [self.view addSubview:self.dailyView];
    
    self.array = [NSMutableArray array];
    for (NSInteger i = 0; i < 10; i++) {
        [self.array addObject:[MixiSharedObject sharedInstance]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dailyViewDidPressCloseButton {
    [self.dailyView removeFromSuperview];
}

- (void)dailyViewDidPressYesButton {
    //do something
    NSLog(@"Yes");
}

- (void)dailyViewDidPressNoButton {
    //do something
    NSLog(@"No");
}

@end
