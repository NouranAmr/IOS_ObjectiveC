//
//  SecondViewController.h
//  NavigatorController
//
//  Created by JETS Mobile Lab-3 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "clearText.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property NSString * str;
@property ViewController *firstView;

@end

NS_ASSUME_NONNULL_END
