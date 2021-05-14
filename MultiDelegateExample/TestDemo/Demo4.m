//
//  Demo4.m
//  MultiDelegateExample
//
//  Created by LarryZhang on 2021/5/14.
//  Copyright © 2021 Alejandro Isaza. All rights reserved.
//

#import "Demo4.h"

@implementation Demo4


- (NSNumber *)getId
{
    NSLog(@"Demo4 getId return 8");
    return @8;
}

- (int)getInt
{
    NSLog(@"Demo4 getInt return 8");
    return 8;
}

- (void)getNoReturn
{
    NSLog(@"Demo4 getNoReturn get no return ");
}

- (NSNumber *)getIdX
{
    NSLog(@"Demo4 getIdX return 8");
    return @8;
}

- (int)getIntX
{
    NSLog(@"Demo4 getIntX return 8");
    return 8;
}

- (void)getNoReturnX
{
    NSLog(@"Demo4 getNoReturnX get no return ");
}

@end
