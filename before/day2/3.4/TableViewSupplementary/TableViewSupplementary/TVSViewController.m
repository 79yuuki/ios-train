//
//  TVSViewController.m
//  TableViewSupplementary
//
//  Created by 武田 祐一 on 2013/04/23.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "TVSViewController.h"

@interface TVSViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TVSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // 行数を返す
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"(%d, %d)", indexPath.section, indexPath.row];
    
    // セルを返す
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // セクション数を返す
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    // セクションタイトルを返す
    return [NSString stringWithFormat:@"%d 番目のセクション", section];
}

#pragma mark - UITableViewDelegate
// TODO: ヘッダの高さを返す

// TODO: ヘッダの内容を返す

// TODO: フッタの高さを返す

// TODO: フッタの内容を返す

@end
