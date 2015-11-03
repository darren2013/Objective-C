//
//  main.m
//  basic-04-class
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef struct _CZSize{
    float width;
    float height;
}CZSize;


typedef enum _CZColor{
    CZColorBlack,
    CZColorWhite,
    CZColorKing
}CZColor;



@interface IPhone: NSObject
{
    @public
    CZSize size;
    CZColor color;
    char* model;
}

- (void) callTo:(char*)phoneNo;

- (void) sendSMS:(char*)content to:(char*)phoneNo;

- (void) about;

@end


@implementation IPhone

- (void) callTo:(char*)phoneNo
{
    NSLog(@"call to %s",phoneNo);
}


- (void) sendSMS:(char*)content to:(char*)phoneNo
{
    NSLog(@"send msg %s to %s",content,phoneNo);
}

- (void) about
{
    NSLog(@"size (%f,%f),color %u,model:%s",size.width,size.height,color,model);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        IPhone *phone = [IPhone new];
        CZSize size = {3.5,6.5};
        phone->size = size;
        
        CZColor color = CZColorKing;
        phone->color = color;
        phone->model = "4s";
        
        [phone about];
        
        [phone callTo:"123344"];
        
        [phone sendSMS:"hello world!" to:"344555"];
        
    }
    return 0;
}
