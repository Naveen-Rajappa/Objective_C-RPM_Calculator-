//
//  ViewController.m
//  rpmcalculator
//
//  Created by epita on 20/04/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic) calmodel* calc;

@end
@implementation ViewController

-(void)free:(Boolean)setToZero {   
        _label_output.text = @"0";
}

- (IBAction)click:(UIButton *)sender {
    //NSLog(@"Button %@ pressed", sender.currentTitle);
    //UILabel *labels = _label;
    
    NSString *text = _label.text;
    _label.text = [ text stringByAppendingString:sender.currentTitle];
    NSInteger no = [ _label.text integerValue];
    _label.text = [NSString stringWithFormat:@"%ld", (long) no];

}

- (IBAction)cal:(UIButton *)sender {
	//NSLog(@"operators %@",sender.currentTitle);
    double val = [_calc performOperation:sender.currentTitle]];
        _label.text = [NSString stringWithFormat:@"%f", val];
    
}

- (IBAction)Enter:(UIButton *)sender {
	//NSLog(@"Performs operation%@",sender.currentTitle);
   double val = [_label_output.text doubleValue];
    [_calc pushOperand: val];
	[self free:true];
    
    
}


@end
