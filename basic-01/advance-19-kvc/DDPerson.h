//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/11/6.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DDBook;

@interface DDPerson : NSObject

@property(nonatomic,copy)NSString *name;

@property(nonatomic,assign)int age;

@property(nonatomic,strong)DDBook *book;

@end
