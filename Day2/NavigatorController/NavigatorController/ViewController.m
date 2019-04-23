//
//  ViewController.m
//  NavigatorController
//
//  Created by JETS Mobile Lab-3 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (IBAction)sendbtn:(UIButton *)sender {
    SecondViewController *secondobj= [self.storyboard instantiateViewControllerWithIdentifier:@"secondview"];
    NSMutableString * str =[NSMutableString stringWithString:@"Hello "];
     [str appendString: _nametextfield.text];
    secondobj.str=str;
    secondobj.firstView=self;
    [self.navigationController pushViewController:secondobj animated:NO];
    
}
-(void)clearTxt{
    _nametextfield.text=@"";
}
@end
