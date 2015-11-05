//
//  main.m
//  advance-19-kvc
//
//  Created by 杜东方 on 15/11/6.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"
#import "DDBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        DDPerson *p1 = [[DDPerson alloc] init];
        [p1 setValue:@"darren" forKey:@"name"];
        [p1 setValue:@23 forKey:@"age"];
        
        NSLog(@"%@",p1);
        
        NSString *name = [p1 valueForKey:@"name"];
        int *age = [[p1 valueForKey:@"age"] intValue];
        
        NSLog(@"%@--%d",name,age);
        
        
        NSDictionary *dic =[p1 dictionaryWithValuesForKeys:@[@"name",@"age"]];
        NSLog(@"%@",dic);
        
        
        DDPerson *p2 = [[DDPerson alloc] init];
        [p2 setValue:@"darren2" forKey:@"name"];
        [p2 setValue:@25 forKey:@"age"];

        
        NSArray *persons = @[p1,p2];
        
        NSArray *names = [persons valueForKey:@"name"];
        NSLog(@"%@",names);
        
        
        DDPerson *p3 = [[DDPerson alloc] init];
        [p3 setValue:@"darren3" forKey:@"name"];
        [p3 setValue:@30 forKey:@"age"];
        
        DDBook *book = [[DDBook alloc] init];
        book.name = @"oc-基础编程";
        p3.book = book;
        
        NSLog(@"bookname:%@",[p3 valueForKeyPath:@"book.name"]);
        
    }
    return 0;
}
