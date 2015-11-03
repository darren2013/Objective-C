//
//  main.m
//  basic-08-objectAndMethod
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDDog : NSObject
{
    @public
    NSString *_name;
}

- (void) biteOtherDog:(DDDog*)other;

@end

@implementation DDDog

- (void)biteOtherDog:(DDDog *)other
{
    NSLog(@"%@ bite %@",_name,other->_name);
}


@end

@interface DDPerson : NSObject

- (void) changeDog:(DDDog*)dog;

- (void) order:(DDDog*)dog biteOtherDog:(DDDog*)other;

@end

@implementation DDPerson

- (DDDog*) sellDog
{
    return [DDDog new];
}

- (void)changeDog:(DDDog *)dog
{
    dog -> _name = @"小黄";
}

- (void)order:(DDDog *)dog biteOtherDog:(DDDog *)other
{
    [dog biteOtherDog:other];
}

@end



int main(int argc, const char * argv[]) {
    DDDog *dog1 = [DDDog new];
    dog1 -> _name = @"旺财";
    
    DDDog *dog2 = [DDDog new];
    dog2 -> _name = @"小黑";
    
    DDPerson *person = [DDPerson new];
    [person changeDog:dog1];
    
    NSLog(@"dog1 name:%@",dog1->_name);
    
    [person order:dog1 biteOtherDog:dog2];
    
    DDDog *newDog = [person sellDog];
    newDog->_name = @"小花";
    NSLog(@"newDog name:%@",newDog->_name);
    return 0;
}
