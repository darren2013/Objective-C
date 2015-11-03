//
//  DDTools.m
//  basic-01
//
//  Created by 杜东方 on 15/10/12.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDTools.h"

@implementation DDTools

+ (NSString *)convertColorToString:(DDColor)color
{
    switch (color) {
        case DDColorBlack:
            return @"黑色";

        case DDColorRed:
            return @"红色";
        case DDColorWhite:
            return @"白色";
        case DDColorYellow:
            return @"黄色";
            
    }
    
    return @"other";
}

+ (NSString *)convertGenderToString:(DDGender)gender
{
    switch (gender) {
        case DDGenderFemale:
            return @"母";
        case DDGenderMale:
            return @"公";
    }
}

+ (NSString *)convertDateToString:(DDDate)date
{
    return [NSString stringWithFormat:@"%d-%d-%d",date.year,date.month,date.day];
}
@end
