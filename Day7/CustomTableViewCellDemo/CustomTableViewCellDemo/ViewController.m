//
//  ViewController.m
//  CustomTableViewCellDemo
//
//  Created by JETS Mobile Lab-3 on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *firstLabelArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    firstLabelArray=@[@"Label One",@"Label Two",@"Label Three"];
    _myTableView.delegate=self;
    _myTableView.dataSource=self;
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [firstLabelArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView  dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text=[firstLabelArray objectAtIndex:indexPath.row];
    return cell;
    
}


@end
