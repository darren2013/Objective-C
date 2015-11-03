//
//  main.m
//  advance-17-NSValue
//
//  Created by 杜东方 on 15/10/25.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

void test1()
{
    NSRange range = {1,30};
    NSValue *value = [NSValue valueWithRange:range];
    CGPoint point =CGPointMake(12.3, 35.6);
    NSValue *value2 = [NSValue valueWithPoint:point];
    CGSize size = CGSizeMake(23.4, 12.3);
    NSValue *value3 = [NSValue valueWithSize:size];
    CGRect rct = CGRectMake(23.4, 45.6, 23, 65);
    NSValue *value4 = [NSValue valueWithRect:rct];
    
    typedef struct _DDDate{
        int year;
        int month;
        int day;
    }DDDate;
    
    DDDate date = {2014,12,25};
    NSValue *value5;
    
    
    value5 = [NSValue valueWithBytes:&date objCType:@encode(DDDate)];
    NSLog(@"%@",value5);
    
    //包装类型转结构体
    DDDate d2;
    [value5 getValue:&d2];
    NSLog(@"%d-%d-%d",d2.year,d2.month,d2.day);
    
    [value4 rectValue];
    [value3 sizeValue];
}


int main(int argc, const char * argv[]) {
    
  
    
    @autoreleasepool {
        NSNumber *number = [NSNumber numberWithInt:23];
        number = [NSNumber numberWithFloat:12.3f];
        number = [NSNumber numberWithDouble:23.4];
        number = [NSNumber numberWithBool:YES];
        
        //包装类型转基本数据类型
        float f = number.floatValue;
        
        number = @1;
        number = @1.2;
        number = @45;
        
        
    }
    return 0;
}
