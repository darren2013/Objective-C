//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDPerson : NSObject

@property int age;

+ (instancetype) personWithAge:(int)age;

- (instancetype) initWithAge:(int)age;

@end
