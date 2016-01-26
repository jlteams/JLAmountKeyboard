//
//  JLAmountKeyboard.m
//  JLAmountKeyboard
//
//  Created by jlteams on 16/1/25.
//  Copyright © 2016年 jlteams. All rights reserved.
//

#import "JLAmountKeyboard.h"

@implementation JLAmountKeyboard


- (IBAction)buttonAction:(id)sender {

    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *button = sender;

        if ([self.nextResponder isKindOfClass:[UITextField class]]) {

            UITextField *textField = (UITextField *)self.nextResponder;

            if (button.tag == 12) {
                [textField deleteBackward];
            } else {
                textField.text = [textField.text stringByAppendingString:button.titleLabel.text];
            }

        } else if ([self.nextResponder isKindOfClass:[UITextView class]]) {

            UITextView *textView = (UITextView *)self.nextResponder;

            if (button.tag == 12) {
                [textView deleteBackward];
            } else {
                textView.text = [textView.text stringByAppendingString:button.titleLabel.text];
            }
        }

    }

}

@end
