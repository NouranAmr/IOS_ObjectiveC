//
//  ViewController.h
//  CustomTableViewCellDemo
//
//  Created by JETS Mobile Lab-3 on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate ,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *myTableView;


@end

