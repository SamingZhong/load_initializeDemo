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
        // insert code here...
        NSLog(@"Hello, World!");
        
        //Children's initialize method will be invoked!
        NSLog(@"\n\nChildren's initialize将会被触发...");
        Children *boy = [Children new];
        
        NSLog(@"\n\n准备发送methodA方法到 Children类对象...");
        [boy methodA];
        
        NSLog(@"\n\n即将发送类方法aClassMethod到 Children类对象...");
        [Children aClassMethod];
    }
    return 0;
}
