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
    NSURLComponents *components = [NSURLComponents new];
    [components setScheme:@"https"];
    [components setHost:@"maps.googleapis.com"];
    [components setPath:@"/maps/api/staticmap"];
    [components setQuery:[NSString stringByAppendingQueryParameters:parameters]];
    
    return [components URL];
}

@end
