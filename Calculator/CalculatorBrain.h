//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Yin on 13-11-29.
//  Copyright (c) 2013年 Yin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand:(double)operand;
- (double)performOperation:(NSString *)operation;
- (void)clearStack;
@end
