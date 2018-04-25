//
//  ViewController.m
//  AdvanceKVC
//
//  Created by hu ping kang on 2018/4/24.
//  Copyright © 2018年 hu ping kang. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.KVC 可以访问和修改所有的成员变量和属性（包括私有的成员变量，不包括只读属性）
    Person * person = [[Person alloc]init];
    [person setValue:@(10) forKey:@"age"];
    int age = [[person valueForKey:@"age"]intValue];
    NSLog(@"%d",age);

    //KVC不能修改只读属性的值：
    [person setValue:@"HPK" forKey:@"name"];
    NSString * name = [person valueForKey:@"name"];
    NSLog(@"%@",name);

    //
    [person setValue:@"jiaDing" forKey:@"address"];
    NSString * address = [person valueForKey:@"address"];
    NSLog(@"%@",address);
    
    //KeyPath：包含了key的功能，比key功能更加强大；
    //2.KVC的keyPath的使用：可以使用点语法找到一层一层的属性；key则只能找到对象的属性，不能找到下一层；
    [person setValue:@"chineseDog" forKeyPath:@"dog.cate"];
    NSString * cate = [person valueForKeyPath:@"dog.cate"];
    NSLog(@"%@",cate);

    
    //KeyPath的高级语法：
    Book * p1 = [[Book alloc]init];
    p1.number = 100;
    Book * p2 = [[Book alloc]init];
    p2.number = 10;
    Book * p3 = [[Book alloc]init];
    p3.number = 1;

    person.books = @[p1,p2,p3];
    int count = [[person valueForKeyPath:@"books.@sum.number"]intValue];
    NSLog(@"%d",count);
    
   
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
