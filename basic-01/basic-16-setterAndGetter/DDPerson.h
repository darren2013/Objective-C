//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/14.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDStudent.h"

@interface DDPerson : NSObject
{
    @public
    
    int _age;
    NSString* _name;
}

/**
 @property是一个编译器指令，会自动生成标准的setter和getter方法声明，注意是声明，在类的声明中
 */
//...... 成员变量类型  通过对象.后面的名字
@property int age;

//- (void) setAge:(int)age;
//
//- (int) age;


@end
