//
//  NSString+CustomEqu.m
//  basic-01
//
//  Created by 杜东方 on 15/10/21.
//  Copyright © 2015年 private. All rights reserved.
//

#import "NSString+CustomEqu.h"

@implementation NSString (CustomEqu)

- (BOOL)customEquals:(NSString *)other
{
    
    if (self == other) {
        return YES;
    }
    
    if (self.length != other.length) {
        return NO;
    }
    
    for (int i=0; i<other.length; i++) {
        unichar c1 = [other characterAtIndex:i];
        unichar c2 = [self characterAtIndex:i];
        
        if(c1 != c2)return NO;
    }
    return YES;
}
@end
