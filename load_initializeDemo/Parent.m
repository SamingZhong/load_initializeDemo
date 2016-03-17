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
    //加上判断后，就不会因为子类而调用到自己的initialize方法了。
    if(self == [Parent self]){
        NSLog(@"initializing Parent class object(%p)...,caller:%@(%p)", [Parent self], self,self);
    }
    else{
        NSLog(@"no need initializing Parent class.");
    }
}
@end
