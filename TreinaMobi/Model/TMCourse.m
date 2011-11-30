//
//  TMCourse.m
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import "TMCourse.h"

@implementation TMCourse

- (NSString *)name
{
    return [attrs objectForKey:@"name"];
}

- (NSString *)name_short
{
    return [attrs objectForKey:@"name_short"];
}

- (NSInteger)sort
{
    return [[attrs objectForKey:@"sort"] integerValue];
}

- (NSString *)requirements
{
    return [attrs objectForKey:@"requirements"];
}

- (NSString *)target
{
    return [attrs objectForKey:@"target"];
}

- (NSString *)tagline
{
    return [attrs objectForKey:@"tagline"];
}

- (NSString *)course_description
{
    return [attrs objectForKey:@"description"];
}

- (NSString *)methodology
{
    return [attrs objectForKey:@"methodology"];
}

- (NSArray *)teacher_list
{
    return [attrs objectForKey:@"teacher_list"];
}

- (NSURL *)logo_url
{
    return [NSURL URLWithString:[attrs objectForKey:@"logo_url"]];
}

- (NSString *)topics
{
    return [attrs objectForKey:@"topics"];
}

@end