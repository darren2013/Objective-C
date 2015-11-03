//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDRoom.h"

@interface DDPerson : NSObject
{
    @private
    DDRoom* _room;
}

- (void) setRoom:(DDRoom*)room;
@end
