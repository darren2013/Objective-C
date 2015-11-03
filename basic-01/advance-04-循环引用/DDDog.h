//
//  DDDog.h
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DDPerson;

@interface DDDog : NSObject


 
//当有循环引用时，其中一方必须是assign
@property (nonatomic,assign) DDPerson* person;

@end
