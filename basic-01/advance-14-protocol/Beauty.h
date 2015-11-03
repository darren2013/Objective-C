//
//  Beauty.h
//  basic-01
//
//  Created by 杜东方 on 15/10/20.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Beauty : NSObject

@property (nonatomic,strong) id<Player> player;

- (void) playGames;

@end
