//
//  UserViewController.h
//  Register&Login With Map
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTxt;
@property (weak, nonatomic) IBOutlet UITextField *phoneTxt;
@property (weak, nonatomic) IBOutlet UITextField *ageTxt;
@property (weak, nonatomic) IBOutlet UITextField *langTxt;
@property (weak, nonatomic) IBOutlet UITextField *LatuideTxt;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end
