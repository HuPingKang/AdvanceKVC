//
//  Person.m
//  AdvanceKVC
//
//  Created by hu ping kang on 2018/4/24.
//  Copyright © 2018年 hu ping kang. All rights reserved.
//


#import "Person.h"

@implementation Dog

@end

@implementation Book

@end

@interface Person(){
    
    @private
    int _age;
    
}

@property(nonatomic,readonly,strong)NSString * name;
@property(nonatomic,strong)NSString * address;
@property(nonatomic,strong)Dog * dog;

@end


@implementation Person

-(instancetype)init{
    if (self =[super init]) {
        self.dog = [[Dog alloc]init];
    }
    return self;
}

-(NSString *)name{
    return @"HM";
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}


@end
