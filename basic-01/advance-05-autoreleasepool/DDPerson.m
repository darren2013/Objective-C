//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"
#import "DDDog.h"

@implementation DDPerson

{
    @private
    DDDog* _dog;
}

+ (instancetype)person
{
    return [[[self alloc] init] autorelease];
}

- (void)setDog:(DDDog *)dog
{
    if(_dog != dog){
        [_dog release];
        _dog = [dog retain];
    }
}

- (DDDog *)dog
{
    [_dog retain];
    [_dog autorelease];
    return _dog;
}

- (void)dealloc
{
    self.dog = nil;
    self.name = nil;
    NSLog(@"%s",__FUNCTION__);
    [super dealloc];
}
@end
