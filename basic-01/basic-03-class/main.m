//
//  main.m
//  basic-03-class
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//
#import <Foundation/Foundation.h>


/**
1.oc中没有命名空间，也没有包的定义，在定义类、结构体、枚举时一定要加上前缀
 
*/

typedef enum _CZColor{
    CZColorWhite,
    CZColorBlack,
    CZColorYellow
}CZColor;


typedef struct _CZPoint{
    int x;
    int y;
}CZPoint;


@interface _CZZombies : NSObject
{
    @public
    int _life;
    CZColor _color;
    CZPoint _position;
    
}

- (void) walkTo:(CZPoint)position;

- (void) bite;


@end


@implementation _CZZombies

- (void) walkTo:(CZPoint)position
{
    _position = position;
    NSLog(@"walk to (%d,%d)",position.x,position.y);
}


- (void) bite
{
    NSLog(@"bite.....");
}

@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        _CZZombies *zombies = [_CZZombies new];
        
        CZPoint position = {23,50};
        
        [zombies walkTo:position];
        
        _CZZombies *zom = [_CZZombies new];
        
        NSLog(@"current position(%d,%d)",zom->_position.x,zom->_position.y);
        
        [zom bite];
        
    }
    return 0;
}
