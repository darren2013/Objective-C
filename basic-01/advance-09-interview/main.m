//
//  main.m
//  advance-09-interview
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>


void test()
{
    @autoreleasepool {
        
        
        for (long i=0;i < NSIntegerMax; i++) {
            NSString* str = [NSString stringWithFormat:@"ljlkfdslkfldsk%@",@"hello"];
            str = [str lowercaseString];
            str = [str uppercaseString];
        }
    }
}
int main(int argc, const char * argv[]) {
   
       
        
        for (long i=0;i < NSIntegerMax; i++) {
             @autoreleasepool {
                 NSString* str = [NSString stringWithFormat:@"ljlkfdslkfldsk%@",@"hello"];
                 str = [str lowercaseString];
                 str = [str uppercaseString];
             }
        }
    return 0;
}
