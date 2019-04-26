//
//  ViewController.m
//  CustomUiTableViewTask
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * namesArray;
    NSArray * imagesArray;
}

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    namesArray=@[@"Esraa",@"Radya",@"Salma",@"Sahar"];
    imagesArray=@[@"female.jpg",@"female.jpg",@"female.jpg",@"female.jpg"];
    _myTableView.delegate=self;
    _myTableView.dataSource=self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [namesArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    UILabel *labelone=[cell viewWithTag:1];
    UIImageView *imagee=[cell viewWithTag:2];
    
    labelone.text=[namesArray objectAtIndex:indexPath.row];
    imagee.image=[UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
@end
