//
//  TMManager.h
//  TreinaMobi
//
//  Created by Felipe Kellermann on 30/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMManager : NSObject
{
    NSOperationQueue    *queue;
    NSURL               *baseURL;
}

+ (TMManager *)singleton;

- (void)locationsWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error;
- (void)locationsWithSuccess:(void (^)(NSArray *objects))success;
- (void)companiesWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error;
- (void)companiesWithSuccess:(void (^)(NSArray *objects))success;
- (void)peopleWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error;
- (void)peopleWithSuccess:(void (^)(NSArray *objects))success;
- (void)coursesWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error;
- (void)coursesWithSuccess:(void (^)(NSArray *objects))success;
- (void)schedulesWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error;
- (void)schedulesWithSuccess:(void (^)(NSArray *objects))success;

@property (strong) NSOperationQueue *queue;
@property (strong) NSURL            *baseURL;

@end
