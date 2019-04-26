//
//  ViewController.h
//  Register&Login With Map
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameText;

@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *ageText;
@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
@property (weak, nonatomic) IBOutlet UITextField *langtuideText;
@property (weak, nonatomic) IBOutlet UITextField *latuideText;
-(void)saveUserName : (NSString*) name andphone : (NSString*) phone andage : (NSString*) age andlang : (NSString*) lang
         andlatiude : (NSString*) lat;
- (IBAction)chooseImageBtn:(id)sender;

- (IBAction)gesture:(id)sender;
- (IBAction)registerBtn:(id)sender;
@end

