//
//  calmodel.h
//  rpmcalculator
//
//  Created by epita on 04/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calmodel : NSObject
@property (nonatomic,retain) NSMutableArray *operandArray;

-(void) pushOperand : (double) operand;

-(double) performOperation : (NSString*)operationType val:(Boolean*)succeded;


@end
