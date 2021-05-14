//
//  Demo2.m
//  Demo
//
//  Created by Flame Grace on 2017/11/13.
//  Copyright © 2017年 com.flamegrace. All rights reserved.
//

#import "Demo2.h"

@implementation Demo2

//- (NSNumber *)getId
//{
//    NSLog(@"Demo2 getId return nil");
//    return nil;
//}

- (int)getInt
{
    NSLog(@"Demo2 getInt return 4");
    return 4;
}

- (void)getNoReturn
{
    NSLog(@"Demo2 getNoReturn get no return ");
}


- (NSNumber *)getIdX
{
    NSLog(@"Demo2 getIdX return 4");
    return @4;
}

//- (int)getIntX
//{
//    NSLog(@"Demo2 getIntX return 4");
//    return 4;
//}

- (void)getNoReturnX
{
    NSLog(@"Demo2 getNoReturnX get no return ");
}

@end
