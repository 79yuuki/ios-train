//
//  MixiViewController.m
//  MixiFileManagerSample
//
//  Created by 田村 航弥 on 2013/05/09.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiViewController.h"

@interface MixiViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;

- (IBAction)pressSaveButton:(id)sender;
- (IBAction)pressReadButton:(id)sender;
- (IBAction)pressDeleteButton:(id)sender;

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

- (NSURL *)getFileURL {
    // TODO: NSFileManagerを作ってDocumentDirectoryのURLを取得
    
    // TODO: URLから絶対パスを取得
    
    // TODO: 保存するファイル（save.xml）をDocumentのパスに追加
    
    // TODO: ファイルパスを返す
}

- (IBAction)pressSaveButton:(id)sender {
    // TODO: textField1とtextField2の内容をNSDictionaryに変換して保存
}

- (IBAction)pressReadButton:(id)sender {
    // TODO: データを読み込んで、textField1とtextField2に内容を表示
}

- (IBAction)pressDeleteButton:(id)sender {
    // TODO: ファイルの削除
}

@end
