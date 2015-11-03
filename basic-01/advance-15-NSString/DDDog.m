//
//  DDDog.m
//  basic-01
//
//  Created by 杜东方 on 15/10/24.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDDog.h"

@implementation DDDog

- (NSString *)description
{
    //return self.name;
    return [NSString stringWithFormat:@"name=%@",_name];
}

- (BOOL)isEqual:(id)object
{
    if (self == object) {
        return YES;
    }
    
    return [self.name isEqualToString:[object name]];
}

- (void)bark
{
    NSLog(@"bark,%@",self.name);
}

- (void)eat:(NSString *)food
{
    NSLog(@"%@ eat %@",self.name,food);
}

- (NSComparisonResult)compare:(DDDog *)other
{
    if (self.age == other.age) {
        return [self.name compare:other.name];
    }else if(self.age > other.age){
        return NSOrderedDescending;
    }else{
        return NSOrderedAscending;
    }
}

@end
