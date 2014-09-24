//
//  GSMImageDownloaderTests.m
//  GSMImageDownloaderTests
//
//  Created by Barnabás Birmacher on 09/24/2014.
//  Copyright (c) 2014 Barnabás Birmacher. All rights reserved.
//

#import <GSMImageDownloader/GSMImageDownloader.h>

SpecBegin(InitialSpecs)

describe(@"NSString string by appending query parameters", ^{
    it(@"will generate valid string", ^{
        NSString* queryParameters = [NSString stringByAppendingQueryParameters:@{
                                                                                 @"center": @"40.708336,-74.002525",
                                                                                 @"zoom": @"17",
                                                                                 @"size": @"320x568",
                                                                                 @"scale": @"2"
                                                                                 }];
        expect(queryParameters).to.equal(@"zoom=17&scale=2&size=320x568&center=40.708336,-74.002525");
    });
});

describe(@"NSURL for static maps", ^{
    it(@"will generate valid URL", ^{
        NSURL* url = [NSURL URLForStaticMapsWithParameters:@{
                                                             @"center": @"40.708336,-74.002525",
                                                             @"zoom": @"17",
                                                             @"size": @"320x568",
                                                             @"scale": @"2"
                                                             }];
        
        expect(url).to.equal([NSURL URLWithString:@"https://maps.googleapis.com/maps/api/staticmap?zoom=17&scale=2&size=320x568&center=40.708336,-74.002525"]);
    });
});

describe(@"Requesting an image", ^{
    it(@"will download a valid NSData image", ^{
        [GSMImageDownloader downloadImageWithParameters:@{
                                                          @"center": @"40.708336,-74.002525",
                                                          @"zoom": @"17",
                                                          @"size": @"320x568",
                                                          @"scale": @"2"
                                                          } onCompletion:^(NSData * data) {
                                                              expect(data).notTo.beNil;
                                                          }];
    });
});

SpecEnd
