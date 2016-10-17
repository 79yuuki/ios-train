//
//  MixiDailyView.h
//  MixiCodeDesign2
//
//  Created by 田村 航弥 on 2013/05/15.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MixiDailyViewDelegate <NSObject>

- (void)dailyViewDidPressCloseButton;

@end

@interface MixiDailyView : UIView

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UIButton *closeButton;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;
@property (nonatomic, weak) id<MixiDailyViewDelegate> delegate;

+ (instancetype)dailyView;
- (IBAction)pressCloseButton:(id)sender;

@end
