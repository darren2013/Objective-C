//
//  NSString+Ext.m
//  basic-01
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import "NSString+Ext.h"

@implementation NSString (Ext)

+ (int)countNumInString:(NSString *)str
{
    return [str countNum];
}

- (int)countNum
{
    int counter = 0;
    
    for (int i=0; i < [self length]; i++) {
        unichar c = [self characterAtIndex:i];
        
        if(c >='0' && c<= '9'){
            counter++;
            // NSLog(@"%c",c);
        }
    }
    
    return counter;
}
@end
