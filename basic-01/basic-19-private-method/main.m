//
//  main.m
//  basic-19-private-method
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DDPerson.h"
#import "DDCat.h"

int main(int argc, const char * argv[]) {
    DDPerson* person = [DDPerson new];
    
    person.age = 30;
    
    //私有方法可以通过id类型方法
    id p = person;
    
   [p show];
    
    //NSLog(@"dd%s",_);
    
    return 0;
}
