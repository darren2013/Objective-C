//
//  main.m
//  advance-07-ARC-@property
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"
#import "DDDog.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DDPerson* person = [[DDPerson alloc] init];
        
        DDDog* dog = [[DDDog alloc] init];
        person.dog = dog;
        dog.person = person;
    }
    return 0;
}
