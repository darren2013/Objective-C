//
//  main.m
//  advance-15-NSString
//
//  Created by 杜东方 on 15/10/21.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+CustomEqu.h"

#import "DDPerson.h"
#import "DDDog.h"

void test1(){
    //1.通过字面量方式定义，存储在常量区里，两个地址相等
    NSString* str1 = @"abc";
    NSString* str2 = @"abc";
    NSLog(@"str1=%p",str1);
    NSLog(@"str2=%p",str2);
    
    //2.通过快捷构造方法
    NSString* str3 = [NSString stringWithFormat:@"str=%@,int=%d",@"hello,",23];
    //NSLog(@"str3 retainCount=%zd",[str3 retainCount]);
    
    //3.初始化方法
    NSString* str4 = [[NSString alloc] initWithFormat:@"str=%@,int=%d",@"hello",33];
    NSLog(@"%@",str4);
}

void testSubString()
{
    //获取长度
    NSString* str = @"www.baidu.com";
    long length = str.length;
    NSLog(@"str %@ length %zd",str,length);
    
    //截取字符串
    NSString* str1 = [str substringFromIndex:4];
    NSLog(@"str1=%@",str1);
    
    NSString* str2 = [str substringToIndex:3];
    NSLog(@"%@",str2);
    
    //从那个位置开始截取，截取多长
    NSRange range = {4,5};
    NSString* str3 = [str substringWithRange:range];
    NSLog(@"%@",str3);
    
    //获取某个字符串所在区间
    NSRange rang2 = [str rangeOfString:@"baidu"];
    NSLog(@"%@",NSStringFromRange(rang2));
    
    NSRange range3 = [str rangeOfString:@"baiuu"];
    
    if (range3.location == NSNotFound) {
        NSLog(@"str %@ is not found",@"baiuu");
    }
    
    if(range3.length == 0){
        NSLog(@"str is not found");
    }
    
    
    NSLog(@"%@",NSStringFromRange(range3));

}

void test2(){
    NSString* str = @"<html>hello,world!</html>";
    
    //1.
    NSRange range = {6,12};
    NSString* str2 = [str substringWithRange:range];
    NSLog(@"%@",str2);
    
    //2.
    NSInteger startIndex = [str rangeOfString:@">"].location + 1;
    NSString* lastPart = [str substringFromIndex:startIndex];
    NSInteger endIndex = [lastPart rangeOfString:@"</"].location;
    NSString* content = [lastPart substringToIndex:endIndex];
    NSLog(@"content=%@",content);
    
    //3.
    NSInteger endIndex2 = [str rangeOfString:@"</"].location;
    NSString* prePart = [str substringToIndex:endIndex2];
    NSInteger startIndex2 = [prePart rangeOfString:@">"].location + 1;
    content = [prePart substringFromIndex:startIndex2];
    NSLog(@"content:%@",content);

}

void test3()
{
    NSString* str = @"www.baidu.com";
    unichar c = [str characterAtIndex:4];
    NSLog(@"%c",c);
}

void test4()
{
    NSString* str1 = @"abc";
    NSString* str2 = @"abc";
    
    //比较的是地址
    if(str1 == str2){
        NSLog(@"equals");
    }
    
    NSString* str3 = [NSString stringWithFormat:@"abc"];
    
    if ([str1 isEqualToString:str3]) {
        NSLog(@"content equals");
    }
    
    if ([str1 isEqual:str3]) {
        NSLog(@"content equals...");
    }
}

void test5()
{
    NSString* str1 = @"abc";
    NSString* str2 = [NSString stringWithFormat:@"abc"];
    
    BOOL isEq = [str2 customEquals:str1];
    
    if (isEq) {
        NSLog(@"equ");
    }
}

void test6()
{
    NSString* str = @"http://www.baidu.com";
    BOOL httpPrefix = [str hasPrefix:@"http://"];
    if (httpPrefix) {
        NSLog(@"http prefix");
    }
    
    BOOL comSuffix = [str hasSuffix:@".com"];
    
    if (comSuffix) {
        NSLog(@"com suffix");
    }
}

void test7()
{
    NSString* str1 = @"abc";
    NSString* str2 = @"abc2";
    
    NSComparisonResult result = [str1 compare:str2];
}

void test8(){
    NSString* str = @"today is cool";
    NSString* str1 = [str uppercaseString];
    NSLog(@"%@",str1);
    NSString *str2 = @"HOW ARE YOU!";
    NSLog(@"%@",[str2 lowercaseString]);
    str1 = [str capitalizedString];
    NSLog(@"%@",str1);
    
    
    NSString* intStr = [NSString stringWithFormat:@"%i",23];
    NSLog(@"%@",intStr);
    
    NSString* intStr2 = @"55";
    int num = intStr2.intValue;
    double d = intStr2.doubleValue;
    float f = intStr2.floatValue;
    NSLog(@"%i,%lf",num,d);
    
    //c字符串转为oc字符串
    NSString* str3 = [NSString stringWithCString:"hello" encoding:NSUTF8StringEncoding];
    NSLog(@"%@",str3);
    
    //oc字符串转为c字符串
    const char* str4 = [str3 cStringUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"%s",str4);

}

