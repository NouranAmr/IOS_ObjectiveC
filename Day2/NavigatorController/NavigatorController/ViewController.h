//
//  ViewController.h
//  NavigatorController
//
//  Created by JETS Mobile Lab-3 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *nametextfield;
- (IBAction)sendbtn:(UIButton *)sender;
-(void) clearTxt;
        
@end

