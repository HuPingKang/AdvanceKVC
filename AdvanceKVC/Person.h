//
//  Person.h
//  AdvanceKVC
//
//  Created by hu ping kang on 2018/4/24.
//  Copyright © 2018年 hu ping kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject

@property(nonatomic,strong)NSString * cate;

@end

@interface Book : NSObject

@property(nonatomic,assign)int number;

@end

@interface Person : NSObject

@property(nonatomic,assign)int age;

@property(nonatomic,strong)NSArray<Book *>* books;

@end
