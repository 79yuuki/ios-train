//
//  MixiViewController.m
//  MixiImagePickerSample
//
//  Created by 田村 航弥 on 2013/04/22.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiViewController.h"

@interface MixiViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
- (IBAction)pressCameraButton:(id)sender;

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

- (IBAction)pressCameraButton:(id)sender {
    // TODO: UIImagePickerControllerの作成
}

#pragma mark - UIImagePickerDelegate methods
// TODO: delegateメソッドの追加

@end
