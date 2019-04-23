//
//  ViewController.m
//  CalculatorApp
//
//  Created by JETS Mobile Lab-3 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)add:(id)sender {
    long result=[_number1txt.text longLongValue]+[_number2txt.text longLongValue];
    _resultlbl.text=[NSString stringWithFormat:@"%ld",result];
    
}
- (IBAction)subtract:(id)sender {
    long result=[_number1txt.text longLongValue]-[_number2txt.text longLongValue];
    _resultlbl.text=[NSString stringWithFormat:@"%ld",result];
}

- (IBAction)multiplcation:(id)sender {
    long result=[_number1txt.text longLongValue]*[_number2txt.text longLongValue];
    _resultlbl.text=[NSString stringWithFormat:@"%ld",result];
}

- (IBAction)divide:(id)sender {
    if([_number2txt.text longLongValue]!=0){
    long result=[_number1txt.text longLongValue]/
    [_number2txt.text longLongValue];
    _resultlbl.text=[NSString stringWithFormat:@"%ld",result];
    }
    else
    {
        _resultlbl.text=@"Cannot Divide over 0";
    }
    
}

@end
