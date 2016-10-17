//
//  MixiTimeLineModel.m
//  MixiTimelineSample
//
//  Created by 田村 航弥 on 2013/05/16.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiTimeLineModel.h"


@implementation MixiTimeLineModel

- (void)fetchTimelineData {
    NSURL *url = [NSURL URLWithString:@"https://raw.github.com/mixi-inc/iOSTraining/master/SampleData/9.3/timeline.json"];
    
    // TODO: urlを使ってrequestを作成し、非同期で通信を行う
    
    // TODO: エラー時はtimeLineModelDidFailLoadを投げる

    // TODO: 成功時はtimelineArrayにデータを保存しtimeLineModelDidFinishLoadを投げる
}

@end
