//
//  main.m
//  basic-14-self
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DDPerson.h"

int main(int argc, const char * argv[]) {
    DDPerson* person = [DDPerson new];
    [person changeAge:30];
    [person age];
    
    
    return 0;
}
