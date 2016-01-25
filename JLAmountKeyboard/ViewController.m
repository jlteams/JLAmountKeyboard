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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    JLAmountKeyboard *jlAmountKeyboard = [[NSBundle mainBundle] loadNibNamed:@"JLAmountKeyboard" owner:self options:nil].lastObject;

    _amountTextField.inputView = jlAmountKeyboard;

    _textView.inputView = jlAmountKeyboard;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
