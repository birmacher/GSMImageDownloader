//
//  NSString+QueryParameters.h
//  Pods
//
//  Created by Barnabás Birmacher on 24/09/14.
//
//

#import <Foundation/Foundation.h>

@interface NSString (QueryParameters)

+ (NSString*)stringByAppendingQueryParameters:(NSDictionary*)parameteres;

@end
