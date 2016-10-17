//
//  MixiViewController.m
//  MixiTimelineSample
//
//  Created by 田村 航弥 on 2013/05/13.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiViewController.h"
#import "MixiTimelineCell.h"

@interface MixiViewController ()

@property (nonatomic, strong) MixiTimeLineModel *timelineModel;
@property (nonatomic, weak) IBOutlet UITableView *timelineTableView;
@property (nonatomic, weak) IBOutlet UIView *loadingView;
@property (nonatomic, weak) IBOutlet UILabel *connectionFaildLabel;

@end

@implementation MixiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // timelineのモデルオブジェクトを作成
    self.timelineModel = [[MixiTimeLineModel alloc] init];
    self.timelineModel.delegate = self;
    
    // timelineのデータを取得
    [self.timelineModel fetchTimelineData];
    
    // timelineのobject_typeによるセルの設定
    [self.timelineTableView registerNib:[UINib nibWithNibName:@"MixiTimelineTextCell" bundle:nil] forCellReuseIdentifier:@"text"];
    [self.timelineTableView registerNib:[UINib nibWithNibName:@"MixiTimelinePhotoCell" bundle:nil] forCellReuseIdentifier:@"photo"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MixiTimelineModelDelegate methods
- (void)timeLineModelDidFinishLoad {
    // TODO: ローディング表示を終了してテーブルビューをリロード
}

- (void)timeLineModelDidFailLoad {
    // TODO: ローディング表示を終了して通信失敗をFBする
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // TODO: セクション内のデータ数を返す（=timelineのデータ数）セクション数はデフォルトでOK
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: timelineのobject_typeで表示するcellを出し分けて返す
    return nil;
}

#pragma mark - UITableViewDelegate methods
// TODO: セルの高さを設定するデリゲートメソッドで、timelineのtext文字数によるビューの高さ、またはphotoの高さを返す

@end
