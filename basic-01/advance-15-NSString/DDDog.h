//
//  DDDog.h
//  basic-01
//
//  Created by 杜东方 on 15/10/24.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDDog : NSObject

@property(nonatomic,copy)NSString *name;

@property(nonatomic,assign)int age;

- (void) bark;

- (void) eat:(NSString*)food;


- (NSComparisonResult) compare:(DDDog*)other;

@end
