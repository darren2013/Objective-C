//
//  main.m
//  basic-12-encapsulation
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDCat.h"


int main(int argc, const char * argv[]) {
    DDCat* cat = [DDCat new];
    
    [cat setName:@"小花"];
    [cat setAge:45];
    
    NSLog(@"name=%@,age=%d",[cat name],[cat age]);
    
    return 0;
}
