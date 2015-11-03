//
//  main.m
//  basic-01
//
//  Created by 杜东方 on 15/10/10.
//  Copyright © 2015年 private. All rights reserved.
//

/**
 1.
 #import和#include都是编译预处理指令，都是把包含的头文件拷贝到指令所在的位置
 
 #import<>和#include<>都是用来包含系统的头文件的
 #import ""和#include ""都是用来包含自己项目的头文件
 
 #import是#include的升级版，自动防止文件重复包含
 
 2.
 Foundation：Foundation框架
 Foundation.h位置：/Applications/Xcode-beta.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers
 
 3.
 @autoreleasepool用于内存管理
 
 4.NSLog是Foundation框架提供的用于日志输出的函数
 
 NSLog和printf区别：
 
 1.printf是C语言提供的，存在stdio.h头文件中
 2.NSLog是Foundation框架提供的，存在NSObjCRuntime.h头文件中
 3.NSLog会输出打印日志的日期
 4.NSLog会自动换行，末尾\n会忽略掉
 5.NSLog格式字符串不是普通字符串，是NSString对象
  @“xx”,NSString对象的字面表示
 
 6.printf中所有占位符oc都支持的
 
 7.NSLog新增了%@,用于输出对象
 
*/
 

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"new line \n");
        NSLog(@"Hello, World!");
        printf("%d,%f,%lf,%c\n",23,23.2,332.3,'A');
        
        NSLog(@"%d,%f,%lf,%c",23,23.2,332.3,'A');
        
        //%s,对中文的支持不太好，不会打印
        NSLog(@"%s","哈哈");
        
        //
        NSLog(@"%@",@"哈哈");
        
        
    }
    return 0;
}
