//
//  ViewController.h
//  ColleaguesApp
//
//  Created by JETS Mobile Lab-3 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *allnames;
}
@property (strong, nonatomic) IBOutlet UILabel *nameslbl;

@property (strong, nonatomic) IBOutlet UIButton *perviousbtn;
@property (strong, nonatomic) IBOutlet UIButton *nextbtn;


@end

