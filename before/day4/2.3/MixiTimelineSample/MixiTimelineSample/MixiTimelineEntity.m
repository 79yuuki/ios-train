//
//  MixiTimelineEntity.m
//  MixiTimelineSample
//
//  Created by 田村 航弥 on 2013/05/16.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiTimelineEntity.h"

@implementation MixiTimelineEntity

// サーバから取得したデータをモデルに置き換える
- (id)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.author = dict[@"author"];
        self.date = dict[@"date"];
        self.objectType = dict[@"object_type"];
        self.text = dict[@"text"];
        self.photoURL = dict[@"photo_url"];
        self.photoHeight = [dict[@"photo_height"] floatValue];
    }
    return self;
}

@end
