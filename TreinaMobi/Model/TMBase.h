//
//  TMBase.h
//  TreinaMobi
//
//  Created by Felipe Kellermann on 29/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMBase : NSObject
{
    NSDictionary *attrs;
}

- (NSInteger)ID;

@property (strong) NSDictionary *attrs;

@end