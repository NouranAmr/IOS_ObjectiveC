//
//  ViewController.h
//  CalculatorApp
//
//  Created by JETS Mobile Lab-3 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *number1txt;

@property (strong, nonatomic) IBOutlet UITextField *number2txt;
@property (strong, nonatomic) IBOutlet UIButton *addbtn;

@property (strong, nonatomic) IBOutlet UIButton *subtractbtn;
@property (strong, nonatomic) IBOutlet UIButton *multibtn;
@property (strong, nonatomic) IBOutlet UIButton *dividebtn;
@property (strong, nonatomic) IBOutlet UILabel *resultlbl;

@end

