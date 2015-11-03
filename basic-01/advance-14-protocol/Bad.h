//
//  Bad.h
//  basic-01
//
//  Created by 杜东方 on 15/10/20.
//  Copyright © 2015年 private. All rights reserved.
//

/**
 @required 遵守这个协议的类必须实现的方法
 
 @optional 遵守这个协议的类可以不实现的方法
 */

#import <Foundation/Foundation.h>

@protocol Bad <NSObject>

//required起作用的代码从@required开始，到下一个@require结束或@optional结束

@required
- (void) rob;


@optional
- (void) kill;

@end
