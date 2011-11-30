//
//  TMBase.m
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import "TMBase.h"

@implementation TMBase

@synthesize attrs;

- (NSInteger)ID
{
    return [[attrs objectForKey:@"id"] integerValue];
}

@end