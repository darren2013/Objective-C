//
//  main.m
//  basic-05-NSString
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <string.h>

int main(int argc, const char * argv[]) {
    
    //NSString对象的创建
    //1.通过字面量的方式创建
    NSString *str1 = @"天气凉了,多加衣服啊";
    NSLog(@"%@",str1);
    
    //2.通过创建对象的方式
    //这种方式创建了一个空的NSString对象
   // NSString *str2 = [NSString new];
    
    NSString *str2 = [NSString alloc];
   // str2 = [str2 init];//这两步等价与[NSString new]
    
    str2 = [str2 initWithUTF8String:"今天天气很好"];
    NSLog(@"%@",str2);
    
    
    //3.通过类方法创建
    
    NSString *str3 = [NSString stringWithFormat:@"今天股票跌了%d个点",10];
    NSLog(@"%@",str3);
    
    //计算字符串长度
    //length 计算是字符的个数
    long len = [str1 length];
    NSLog(@"%@ length %ld",str1,len);
    
    //strlen计算字符所占字节数
    //一个UTF-8表示的中文有三个字节
    char *strc = "天气凉了,多加衣服啊";
    len = strlen(strc);
    NSLog(@"%ld",len);
    
    len = [@"abc你好" length];
    NSLog(@"%ld",len);
    
    return 0;
}
