//
//  LoginViewController.h
//  Register&Login With Map
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTxt;
@property (weak, nonatomic) IBOutlet UITextField *phoneTxt;
@property NSString* strUserName;
@property NSString* strPhone;
- (IBAction)loginBtn:(id)sender;

@end
