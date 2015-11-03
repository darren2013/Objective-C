//
//  main.m
//  basic-06-BOOL
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>



/**

 BOOL 是OC提供一种Boolean数据类型，可以取两个值YES NO
 
 YES 代表真 取值1
 NO  代表假 取值0
 
 
*/


void testBool(BOOL flag)
{
    if (flag)
    {
        NSLog(@"真");
    }else
    {
        NSLog(@"假");
    }
}


@interface DDLogin : NSObject

- (BOOL)validateUserName:(NSString*)userName andPassword:(NSString*)password;
@end

@implementation DDLogin

- (BOOL)validateUserName:(NSString *)userName andPassword:(NSString *)password
{
    if(userName == nil || [userName isEqualTo: @""])
    {
        NSLog(@"userName is empty");
        return NO;
    }
    
    if(password == nil || [password isEqualTo:@""])
    {
        NSLog(@"password is empty");
        return NO;
    }
    
    if([@"admin" isEqualTo:userName] && [@"admin" isEqualTo:password])
    {
        NSLog(@"login successfully....");
        return YES;
    }
    
    return NO;
}

@end

int main(int argc, const char * argv[])
{
    
    
    DDLogin *login = [DDLogin new];
    BOOL canLogin = [login validateUserName:@"admin" andPassword:@"admin"];
    NSLog(@"can login %d",canLogin);
    
    canLogin = [login validateUserName:@"" andPassword:@"hello"];
    NSLog(@"can login %d",canLogin);
    
    BOOL isTrue = YES;
    testBool(isTrue);
    
    testBool(YES);
    testBool(NO);
    
    for(int i = 10;i < 100;i++)
    {
        BOOL isDivisible = (i % 7 == 0);
        
        if(isDivisible)
        {
            NSLog(@"%d",i);
            break;
        }
    }
    return 0;
}
