//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/11/6.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson


- (NSString *)description{
    return [NSString stringWithFormat:@"%@-%d",self.name,self.age];
}
@end
