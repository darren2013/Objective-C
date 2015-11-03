//
//  DDCalculator.h
//  basic-01
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDCalculator : NSObject

+ (double) sumNum:(double)num otherNum:(double)other;

+ (double) minusNum:(double)num otherNum:(double)other;

+ (double) multiplyNum:(double)num otherNum:(double)other;

+ (double) divideNum:(double)num otherNum:(double)other;

@end
