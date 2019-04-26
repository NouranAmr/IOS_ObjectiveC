//
//  ViewController.m
//  Register&Login With Map
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "MyTableViewController.h"
@interface ViewController ()

@end

@implementation ViewController
{
    NSUserDefaults * userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
     userDefaults = [NSUserDefaults standardUserDefaults];
   
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)gesture:(id)sender {
    
    CGPoint touchPoint =[sender locationInView:_myMapView];
    CLLocationCoordinate2D coordinate =[_myMapView convertPoint:touchPoint toCoordinateFromView:_myMapView];
    
    NSNumber *myDoublelongitude = [NSNumber numberWithDouble:coordinate.longitude];
     NSNumber *myDoublelatitude = [NSNumber numberWithDouble:coordinate.latitude];
    
    _langtuideText.text=[myDoublelongitude stringValue];
    _latuideText.text=[myDoublelatitude stringValue];
}

- (IBAction)registerBtn:(id)sender {
   
        [self saveUserName : (NSString*) _nameText.text andphone : (NSString*) _phoneText.text andage : (NSString*) _ageText.text andlang : (NSString*) _langtuideText.text
                andlatiude : (NSString*) _langtuideText.text];
    LoginViewController * loginController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    [self.navigationController pushViewController:loginController animated:NO];
    
        printf("save done\n");
   
}
-(void)saveUserName : (NSString*) name andphone : (NSString*) phone andage : (NSString*) age andlang : (NSString*) lang
         andlatiude : (NSString*) lat
{
    [userDefaults setObject:name
                     forKey:@"UserName"];
    
    [userDefaults setObject:phone
                     forKey:@"Phone"];
    
    [userDefaults setObject:age
                     forKey:@"Age"];
    
    [userDefaults setObject:lang
                     forKey:@"Lang"];
    
    [userDefaults setObject:lat
                     forKey:@"Lat"];
    
    
    //to save even if the app closed
    [userDefaults synchronize]; // like commit
}

- (IBAction)chooseImageBtn:(id)sender {
    
    MyTableViewController * tableController = [self.storyboard instantiateViewControllerWithIdentifier:@"tableView"];
    [self.navigationController pushViewController:tableController animated:NO];
}

@end
