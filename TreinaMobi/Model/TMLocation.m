//
//  TMLocation.m
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 @tm. All rights reserved.
//

#import "TMLocation.h"

@implementation TMLocation

- (NSString *)city
{
    return [attrs objectForKey:@"city"];
}

- (NSString *)maps_url
{
    return [attrs objectForKey:@"maps_url"];
}

- (NSString *)notes
{
    return [attrs objectForKey:@"notes"];
}

- (CGFloat)longitude
{
    return [[attrs objectForKey:@"longitude"] floatValue];
}

- (CGFloat)latitude
{
    return [[attrs objectForKey:@"latitude"] floatValue];
}

- (NSString *)city_short
{
    return [attrs objectForKey:@"cityshort"];
}

- (NSString *)address
{
    return [attrs objectForKey:@"address"];
}

@end