void test9()
{
    NSString *str1 = @"   -how are you!-  ";
    NSString* str2 = [str1 stringByAppendingString:@" And you?"];
    NSLog(@"%@",str2);
    
    NSString* str3 = [str1 stringByReplacingOccurrencesOfString:@"are" withString:@"kkkk"];
    NSLog(@"%@",str3);
    
    NSString *str4 = [str1 stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"%@",str4);
    
    NSRange range = [str1 rangeOfString:@"are"];
    NSString *str5 = [str1 stringByReplacingCharactersInRange:range withString:@"they"];
    NSLog(@"%@",str5);
    
    NSString * str6 = [str1 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSLog(@"%@",str6);
}

void testWirteToFile()
{
    NSString *str = @"haha fdkfd";
    NSString *path = @"/User/darrendu/Desktop/test.txt";
    NSError *error;
    
    BOOL isSuccess = [str writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:(&error)];
    
    if (error) {
        NSLog(@"%@",error);
    }else{
        NSLog(@"save successfully!");
    }
}

void readFromFile()
{
    NSError *error;
    NSString *path = @"/Users/darrendu/Desktop/test.txt";
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:(&error)];
    
    NSLog(@"%@",content);
}

void testURL()
{
    NSError *error;
    NSString *str = @"hello world";
    NSURL *url = [NSURL URLWithString:@"file:///Users/darrendu/Desktop/test.txt"];
    BOOL isSuc = [str writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:(&error) ];
    
    NSString * str2 = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:(&error)];
    NSLog(@"%@",str2);
}

//不要使用这种方式，效率较低
void testContinousAppend(){
    NSString *str = [[NSString alloc] init];
    
    for(int i=0;i<20;i++){
        str = [str stringByAppendingString:@" hello,world!"];
    }
    
    str = [str substringFromIndex:1];
    
    NSLog(@"-%@",str);
}

void testMutableString()
{
    NSMutableString *str = [NSMutableString string];
    [str appendString:@"hello"];
    NSLog(@"%@",str);
}

void testContinousAppendStringWithMutable(){
    NSMutableString *str = [NSMutableString stringWithCapacity:300];
    
    for (int i=0; i<20; i++) {
        [str appendString:@" hello,world!"];
    }
    
    NSRange range = {0,1};
    
    [str deleteCharactersInRange:range];
    
    NSLog(@"%@",str);
    NSRange range2 = {0,str.length};
    
    [str replaceOccurrencesOfString:@"world" withString:@"kitty" options:(NSLiteralSearch) range:range2];
    
    NSLog(@"%@",str);
}

void testMutableStrInsert(){
    NSMutableString *str = [NSMutableString string];
    str.string = @"hello,world!";
    
    [str insertString:@"Kitty " atIndex:6];
    NSLog(@"%@",str);
}

void testArray()
{
    //nil代表数组元素结束，中间不要出现nil
    NSArray *array = [NSArray arrayWithObjects:@"a",@"b",nil];
    NSLog(@"%@",array);
    DDPerson *person = [[DDPerson alloc] init];
    person.name = @"zhangsan";
    
    DDDog *dog = [[DDDog alloc] init];
    dog.name = @"xiaohei";
    
    array = [[NSArray alloc] initWithObjects:dog,person,@"hello", nil];
    NSLog(@"%@",array);
    
    //通过字面量的方式
    NSArray *arr = @[person,dog,@"hello"];
    NSLog(@"%@",arr);

}

void testArray2()
{
    DDPerson *person = [[DDPerson alloc] init];
    person.name = @"zhangsan";
    
    DDDog *dog = [[DDDog alloc] init];
    dog.name = @"xiaohei";
    
    //通过字面量的方式
    NSArray *arr = @[person,dog,@"hello"];
    
    DDDog *dog2 = [arr objectAtIndex:0];
    NSLog(@"%@",dog2);
    dog2 = arr[0];
    NSLog(@"%@",dog2);
    
    
    //数组长度
    long len = [arr count];
    len = arr.count;
    NSLog(@"%zd",len);
    
    DDDog *dog3 = [[DDDog alloc] init];
    dog3.name = @"xiaohei";
    
    //contains是比较对象的isEqual方法
    BOOL isContain = [arr containsObject:dog3];
    
    if (isContain) {
        NSLog(@"contains");
    }

}

