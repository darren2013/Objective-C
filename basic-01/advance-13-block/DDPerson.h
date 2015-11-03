//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/19.
//  Copyright © 2015年 private. All rights reserved.
//

/**
 
 block作为函数参数
 返回值类型 (^)(形参列表)
 */

#import <Foundation/Foundation.h>

@interface DDPerson : NSObject

- (void) test:(void (^)())block;

- (int) avg:(int (^)(int num1,int num2))block;

- (void) preWork;

- (void) postWork;

- (void) monday;

- (void) tuesday;

- (void) day:(void (^)())work;

@end
