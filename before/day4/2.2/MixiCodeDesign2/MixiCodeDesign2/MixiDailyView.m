//
//  MixiDailyAbstractView.m
//  MixiCodeDesign2
//
//  Created by 田村 航弥 on 2013/05/15.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiDailyView.h"

@implementation MixiDailyView

+ (instancetype)dailyView {
    return [[[self class] alloc] init];
}

- (void)pressCloseButton:(id)sender {
    if ([self.delegate respondsToSelector:@selector(dailyViewDidPressCloseButton)]) {
        [self.delegate dailyViewDidPressCloseButton];
    }
}

@end
