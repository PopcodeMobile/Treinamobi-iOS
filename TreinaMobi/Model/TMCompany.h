//
//  TMCompany.h
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMBase.h"

@interface TMCompany : TMBase

- (NSString *)name_short;
- (NSString *)name;
- (NSURL *)site_url;
- (NSInteger)location_id;
- (NSString *)company_description;

@end