//
//  TMSchedule.m
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import "TMSchedule.h"

@implementation TMSchedule

- (NSInteger)teacher_id
{
    return [[attrs objectForKey:@"teacher_id"] integerValue];
}

- (BOOL)confirmed
{
    return [[attrs objectForKey:@"confirmed"] boolValue];
}

- (NSString *)name_short
{
    return [attrs objectForKey:@"short"];
}

- (NSDate *)end
{
#warning Implement.
}

- (NSDate *)when
{
#warning Implement.
}

- (NSInteger)where_id
{
    return [[attrs objectForKey:@"where_id"] integerValue];
}

- (NSInteger)seats
{
    return [[attrs objectForKey:@"seats"] integerValue];
}

- (NSInteger)course_id
{
    return [[attrs objectForKey:@"course_id"] integerValue];
}

- (NSString *)infos
{
    return [attrs objectForKey:@"infos"];
}

- (NSString *)payment
{
    return [attrs objectForKey:@"payment"];
}

@end