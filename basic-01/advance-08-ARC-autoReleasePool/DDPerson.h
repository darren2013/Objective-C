//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDDog.h"

@interface DDPerson : NSObject

+ (DDPerson*) person;

@property (nonatomic,strong)DDDog* dog;

@end
