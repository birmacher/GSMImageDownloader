//
//  NSURL+StaticMaps.h
//  Pods
//
//  Created by Barnabás Birmacher on 24/09/14.
//
//

#import <Foundation/Foundation.h>

@interface NSURL (StaticMaps)

+ (NSURL*)URLForStaticMapsWithParameters:(NSDictionary*)parameters;

@end
