//
//  main.m
//  basic-07-objectAndFunction
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDPerson : NSObject
{
    @public
    int _age;
}

- (void)say:(NSString*)words;

@end

@implementation DDPerson

- (void)say:(NSString *)words
{
    NSLog(@"%@",words);
}

@end

void changePerson(DDPerson *person)
{
    person->_age = 20;
    
    [person say:@"hello world"];
}

/**
 对象可以作为函数返回值，因为对象创建是在堆中
 局部变量不可以作为函数返回值，因为它是在栈中，离开函数就被销毁
 */
DDPerson *createPerson()
{
    return [DDPerson new];
}

int main(int argc, const char * argv[]) {
    
    DDPerson *p = [DDPerson new];
    p->_age = 2;
    changePerson(p);
    NSLog(@"age:%d",p->_age);
    
    DDPerson *p2 = createPerson();
    p2->_age = 40;
    NSLog(@"age:%d",p2->_age);
    
    
    
    return 0;
}
