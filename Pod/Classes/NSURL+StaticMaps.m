//
//  NSURL+StaticMaps.m
//  Pods
//
//  Created by Barnabás Birmacher on 24/09/14.
//
//

#import "NSURL+StaticMaps.h"
#import "NSString+QueryParameters.h"

@implementation NSURL (StaticMaps)

+ (NSURL*)URLForStaticMapsWithParameters:(NSDictionary*)parameters {
    NSString* baseURL = @"https://maps.googleapis.com";
    NSString* path = @"/maps/api/staticmap";
    NSString* query = [NSString stringByAppendingQueryParameters:parameters];
    
    if ([query length] > 0) {
        return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?%@",
                                     baseURL,
                                     path,
                                     query]];
    }
    
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",
                                 baseURL,
                                 path]];
}

@end
