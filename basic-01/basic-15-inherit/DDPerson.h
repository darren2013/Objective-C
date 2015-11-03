//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//



#import <Foundation/Foundation.h>

@interface DDPerson : NSObject
{
    /**
     成员变量修饰符分为
     @private
     @protected，不写，缺省为protected
     @public
     @package,只能在框架内部访问
     */
    NSString* _name;
    int _age;
}

- (void) setName:(NSString*)name;

- (NSString*)name;

- (void) setAge:(int)age;

- (int)age;
@end
