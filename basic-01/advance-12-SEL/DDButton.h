//
//  DDButton.h
//  basic-01
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDButton : NSObject

@property (nonatomic,strong)id actioner;

@property (nonatomic,assign)SEL action;

- (void) click;
@end
