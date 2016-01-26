//
//  JLAmountKeyboard.h
//  JLAmountKeyboard
//
//  Created by jlteams on 16/1/25.
//  Copyright © 2016年 jlteams. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JLAmountKeyboardDelegate <NSObject>

- (void)jlAmountKeyboard:(UIButton *)button;

@end

@interface JLAmountKeyboard : UIView

@property (nonatomic,weak) id<JLAmountKeyboardDelegate> delegate;

@end
