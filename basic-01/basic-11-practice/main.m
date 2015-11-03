//
//  main.m
//  basic-11-practice
//
//  Created by 杜东方 on 15/10/12.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DDDog.h"
#import "DDPerson.h"
#import "DDStudent.h"

void testDog()
{
    DDDog* dog = [DDDog new];
    dog -> _color = DDColorBlack;
    dog -> _gender = DDGenderMale;
    dog -> _speed = 80.2;
    dog -> _weight = 124;
    
    [dog eat];
    [dog bark];
    [dog run];
    [dog bark];
    
    DDDog* dog2 = [DDDog new];
    dog2 -> _color = DDColorWhite;
    dog2 -> _gender = DDGenderFemale;
    dog2 -> _speed = 20;
    dog2 -> _weight = 56;
    
    BOOL sameColor = [dog compareColorWithOtherDog:dog2];
    NSLog(@"sameColor %hhd",sameColor);
    double deltaSpeed = [dog comparedSpeedWithOtherDog:dog2];
    NSLog(@"delta speed %f",deltaSpeed);
}


void testPerson()
{
    DDPerson* person = [DDPerson new];
    person -> _name = @"张三";
    
    DDDog* dog = [DDDog new];
    dog -> _weight = 34.2;
    dog -> _speed = 67;
    dog -> _gender = DDGenderFemale;
    dog -> _color = DDColorYellow;
    
    //NOTE,OC没有空指针异常，即使不给person赋值一个狗，也不会报异常，没有任何输出
    person -> _dog = dog;
    
    [person feedDog];
    [person walkDog];
    
}

void testStudent()
{
    DDStudent* student = [DDStudent new];
    student->_age = 25;
    DDDate date = {1983,10,25};
    
    student->_birthday = date;
    student->_cScore = 56.3;
    student->_gender = DDGenderFemale;
    student->_height = 170;
    student->_iosScore = 75;
    student->_name = @"小红";
    student->_ocScore = 89;
    
    [student run];
    [student eat];
    [student sleep];
    [student study];
    [student calculateTotal];
    NSLog(@"avg:%f",[student average]);
    
}


int main(int argc, const char * argv[]) {
    //testDog();
    //testPerson();
    testStudent();
    return 0;
}
