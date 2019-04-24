//
//  MyTableViewCell.h
//  CustomTableViewCellDemo
//
//  Created by JETS Mobile Lab-3 on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *firstLabel;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *secondLabel;

@end

NS_ASSUME_NONNULL_END
