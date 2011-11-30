//
//  TMLocation.h
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMBase.h"

@interface TMLocation : TMBase

- (NSString *)city;
- (NSString *)maps_url;
- (NSString *)notes;
- (CGFloat)longitude;
- (CGFloat)latitude;
- (NSString *)city_short;
- (NSString *)address;

@end
