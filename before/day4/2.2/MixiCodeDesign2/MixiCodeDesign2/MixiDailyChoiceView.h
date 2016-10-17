//
//  MixiDailyChoiceView.h
//  MixiCodeDesign2
//
//  Created by 田村 航弥 on 2013/05/15.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiDailyView.h"

@protocol MixiDailyChoiceViewDelegate <NSObject>
@optional
- (void)dailyViewDidPressYesButton;
- (void)dailyViewDidPressNoButton;

@end

@interface MixiDailyChoiceView : MixiDailyView

@property (nonatomic, weak) id<MixiDailyViewDelegate, MixiDailyChoiceViewDelegate> delegate;

- (IBAction)pressYesButton:(id)sender;
- (IBAction)pressNoButton:(id)sender;

@end
