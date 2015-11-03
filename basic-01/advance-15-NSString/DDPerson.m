//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/24.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

- (NSString *)description
{
    //return self.name;
    return [NSString stringWithFormat:@"name=%@",_name];
}
@end
