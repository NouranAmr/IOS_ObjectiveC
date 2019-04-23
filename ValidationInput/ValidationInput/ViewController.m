//
//  ViewController.m
//  ValidationInput
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
- (IBAction)clickstring:(id)sender {
    NSString *userinput=_numbertxt.text;
    NSCharacterSet * set = [[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ"] invertedSet];
    if ([userinput rangeOfCharacterFromSet:set].location != NSNotFound) {
        NSLog(@"Input is not Characters.");
        _outputlbl.text=@"Input is not Characters.";
    }
    else
    {
        NSLog(@"Input is all Characters.");
        _outputlbl.text=@"Input is all Characters.";
    
    }
}

- (IBAction)clicknumber:(id)sender {
     NSString *userinput=_numbertxt.text;
    NSCharacterSet *numberSet = [NSCharacterSet decimalDigitCharacterSet];
    NSString * trimmedString = [userinput stringByTrimmingCharactersInSet:numberSet];
    if ((trimmedString.length == 0) && (userinput.length > 0)) {
        NSLog(@"Input is all numbers.");
        _outputlbl.text=@"Input is all numbers.";
    
    }
    else{
        NSLog(@"Input is not numbers.");
        _outputlbl.text=@"Input is not numbers.";
    }

}

@end
