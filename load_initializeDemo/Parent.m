//
//  Parent.m
//  load_initializeDemo
//
//  Created by SamingZhong on 16/3/17.
//  Copyright © 2016年 SamingZhong. All rights reserved.
//

#import "Parent.h"

@implementation Parent
+(void)load{
    NSLog(@"loading %@ class object:(%p)...", self, self);
}

+ (void)initialize{
    if(self == [Parent self]){
        NSLog(@"initializing Parent class object(%p)...,caller:%@(%p)", [Parent self], self,self);
    }
    //self（调用者）为子类时，无需做父类的初始化了
    else{
        NSLog(@"no need initializing Parent class.");
    }
}
@end
