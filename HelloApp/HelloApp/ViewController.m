//
//  ViewController.m
//  HelloApp
//
//  Created by JETS Mobile Lab-3 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _hellolbl.text=@"SayHello";
}

- (IBAction)send:(id)sender {
    _hellolbl.text=@"HelloWorld";
}

@end
