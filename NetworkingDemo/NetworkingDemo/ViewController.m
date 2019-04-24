//
//  ViewController.m
//  NetworkingDemo
//
//  Created by JETS Mobile Lab-3 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)async:(id)sender;
- (IBAction)sync:(id)sender;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController
{
     NSMutableData *dataReceived;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)async:(id)sender {
    
     NSURL *url=[NSURL URLWithString:@"https://maktoob.yahoo.com"];
    NSURLRequest *resquest= [NSURLRequest requestWithURL:url];
    NSURLConnection * connection = [[NSURLConnection alloc]initWithRequest:resquest delegate:self];
    
    [connection start];
    [_webView loadRequest:resquest];
 
}
- (IBAction)sync:(id)sender {
    NSURL *url=[NSURL URLWithString:@"https://maktoob.yahoo.com"];
    NSString *str =[[NSString alloc]initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    [dataReceived appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}

- (IBAction)syncAction:(UIButton *)sender {
    NSURL * url = [NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us"];
    NSString *str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    [_webView loadHTMLString:str baseURL:url];
    
}

@end
