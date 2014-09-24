//
//  NSString+QueryParameters.m
//  Pods
//
//  Created by Barnabás Birmacher on 24/09/14.
//
//

#import "NSString+QueryParameters.h"

@implementation NSString (QueryParameters)

+ (NSString*)stringByAppendingQueryParameters:(NSDictionary*)parameteres {
    if ([parameteres count] == 0) {
        return @"";
    }
    
    __block NSMutableArray* queryParameters = [NSMutableArray array];
    [parameteres enumerateKeysAndObjectsUsingBlock:^(NSString* key, id obj, BOOL *stop) {
        [queryParameters addObject:
         [NSString stringWithFormat:
          @"%@=%@",
          key,
          [obj stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
    }];
    
    return [queryParameters componentsJoinedByString:@"&"];
}

@end
