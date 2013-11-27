//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Yin on 13-11-27.
//  Copyright (c) 2013年 Yin. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

@synthesize display = _display;

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [sender currentTitle];
    self.display.text = [self.display.text stringByAppendingString:digit];
}
@end
