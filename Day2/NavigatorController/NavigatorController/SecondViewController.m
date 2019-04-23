//
//  SecondViewController.m
//  NavigatorController
//
//  Created by JETS Mobile Lab-3 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *myBarItem = [[UIBarButtonItem  alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    [self.navigationItem setRightBarButtonItem:myBarItem];
    self.title=@"secondview";
    _nameLabel.text=self.str;
}
-(void) done{
    printf("Done\n");
    [self.firstView clearTxt];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
