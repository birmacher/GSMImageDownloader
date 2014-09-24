//
//  GSMImageDownloader.h
//  Pods
//
//  Created by Barnabás Birmacher on 24/09/14.
//
//

#import <Foundation/Foundation.h>

#import "NSString+QueryParameters.h"
#import "NSURL+StaticMaps.h"

typedef void(^GSMImageDownloaderCompletionBlock)(NSData*);

@interface GSMImageDownloader : NSObject

+ (NSData*)downloadImageWithParameters:(NSDictionary*)parameters onCompletion:(GSMImageDownloaderCompletionBlock)completionBlock;

@end
