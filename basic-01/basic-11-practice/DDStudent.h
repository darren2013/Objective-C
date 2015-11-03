//
//  DDStudent.h
//  basic-01
//
//  Created by 杜东方 on 15/10/12.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DDTools.h"

@interface DDStudent : NSObject
{
    @public
    NSString* _name;
    DDDate _birthday;
    int _age;
    float _height;
    float _weight;
    DDGender _gender;
    float _cScore;
    float _ocScore;
    float _iosScore;
    
}

- (void) run;

- (void) eat;

- (void) study;

- (void) sleep;

- (float) compareCScore:(DDStudent*)other;

- (float) compareOCScore:(DDStudent*)other;

- (float) compareIOSScore:(DDStudent*)other;

- (float) calculateTotal;

- (float) average;

@end
