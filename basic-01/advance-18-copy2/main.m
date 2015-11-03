//
//  main.m
//  advance-18-copy2
//
//  Created by 杜东方 on 15/10/26.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //对不可变对象进行copy操作时，它的引用计数+1
        NSString *str = [[NSString alloc] init];
        NSLog(@"%zd",[str retainCount]);
        [str copy];
        NSLog(@"%zd",[str retainCount]);
        
        NSArray *array = [NSArray arrayWithObjects:@1,@2,@3, nil];
        NSLog(@"%zd",[array retainCount]);
        [array copy];
        NSLog(@"%zd",[array retainCount]);
        
        //对不可变对象进行mutablecopy操作时，会产生一个新的对象，新的对象计数为1，原来的对象计数不变
        NSMutableArray *arrayM = [array mutableCopy];
        NSLog(@"%zd",[array retainCount]);
        NSLog(@"%zd",[arrayM retainCount]);
        
        
        //对一个可变对象进行copy或mutablecopy时，会产生一个全新的对象，原来的引用计数不变，新的对象计数为1
        //NSMutableArray *arrayM2 = [arrayM copy];
        NSMutableArray *arrayM2 = [arrayM mutableCopy];
        NSLog(@"%zd",[arrayM retainCount]);
        NSLog(@"%zd",[arrayM2 retainCount]);
        
    }
    return 0;
}
