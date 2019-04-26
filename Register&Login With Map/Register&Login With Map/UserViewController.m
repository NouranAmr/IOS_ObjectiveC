//
//  UserViewController.m
//  Register&Login With Map
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "UserViewController.h"

@interface UserViewController (){
    NSUserDefaults * userDefaults;
}

@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    _nameTxt.text = [userDefaults objectForKey:@"UserName"];
    
    _phoneTxt.text=[userDefaults objectForKey:@"Phone"];
    
    
    _ageTxt.text = [userDefaults objectForKey:@"Age"];
    
    _LatuideTxt.text = [userDefaults objectForKey:@"Lat"];
    
    _langTxt.text = [userDefaults objectForKey:@"Lang"];
    
     _myImageView.image = [UIImage imageNamed:[userDefaults objectForKey:@"Image"]];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
