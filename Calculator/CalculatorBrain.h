//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Philipp Weixlbaumer on 5/5/13.
//  Copyright (c) 2013 Philipp Weixlbaumer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand:(double)operand;
- (double)performOperation:(NSString *)operation;

@property (readonly) id program;

+ (double) runProgram:(id)program;
+ (NSString *)descriptionOfProgram:(id)program;

@end