//
//  main.m
//  basic-16-setterAndGetter
//
//  Created by 杜东方 on 15/10/14.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"

int main(int argc, const char * argv[]) {
    DDPerson* person = [DDPerson new];
    person.age = 30;
    
    NSLog(@"%d",person.age);
    
    NSLog(@"%d",person->_age);
    return 0;
}
