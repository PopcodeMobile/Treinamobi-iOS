//
//  TMCourse.h
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMBase.h"

@interface TMCourse : TMBase

- (NSString *)name;
- (NSString *)name_short;
- (NSInteger)sort;
- (NSString *)requirements;
- (NSString *)target;
- (NSString *)tagline;
- (NSString *)course_description;
- (NSString *)methodology;
- (NSArray *)teacher_list;
- (NSURL *)logo_url;
- (NSString *)topics;

@end
