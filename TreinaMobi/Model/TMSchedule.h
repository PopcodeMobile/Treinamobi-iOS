//
//  TMSchedule.h
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMBase.h"

@interface TMSchedule : TMBase

- (NSInteger)teacher_id;
- (BOOL)confirmed;
- (NSString *)name_short;
- (NSDate *)end;
- (NSDate *)when;
- (NSInteger)where_id;
- (NSInteger)seats;
- (NSInteger)course_id;
- (NSString *)infos;
- (NSString *)payment;

@end
