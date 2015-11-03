//
//  main.m
//  basic-17-inhance-property
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"

int main(int argc, const char * argv[]) {
    
    DDPerson* person = [DDPerson new];
    person.name = @"张三";
    person.age = 23;
    [person setAge:34];
    [person age];
    NSLog(@"name=%@,age=%d",person.name,person.age);
    
    NSLog(@"%@",person);
    
    return 0;
}
