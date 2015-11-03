//
//  main.m
//  basic-02-class
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 1.类包含两部分
 声明和实现
 声明：@interface开头 @end结尾
 
 NSObject,所有类的祖先类
 :NSObject,让Person类具有创建对象的能力
 
 NOTE:如果一个类只有声明，没有实现，是不能实例化的，在链接的时候就报错
 
 
 方法声明：
 无参方法：
 方法类型符 (返回值类型) 方法名;
 
 对象方法:只能通过对象调用，它的方法类型符-
 
 */

@interface DDPerson : NSObject
//类的成员变量声明一定要放在{}内
{
    //变量命名规范：必须_开头，后面遵循驼峰标识规则
    @public
    char *_name;
    int _age;
}

- (void) show;

//方法名 eat:
- (void) eat:(char *)food;

//方法名 eat:using:
/**
 1.:是方法名的一部分
 2.一个:对应一个形参
 3.形参类型必须用()括起来
 4.:前面的文字用来描述参数作用的，应该是动词
 5.:前面的文字可以省略
*/
- (void) eat:(char *)food using:(char *)tools;

@end



@implementation DDPerson

- (void) show
{
    NSLog(@"name=%s,age=%d",_name,_age);
}

- (void) eat:(char *)food
{
    NSLog(@"eat %s",food);
}

- (void) eat:(char *)food using:(char *)tools
{
    NSLog(@"eat food %s,using tools %s",food,tools);
}

@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Hello, World!");
        /**
        [类名 new]作用：
        1.为Person对象在堆中分配内存
        2.初始化成员变量
        3.返回指向刚刚创建对象的指针
        */
        
        DDPerson *p1 = [DDPerson new];
        
        p1->_age = 10;
        p1->_name = "zhangsan";
        
        NSLog(@"person instance %p,%d,%s",p1,p1->_age,p1->_name);
        
        //调用p1 show方法或者说给p1发送show消息
        [p1 show];
        
        [p1 eat:"beef"];
        
        [p1 eat:"beef" using:"knife"];
        
    }
    return 0;
}
