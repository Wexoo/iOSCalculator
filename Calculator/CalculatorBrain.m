//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Philipp Weixlbaumer on 5/5/13.
//  Copyright (c) 2013 Philipp Weixlbaumer. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property (nonatomic, strong) NSMutableArray *programStack;
@end;

@implementation CalculatorBrain

@synthesize programStack = _programStack;

- (NSMutableArray *)programStack
{
    if(_programStack == nil) _programStack = [[NSMutableArray alloc] init];
    return _programStack;
}

- (void)pushOperand:(double)operand
{
    [self.programStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double)popOperand
{
    NSNumber *operandObject = [self.programStack lastObject];
    if(operandObject)[self.programStack removeLastObject];
    return [operandObject doubleValue];
}

- (double)performOperation:(NSString *)operation
{
    
    //[self.programStack addObject:operation];
    //[CalculatorBrain runProgram:self.program];

    double result = 0;
    
    if([operation isEqualToString:@"+"]){
        result = [self popOperand] + [self popOperand];
    } else if([@"*" isEqualToString:operation]){
        result = [self popOperand] * [self popOperand];
    }else if([@"-" isEqualToString:operation]){
        result = [self popOperand] - [self popOperand];
    }else if([@"/" isEqualToString:operation]){
        result = [self popOperand] / [self popOperand];
    }
    
    [self pushOperand:result];
    
    return result;
}



@end
