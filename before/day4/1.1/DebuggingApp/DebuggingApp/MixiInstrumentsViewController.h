//
//  MixiInstrumentsViewController.h
//  DebuggingApp
//
//  Created by 武田 祐一 on 2013/05/13.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MixiInstrumentsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
