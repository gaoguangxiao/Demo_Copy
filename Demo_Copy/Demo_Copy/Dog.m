//
//  Dog.m
//  Demo_Copy
//
//  Created by gaoguangxiao on 2022/5/8.
//

#import "Dog.h"

@implementation Dog

- (id)copyWithZone:(NSZone *)zone {
    Dog *dog = [[Dog allocWithZone:zone] init];
    return dog;
}
//-(id)mutableCopyWithZone:(NSZone *)zone {
//
//}
@end
