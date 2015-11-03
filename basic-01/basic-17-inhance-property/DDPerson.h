//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

/**
 xcode 4.3之后,@property会自动生成setter和getter方法声明及实现，
 同时在实现中生成私有的成员变量，变量名字是前面加_
 */

#import <Foundation/Foundation.h>

@interface DDPerson : NSObject

@property (nonatomic) int age;

//加入了readonly之后，就不会生成setter方法了
//@property (readonly) NSString* name;

@property NSString* name;


@end
