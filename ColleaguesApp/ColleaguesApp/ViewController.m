//
//  ViewController.m
//  ColleaguesApp
//
//  Created by JETS Mobile Lab-3 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
static int counter=0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    allnames=[NSArray arrayWithObjects: @"nouran",@"esraa",@"amr",@"sahar",@"radya",@"salma",@"ahmed",@"rokaya",@"mai",@"aya",@"arafa",@"yasmin",nil];
    
   _nameslbl.text=[allnames objectAtIndex:0];
    
}

- (IBAction)pervious:(id)sender {
    if(counter==0)
    {
        counter=11;
    }
    else
        counter--;
    _nameslbl.text=[allnames objectAtIndex:counter];
}
- (IBAction)next:(id)sender {
    if(counter==11)
    {
        counter=0;
    }
    else
        counter++;
    _nameslbl.text=[allnames objectAtIndex:counter];
}

@end
