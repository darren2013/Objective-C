//
//  main.m
//  basic-20-constructor
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DDPerson.h"

int main(int argc, const char * argv[]) {
    
    DDPerson* person = [DDPerson alloc];
    person = [person init];
    
   // person.age = 34;
    
    NSLog(@"age=%d",person.age);
    
    DDPerson* p2 = [[DDPerson alloc] initWithAge:56];
     NSLog(@"age=%d",p2.age);
    
    DDPerson* p3 = [[DDPerson alloc] initWithAge:23 andName:@"hello"];
    NSLog(@"name=%@,age=%d",p3.name,p3.age);
    return 0;
}
