//
//  DDCat.h
//  basic-01
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDCat : NSObject
{
    int _age;
    NSString* _name;
}

- (void) setAge:(int)age;

//getter方法，成员变量去掉下划线
- (int) age;

- (void) setName:(NSString*)name;

- (NSString*) name;
@end
