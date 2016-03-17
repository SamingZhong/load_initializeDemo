//
//  Children.m
//  load_initializeDemo
//
//  Created by SamingZhong on 16/3/17.
//  Copyright © 2016年 SamingZhong. All rights reserved.
//

#import "Children.h"
#import <objc/runtime.h>
@implementation Children
+ (void)load{
    NSLog(@"loading %@ class object:(%p)...", self, self);
    //在此做类方法的实现互换(method exchange)
    //[self methodExchange]; 注意！！别这么干，因为会触发类方法initialize，即便本类没有实现，也会继续调继承的类的initialize
    NSLog(@"互换Children类的实例方法methodA与methodB...");
    Class cls = NSClassFromString(@"Children");
    Method originFunc = class_getInstanceMethod( cls, @selector(methodA));
    Method swizzledFunc = class_getInstanceMethod(cls, @selector(methodB));
    method_exchangeImplementations(originFunc, swizzledFunc);
}

/*+ (void)initialize{
    if(self == [Children self]){
        NSLog(@"initializing Children class object(%p)...", self);
    }
    else{
        NSLog(@"no need initializing Children class.");
    }
}*/

+ (void)aClassMethod{
    NSLog(@"Children的类对象=%p，跟本类+initialize方法里的对象相同！", self);

}


- (void)methodA{
    NSLog(@"calling metherA...");
}

- (void)methodB{
    NSLog(@"calling methodB...");
}

@end
