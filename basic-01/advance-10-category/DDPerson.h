//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDPerson : NSObject
{
    @private
    int _age;
}

@property (nonatomic,copy)NSString* name;

- (void)eat;

@end
