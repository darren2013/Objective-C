//
//  main.m
//  advance-08-ARC-autoReleasePool
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

/**
 通过类的简单方法返回对象或是通过方法返回对象，都放在自动释放池中
 */

#import <Foundation/Foundation.h>
#import "DDPerson.h"


void test()
{
    @autoreleasepool {
        {
            //person对象在25行被回收
            DDPerson* person = [DDPerson person];
        }
        
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @autoreleasepool {
            DDPerson* person = [DDPerson person];
            
            @autoreleasepool {
                DDDog* dog = [[DDDog alloc]init];//dog在40行被销毁
                person.dog = dog;
            }
            
            DDDog* myDog = person.dog;
            myDog = nil;
        }
    }
    return 0;
}
