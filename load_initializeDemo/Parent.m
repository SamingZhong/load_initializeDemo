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
    NSLog(@"loading Parent class...");
}

+ (void)initialize{
    if(self == [Parent self]){
        NSLog(@"initializing Parent class...");
    }
    else{
        NSLog(@"no need initializing Parent class.");
    }
}
@end
