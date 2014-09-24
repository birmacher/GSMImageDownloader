//
//  GSMViewController.m
//  GSMImageDownloader
//
//  Created by Barnabás Birmacher on 09/24/2014.
//  Copyright (c) 2014 Barnabás Birmacher. All rights reserved.
//

#import "GSMViewController.h"
#import <GSMImageDownloader/GSMImageDownloader.h>

@interface GSMViewController ()

@end

@implementation GSMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary* parameters = @{
                                 @"center": @"40.708336,-74.002525",
                                 @"zoom": @"17",
                                 @"size": @"320x568",
                                 @"scale": @"2"
                                 };
    
    [GSMImageDownloader downloadImageWithParameters:parameters
                                       onCompletion:^(NSData * data) {
                                           [self.mapImageView setImage:[UIImage imageWithData:data]];
                                       }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
