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

@property NSString* name;

//自定义构造函数要先声明，必须以initWith开头
- (id) initWithAge:(int)age;

-(id) initWithAge:(int)age andName:(NSString*)name;

@end
