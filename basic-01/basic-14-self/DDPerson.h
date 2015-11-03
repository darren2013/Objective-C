//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDPerson : NSObject
{
    int _age;
    NSString* _name;
}

- (void) changeAge:(int)age;

- (int) age;

+ (double) sumNum:(double)num otherNum:(double)other;

+ (double) avgNum:(double)num otherNum:(double)other;

@end
