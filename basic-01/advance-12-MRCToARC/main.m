//
//  main.m
//  advance-12-MRCToARC
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"
/**
 MRC to ARC:
            edit--->convert
                            to object-c ARC
 
 MRC与ARC共存，在要使用MRC编译的.m文件中，Building Phases中，
 相应的.m文件的compileing flag中添加 -fno-objc-arc
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DDPerson* person = [[DDPerson alloc]init];
        
    }
    return 0;
}
