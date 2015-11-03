//
//  DDSuperMan.h
//  basic-01
//
//  Created by 杜东方 on 15/10/20.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bad.h"
#import "Good.h"

//一个类可以实现多个协议
@interface DDSuperMan : NSObject <Bad,Good>

@end
