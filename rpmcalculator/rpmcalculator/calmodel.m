//
//  calmodel.m
//  rpmcalculator
//
//  Created by epita on 04/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "calmodel.h"

@implementation calmodel

-(NSMutableArray *) operandArray{
    
    if(!self.operandArray)
    {
        self.operandArray = [[NSMutableArray alloc] init];
    }
    
    return self.operandArray;
    
}

-(void) pushOperand:(double)operand
{
    //[self.operandArray addObject : operand];
    NSNumber* operandNumber = [[NSNumber alloc] initWithDouble:operand];
    [_operandArray addObject:operandNumber];
 
}
-(double) performOperation:(NSString *)operand
{
	double val = 0;
    NSNumber *temp;
    
    if([operand isEqual: @"+"])
    {
        temp = [self.operandArray lastObject ];
        [self.operandArray removeLastObject];
        val = [NSNumber numberWithDouble:[temp doubleValue] + [[self.operandArray lastObject] doubleValue]];
        //push
        //return;

        
    }
    
    else if([operand isEqual:@"-"])
    {
	temp= [self.operandArray lastObject];
        [self.operandArray removeLastObject];
        val = [NSNumber numberWithDouble:[temp doubleValue] - [[self.operandArray lastObject] doubleValue]];
        
        
    }
	else if([operand isEqual:@"*"])
    {
        temp= [self.operandArray lastObject];
        [self.operandArray removeLastObject];
        val = [NSNumber numberWithDouble:[temp doubleValue] * [[self.operandArray lastObject] doubleValue]];
        
    }
    else if([operand isEqual:@"/"])
    {
        temp= [self.operandArray lastObject];
        [self.operandArray removeLastObject];
        val = [NSNumber numberWithDouble:[temp doubleValue] / [[self.operandArray lastObject] doubleValue]];
        
    }
    [_operandArray removeALLObjects];
	return val;
    
}

@end