void testIteration()
{
    DDDog *dog = [[DDDog alloc] init];
    dog.name = @"blank";
    DDDog *dog2 = [[DDDog alloc] init];
    dog2.name = @"red";
    DDDog *dog3 = [[DDDog alloc]init];
    dog3.name = @"hua";
    
    NSArray *array = @[dog,dog2,dog3];
    
    //第一种遍历方式
    for (int i=0; i<array.count; i++) {
        DDDog *tempDog = array[i];
        NSLog(@"%@",tempDog);
    }
    
    //使用增强型for循环
    for (DDDog *tempDog in array) {
        NSLog(@"%@",tempDog);
    }
    
    //使用枚举器
    NSEnumerator *enumerator = [array objectEnumerator];
    DDDog *tempDog;
    
    while (tempDog = [enumerator nextObject]) {
        NSLog(@"%@",tempDog);
    }
    NSLog(@"%@",@"---------------------------------");
    [array enumerateObjectsUsingBlock:^(DDDog *dog, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@",dog);
        
        if (idx == 1) {
            //注意这里是*stop
            *stop = YES;
        }
    }];

}

void testExecute()
{
    DDDog *dog = [[DDDog alloc] init];
    dog.name = @"blank";
    DDDog *dog2 = [[DDDog alloc] init];
    dog2.name = @"red";
    DDDog *dog3 = [[DDDog alloc]init];
    dog3.name = @"hua";
    
    NSArray *array = @[dog,dog2,dog3];
    
    //让数组每个元素都执行某个方法
    [array makeObjectsPerformSelector:@selector(bark)];
    [array makeObjectsPerformSelector:@selector(eat:) withObject:@"肉"];
}


void testSort()
{
    DDDog *dog = [[DDDog alloc] init];
    dog.name = @"blank1";
    dog.age = 20;
    DDDog *dog2 = [[DDDog alloc] init];
    dog2.name = @"blank";
    dog2.age = 60;
    DDDog *dog3 = [[DDDog alloc]init];
    dog3.name = @"hua";
    dog3.age = 50;
    
    NSArray *array = @[dog,dog2,dog3];
    
    array = [array sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@",array);
    
    //使用比较器
    array = [array sortedArrayUsingComparator:^NSComparisonResult(DDDog *dog1, DDDog* other) {
        if (dog1.age == other.age) {
            return [dog1.name compare:other.name];
        }else if(dog1.age > other.age){
            return NSOrderedDescending;
        }else{
            return NSOrderedAscending;
        }
    }];
    NSLog(@"%@",array);
    
    //属性描述器
    NSSortDescriptor *ageDesc = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
    NSSortDescriptor *nameDesc = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    
    array = [array sortedArrayUsingDescriptors:@[ageDesc,nameDesc]];
    NSLog(@"%@",array);
}

void testArrayToString()
{
    //字符串分割为一个数组
    NSString *str = @"a b c d e f g";
    NSArray *array = [str componentsSeparatedByString:@" "];
    NSLog(@"%@",array);
    
    str = [array componentsJoinedByString:@"-"];
    NSLog(@"%@",str);
}


void testArrayToFile()
{
    NSArray *array = @[@"hello",@"world",@"how"];
    NSString *path = @"/Users/darrendu/Desktop/test2.plist";
    BOOL isSucc = [array writeToFile:path atomically:YES];
    
    if (isSucc) {
        NSLog(@"write successfully");
    }
    
    array = [NSArray arrayWithContentsOfFile:path];
    NSLog(@"%@",array);
}

void testMutableArray(){
    //创建一个空的可变数组
    //NSMutableArray *mutableArray = [NSMutableArray array];
    NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:50];
    
    [mutableArray addObject:@"hello"];
    [mutableArray addObject:@"world"];
    
    // NSMutableArray *arr = @[@"hello",@"world"];//错误的方式，后面是一个可变数组
    
    //通过一个不可变数组设置一个可变数组
    mutableArray.array = @[@"1",@"2",@"3"];
    
    [mutableArray insertObject:@"a" atIndex:1];
    
    //只要isEqualTo方法相同，就会删除
    [mutableArray removeObject:@"1"];
    NSLog(@"%@",mutableArray);
}


/**
 NSString是一个不可变的字符串，所有它产生的新的字符串都是不可变的字符串
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@"a",@"b",@"c",@"d"];
        
        NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:array];
        [mutableArray addObject:@"e"];
        
        
        //不能通过增强型for循环删除，不能通过枚举器删除
        NSMutableArray *tempArray = [NSMutableArray array];
        
        for (NSString *str in mutableArray) {
            if ([str isEqualToString:@"c"]) {
                [tempArray addObject:str];
            }
        }
        
        [mutableArray removeObjectsInArray:tempArray];
        NSLog(@"%@",mutableArray);
        
        for (int i=0; i<mutableArray.count; i++) {
            if ([mutableArray[i] isEqualToString:@"b"]) {
                [mutableArray removeObjectAtIndex:i];
                i--;//注意这里不要漏掉
            }
        }
        NSLog(@"%@",mutableArray);
        
    }
    return 0;
}
