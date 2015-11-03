//
//  main.m
//  advance-12-SEL
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"
#import "DDDog.h"
#import "DDButton.h"



void test()
{
    DDPerson* person = [[DDPerson alloc] init];
    DDDog* dog = [[DDDog alloc] init];
    [person makeObject:dog performWithSelector:@selector(show)];

}
/**
 
 SEL是一种数据类型，代表方法签名
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //SEL sel = @selector(characterAtIndex:);
        
        //[@"hello" performSelector:sel withObject:<#(id)#>]
        
        //SEL sel = @selector(stringByAppendingString:);
        
//        NSString* str = [@"hello" performSelector:@selector(stringByAppendingString:) withObject:@"world"];
//        NSLog(@"%@",str);
        
        
        
        DDDog* dog = [[DDDog alloc] init];
        
        DDButton* button = [[DDButton alloc] init];
        button.actioner = dog;
        button.action = @selector(show);
        
        [button click];
        
    }
    return 0;
}
