//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Yin on 13-11-29.
//  Copyright (c) 2013年 Yin. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()

@property (nonatomic, strong) NSMutableArray *operandStack;

@end

@implementation CalculatorBrain

@synthesize operandStack = _operandStack;

// operandStack getter
- (NSMutableArray *)operandStack
{
    if (_operandStack == Nil) _operandStack = [[NSMutableArray alloc]init];
    return _operandStack;
}

// operandStack setter
- (void)setOperandStack:(NSMutableArray *)operandStack
{
    _operandStack = operandStack;
}

// 压入操作数
- (void)pushOperand:(double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

// 取出操作数
- (double)popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if (operandObject) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

// 执行运算
- (double)performOperation:(NSString *)operation
{
    double result = 0;
    
    if ([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    }else if ([operation isEqualToString:@"*"]) {
        result = [self popOperand] * [self popOperand];
    }else if ([operation isEqualToString:@"-"]) {
        result = -[self popOperand] + [self popOperand];
    }else {
        double divisor = [self popOperand];
        if (divisor) {
            result = [self popOperand] / divisor;
        }else {
            result = 0;
        }
    }
    [self pushOperand:result];
    
    return result;
}

- (void)clearStack
{
    _operandStack = Nil;
}

@end
