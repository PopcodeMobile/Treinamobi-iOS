//
//  TMPerson.h
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMBase.h"

@interface TMPerson : TMBase

- (NSString *)name;
- (NSString *)name_short;
- (NSString *)twitter_handle;
- (NSString *)course_description;
- (NSURL *)photo_url;
- (NSInteger)company_id;

@end
