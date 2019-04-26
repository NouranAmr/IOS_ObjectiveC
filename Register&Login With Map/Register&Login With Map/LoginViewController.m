//
//  LoginViewController.m
//  Register&Login With Map
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "LoginViewController.h"
#import "UserViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController{
    NSUserDefaults * userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    userDefaults = [NSUserDefaults standardUserDefaults];
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

- (IBAction)loginBtn:(id)sender {
    _strUserName = [userDefaults objectForKey:@"UserName"];
    
    _strPhone = [userDefaults objectForKey:@"Phone"];
    
    
    if([[_nameTxt text] isEqualToString:_strUserName] && [[_phoneTxt text] isEqualToString:_strPhone])
    {
        printf("login suceesfully\n");
        
        UserViewController * userController = [self.storyboard instantiateViewControllerWithIdentifier:@"userView"];
        [self.navigationController pushViewController:userController animated:NO];
    }
    else{
        //  printf("Not Found!\n");
        printf("Can't Login\n");
    }
}
@end
