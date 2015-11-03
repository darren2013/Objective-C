//
//  main.m
//  basic-13-classMethod
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"
#import "DDCalculator.h"

int main(int argc, const char * argv[]) {
    
    NSLog(@"result=%f",[DDPerson sumOfNum:34 andOtherNum:34]);
    
    NSLog(@"sum=%f",[DDCalculator sumNum:34 otherNum:54]);
    return 0;
}
