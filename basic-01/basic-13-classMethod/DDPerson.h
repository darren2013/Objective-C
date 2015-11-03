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
    @public
    int _age;
    NSString* _name;
}

- (void)setAge:(int)age;

/**
 1.类方法是属于整个类的
 2.类方法不需要创建对象，减少了内存开销
 3.通过对象调用对象的方法，首先是通过它的isA指针去类中找到相应的方法，所以比较慢
 4.
 */
+ (double)sumOfNum:(int)num andOtherNum:(int)other;
@end
