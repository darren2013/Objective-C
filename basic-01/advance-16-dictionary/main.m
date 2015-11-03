//
//  main.m
//  advance-16-dictionary
//
//  Created by 杜东方 on 15/10/25.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 NSDictionary是一种不可变的数据结构，一经创建里面元素就不可变
 key遵循NSCopying协议，一般使用字符串作为key
 
 */

void testCreateDic(){
    //必须以nil结尾;数字前面加@,转为包装类型
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"张三",@"name",@12,@"age",nil];
    
    NSLog(@"%@",dic);
    
    NSNumber *num = [dic objectForKey:@"age"];
    NSLog(@"%@",num);
    
    //简便的取值方式
    NSString *name = dic[@"name"];
    NSLog(@"name=%@",name);
    
    NSDictionary *dic2 = @{@"name":@"张三",@"age":@50,@"heigth":@23.4};
    NSLog(@"%@",dic2);
    
    
    long len = dic2.count;
    len = [dic2 count];
    NSLog(@"%zd",len);
}

void testIteration(){
    NSDictionary *dic = @{@"name":@"李四",@"age":@45,@"height":@123.9};
    
    //第一种方式，获取到所有的key
    NSArray *array = [dic allKeys];
    
    for (NSString* key in array) {
        NSLog(@"%@=%@",key,dic[key]);
    }
    
    //第二种通过增强型for循环
    for (NSString* key in dic) {
        NSLog(@"%@=%@",key,dic[key]);
    }
    
    //第三种通过枚举器
    NSEnumerator *keyEnum = [dic keyEnumerator];
    NSString* key;
    
    while (key = [keyEnum nextObject]) {
        NSLog(@"%@=%@",key,dic[key]);
    }
    
    //通过block方式
    [dic enumerateKeysAndObjectsUsingBlock:^(id key, id val, BOOL * _Nonnull stop) {
        NSLog(@"%@=%@",key,dic[key]);
    }];
    
    //获取字典中所有的值
    NSArray *values = [dic allValues];
    
    for (id val in values) {
        NSLog(@"%@",val);
    }
}

void testDic2File()
{
    NSDictionary *dic = @{@"name":@"李四",@"age":@45,@"height":@123.9};
    NSString *path = @"/Users/darrendu/Desktop/dic.plist";
    [dic writeToFile:path atomically:YES];
}

void mutableDicCreate()
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:@"lisi" forKey:@"name"];
    NSLog(@"%@",dic);
    
    NSMutableDictionary *dic2 = [NSMutableDictionary dictionaryWithCapacity:20];
    dic2.dictionary = @{@"name":@"李四",@"age":@45,@"height":@123.9};
    dic2[@"gender"] = @"male";
    
    [dic2 removeObjectForKey:@"name"];
    [dic2 removeObjectsForKeys:@[@"age",@"gender"]];
    [dic2 removeAllObjects];
    NSLog(@"%@",dic2);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *dic2 = [NSMutableDictionary dictionaryWithCapacity:20];
        dic2.dictionary = @{@"name":@"李四",@"age":@45,@"height":@123.9};
        dic2[@"gender"] = @"male";
        
        NSMutableArray *array = [NSMutableArray array];
        
        for (NSString *key in dic2) {
            if ([dic2[key] isEqualTo:@45]) {
                [array addObject:key];
            }
        }
        
        [dic2 removeObjectsForKeys:array];
        NSLog(@"%@",dic2);

    }
    return 0;
}
