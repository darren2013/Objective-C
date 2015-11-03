//
//  main.m
//  basic-21-simple-constructor
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"


int main(int argc, const char * argv[]) {
    DDPerson* p = [DDPerson personWithAge:34];
    NSLog(@"age=%d",p.age);
    return 0;
}
