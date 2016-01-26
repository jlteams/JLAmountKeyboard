//
//  ViewController.m
//  JLAmountKeyboard
//
//  Created by jlteams on 16/1/25.
//  Copyright © 2016年 jlteams. All rights reserved.
//

#import "ViewController.h"
#import "JLAmountKeyboard.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *amountTextField1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    JLAmountKeyboard *jlAmountKeyboard = [[NSBundle mainBundle] loadNibNamed:@"JLAmountKeyboard" owner:self options:nil].lastObject;
    jlAmountKeyboard.delegate = self;

    _amountTextField.inputView = jlAmountKeyboard;
    _amountTextField1.inputView = jlAmountKeyboard;

    _textView.inputView = jlAmountKeyboard;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark JLAmountKeyboard
- (void)jlAmountKeyboard:(UIButton *)button
{
    if (button.tag == 12) {

        //deleteBackward

        if ([_amountTextField1 isFirstResponder]) {
            [_amountTextField1 deleteBackward];
        } else if ([_amountTextField isFirstResponder]) {
            [_amountTextField deleteBackward];
        } else if ([_textView isFirstResponder]) {
            [_textView deleteBackward];
        }

    } else {

        if ([_amountTextField1 isFirstResponder]) {
            _amountTextField1.text = [_amountTextField1.text stringByAppendingString:button.titleLabel.text];
        } else if ([_amountTextField isFirstResponder]) {
            _amountTextField.text = [_amountTextField.text stringByAppendingString:button.titleLabel.text];
        } else if ([_textView isFirstResponder]) {
            _textView.text = [_textView.text stringByAppendingString:button.titleLabel.text];
        }

    }

}

@end
