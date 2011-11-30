//
//  TMPerson.m
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import "TMPerson.h"

@implementation TMPerson

- (NSString *)name
{
    return [attrs objectForKey:@"name"];
}

- (NSString *)name_short
{
    return [attrs objectForKey:@"short"];
}

- (NSString *)twitter_handle
{
    return [attrs objectForKey:@"twitter_handle"];
}

- (NSString *)course_description
{
    return [attrs objectForKey:@"description"];
}

- (NSURL *)photo_url
{
    return [NSURL URLWithString:[attrs objectForKey:@"photo_url"]];
}

- (NSInteger)company_id
{
    return [[attrs objectForKey:@"company_id"] integerValue];
}

@end