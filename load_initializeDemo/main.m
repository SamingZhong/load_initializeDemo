//
//  main.m
//  load_initializeDemo
//
//  Created by SamingZhong on 16/3/17.
//  Copyright © 2016年 SamingZhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Children.h"
#import "Parent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"========以上的方法都在main方法调用前被调用(+load方法（甚至是initialize方法）)=======");
        // insert code here...
        NSLog(@"Hello, World!");
        
        //Children's initialize method will be invoked!
        NSLog(@"\n\nChildren's initialize将会被触发...");
        Children *boy = [Children new];
        //说明
        NSLog(@"说明：Children类第一次被使用（new一个对象），触发了+initialize方法。   \
              \ninitialzer的调用机制是：先调用父类的+initialzer，所以最好做判断躲避。");
        
        NSLog(@"Parent class object:%p", [Parent self]);
        
        NSLog(@"\n\n准备发送methodA方法到 Children类对象...");
        [boy methodA];
        //说明
        NSLog(@"说明：因为Childen类在加载的时候就被做了实例方法methodA与methodB的互换，  \
              \n所以上面发送的methodA消息，跑进了methodB的实现里边");
        
        NSLog(@"\n\n即将发送类方法aClassMethod到 Children类对象...");
        [Children aClassMethod];
    }
    return 0;
}
