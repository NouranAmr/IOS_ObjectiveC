//
//  MyCollectionViewController.m
//  CocaPodsTask
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "MyCollectionViewController.h"
#import "MyCollectionViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface MyCollectionViewController ()

@end

@implementation MyCollectionViewController
{
    NSMutableData * dataRecieved;
    NSMutableArray * images;
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *urlString=@"https://api.androidhive.info/json/movies.json";
    NSURL *url=[NSURL URLWithString:urlString];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
    
    
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) connection:(NSURLConnection *)connection didReceiveResponse:(nonnull NSURLResponse *)response
{
    
    dataRecieved=[NSMutableData new];
    
    
}
-(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    printf("\n errrrrrrrror");
}
-(void) connectionDidFinishLoading:(NSURLConnection *)connection
{
    printf("\nfiniahDownloading");
    NSArray * array = [NSJSONSerialization JSONObjectWithData:dataRecieved options:NSJSONReadingAllowFragments error:nil];
    for(int i=0 ; i< [array count] ; i++)
    {
        NSDictionary *dict = [array objectAtIndex:i];
        NSString * strImage = [dict objectForKey:@"image"];
        [images addObject:strImage];
    }
    
}
-(void)connection:(NSURLConnection *) connection didReceiveData:(nonnull NSData *)data
{
    printf("\ndidRecived");
    [dataRecieved appendData:data];
    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [images count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCollectionViewCell *cell =(MyCollectionViewCell*) [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
   [cell.myImg sd_setImageWithURL:[NSURL URLWithString:[images objectAtIndex:indexPath.row]]
                    placeholderImage:[UIImage imageNamed:@"female.jpg"]];
    
    //cell.myImg.image=[UIImage imageNamed:@"female.jpg"];
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
