//
//  ViewController.m
//  WebServicesDemo
//
//  Created by JETS Mobile Lab-3 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) IBOutlet UITextField *name;
- (IBAction)register:(id)sender;


@end

@implementation ViewController
{
    NSMutableData *dataReceived;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)register:(id)sender {
   
    NSString *str =@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=yourName&phone=yourPhone";
    str = [str stringByReplacingOccurrencesOfString:@"yourName" withString:_name.text];
    
    str = [str stringByReplacingOccurrencesOfString:@"yourPhone" withString:_phone.text];
     NSURL * url = [NSURL URLWithString:str];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
    dataReceived = [NSMutableData new];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    [dataReceived appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataReceived options:NSJSONReadingAllowFragments error:nil];
    
    NSString * strStatus = [dict objectForKey:@"status"];
    NSString * strResult = [dict objectForKey:@"result"];
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:strStatus
                                 message:strResult
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    if([strStatus isEqualToString:@"FAILING"])
        {
            UIAlertAction* ok = [UIAlertAction
                                        actionWithTitle:@"Ok"
                                        style:UIAlertActionStyleDefault
                                        handler:^(UIAlertAction * action) {
                                            //Handle your yes please button action here
                                            
                                        }];
            UIAlertAction* tryAgain = [UIAlertAction
                                       actionWithTitle:@"Try Again"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {
                                           [_name setText:@""];
                                           [_phone setText:@""];
                                       }];
            [alert addAction:ok];
            [alert addAction:tryAgain];
            [self presentViewController:alert animated:YES completion:nil];
        }
    else if([strStatus isEqualToString:@"SCUESSED"])
    {
        UIAlertAction* ok = [UIAlertAction
                             actionWithTitle:@"Ok"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action) {
                                 
                                 SecondViewController * VCTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
                                 
                                 [self.navigationController pushViewController:VCTwo animated:YES];
                                 
                             }];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}
@end
