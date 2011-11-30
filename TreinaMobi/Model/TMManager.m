//
//  TMManager.m
//  TreinaMobi
//
//  Created by Felipe Kellermann on 30/11/11.
//  Copyright (c) 2011 Treinamentos.mobi. All rights reserved.
//

#import "TMManager.h"
#import "TMBase.h"
#import "TMLocation.h"
#import "TMCompany.h"
#import "TMPerson.h"
#import "TMCourse.h"
#import "TMSchedule.h"

@implementation TMManager

@synthesize queue, baseURL;

+ (TMManager *)singleton
{
    static TMManager *instance;
    
    if (instance == nil)
        instance = [[TMManager alloc] init];
    
    return instance;
}

- (id)init
{
    self = [super init];
    if (self) {
        queue = [[NSOperationQueue alloc] init];
    }
    
    return self;
}

- (void)objectsWithType:(Class)type
                 forURL:(NSURL *)url
                success:(void (^)(NSArray *objects))success
                  error:(void (^)(NSError *error))error
{
    [queue addOperationWithBlock:^{
        NSError *err = nil;
        NSData *data = [NSData dataWithContentsOfURL:url];
        id objs = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];

        if (err == nil) {
            NSMutableArray *result = [NSMutableArray array];
            for (id obj in objs) {
                TMBase *o = [[type alloc] init];
                o.attrs = obj;
                [result addObject:o];
            }            
            success(result);
        } else {
            error(err);
        }
    }];
}

- (NSURL *)pathWithURL:(NSURL *)url
{
    return [baseURL URLByAppendingPathComponent:[url absoluteString]];
}

- (void)locationsWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error
{
    [self objectsWithType:[TMLocation class]
                   forURL:[self pathWithURL:[NSURL URLWithString:@"locations"]]
                  success:success
                    error:error];
}

- (void)locationsWithSuccess:(void (^)(NSArray *objects))success
{
    [self locationsWithSuccess:success error:nil];
}

- (void)companiesWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error
{
    [self objectsWithType:[TMCompany class]
                   forURL:[self pathWithURL:[NSURL URLWithString:@"companies"]]
                  success:success
                    error:error];
}

- (void)companiesWithSuccess:(void (^)(NSArray *objects))success
{
    [self companiesWithSuccess:success error:nil];
}

- (void)peopleWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error
{
    [self objectsWithType:[TMPerson class]
                   forURL:[self pathWithURL:[NSURL URLWithString:@"people"]]
                  success:success
                    error:error];
}

- (void)peopleWithSuccess:(void (^)(NSArray *objects))success
{
    [self peopleWithSuccess:success error:nil];
}

- (void)coursesWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error
{
    [self objectsWithType:[TMCourse class]
                   forURL:[self pathWithURL:[NSURL URLWithString:@"courses"]]
                  success:success
                    error:error];
}

- (void)coursesWithSuccess:(void (^)(NSArray *objects))success
{
    [self coursesWithSuccess:success error:nil];
}

- (void)schedulesWithSuccess:(void (^)(NSArray *objects))success error:(void (^)(NSError *error))error
{
    [self objectsWithType:[TMSchedule class]
                   forURL:[self pathWithURL:[NSURL URLWithString:@"schedules"]]
                  success:success
                    error:error];
}

- (void)schedulesWithSuccess:(void (^)(NSArray *objects))success
{
    [self schedulesWithSuccess:success error:nil];
}

@end