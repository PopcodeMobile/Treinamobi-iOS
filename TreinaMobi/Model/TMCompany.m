//
//  TMCompany.m
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import "TMCompany.h"

@implementation TMCompany

- (NSString *)name_short
{
    return [attrs objectForKey:@"short"];
}

- (NSString *)name
{
    return [attrs objectForKey:@"name"];
}

- (NSURL *)site_url
{
    return [NSURL URLWithString:[attrs objectForKey:@"site_url"]];
}

- (NSInteger)location_id
{
    return [[attrs objectForKey:@"location_id"] integerValue];
}

- (NSString *)company_description
{
    return [attrs objectForKey:@"description"];
}

@end