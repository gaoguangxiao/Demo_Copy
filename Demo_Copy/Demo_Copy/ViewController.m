//
//  ViewController.m
//  Demo_Copy
//
//  Created by gaoguangxiao on 2022/5/8.
//

#import "ViewController.h"
#import "Dog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *str = @"ggx";
    
    id copyStr = [str copy];//不可变对象的copy 深
    id mutableCopyStr = [str mutableCopy];//不可变对象的copy 深
    
    NSLog(@"str的：%@---%p",str,str);
    NSLog(@"copyStr的：%@---%p",copyStr,copyStr);
    NSLog(@"mutableCopyStr的：%@---%p",mutableCopyStr,mutableCopyStr);
    
    //不可变字符串的 copy浅copy，mutableCopy深copy
    
    NSArray *arr = @[@"lx"];
    
    id copyArr= [arr copy];
    id mutableCopyArr = [arr mutableCopy];//不可变对象的copy 深
    
    NSLog(@"arr的：%@---%p",arr,arr);
    NSLog(@"copyArr的：%@---%p",copyArr,copyArr);
    NSLog(@"mutableCopyArr的：%@---%p",mutableCopyArr,mutableCopyArr);

    
    //可变对象的copy和mutablCopy都是深copy
    //不可变对象的copy是浅copy，mutableCopy是深copy
    
    //copy返回不可变对象，mutableCopy返回可变对象
    
//    自定义对象copy需要实现 init-

    Dog *g = [[Dog alloc]init];
    
    Dog *g1 = [g copy];
    
    NSLog(@"%p---%p",g,g1);
}


@end
