//
//  DDTools.h
//  basic-01
//
//  Created by 杜东方 on 15/10/12.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum _DDColor{
    DDColorWhite,
    DDColorBlack,
    DDColorYellow,
    DDColorRed
}DDColor;

typedef enum _DDGender{
    DDGenderMale,
    DDGenderFemale
}DDGender;

typedef struct _DDDate{
    int year;
    int month;
    int day;
}DDDate;

@interface DDTools : NSObject

+ (NSString*) convertColorToString:(DDColor)color;

+ (NSString*) convertGenderToString:(DDGender)gender;

+ (NSString*) convertDateToString:(DDDate)date;

@end
