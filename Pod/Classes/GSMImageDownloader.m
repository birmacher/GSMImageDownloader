//
//  GSMImageDownloader.m
//  Pods
//
//  Created by Barnabás Birmacher on 24/09/14.
//
//

#import "GSMImageDownloader.h"

@implementation GSMImageDownloader

+ (NSData*)downloadImageWithParameters:(NSDictionary*)parameters onCompletion:(GSMImageDownloaderCompletionBlock)completionBlock {
    __block NSURL* imageURL = [NSURL URLForStaticMapsWithParameters:parameters];
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
    dispatch_async(queue, ^(void) {
        NSData* downloadedData = [NSData dataWithContentsOfURL:imageURL];
        
        if (completionBlock) {
            dispatch_async(dispatch_get_main_queue(),
                           ^{
                               completionBlock(downloadedData);
                           });
        }
    });
    
    return nil;
}

@end
