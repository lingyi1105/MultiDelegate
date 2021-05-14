//
//  DemoSource.m
//  Demo
//
//  Created by Flame Grace on 2017/11/13.
//  Copyright © 2017年 com.flamegrace. All rights reserved.
//

#import "DemoSource.h"


@interface DemoSource ()

@end


@implementation DemoSource

- (void)initMultiDelegate {
    
    _multiDelegate = [[AIMultiDelegate alloc] init];
    self.delegate = (id)_multiDelegate;
    
    _multixDelegate = [[AIMultiDelegate alloc] init];
    self.xDelegate = (id)_multixDelegate;
}

- (void)getId
{
    if(self.delegate && [self.delegate respondsToSelector:@selector(getId)])
    {
        NSNumber *d = [self.delegate getId];
        NSLog(@"getId Real number is %@",d);
    }
    if(self.xDelegate && [self.xDelegate respondsToSelector:@selector(getIdX)])
    {
        NSNumber *d = [self.xDelegate getIdX];
        NSLog(@"getIdX Real number is %@",d);
    }
}

- (void)getInt
{
    if(self.delegate && [self.delegate respondsToSelector:@selector(getInt)])
    {
        int d = [self.delegate getInt];
        NSLog(@"getInt Real value is %d",d);
    }
    if(self.xDelegate && [self.xDelegate respondsToSelector:@selector(getIntX)])
    {
        int d = [self.xDelegate getIntX];
        NSLog(@"getIntX Real value is %d",d);
    }
}

- (void)getNoReturn
{
    if(self.delegate && [self.delegate respondsToSelector:@selector(getNoReturn)])
    {
        [self.delegate getNoReturn];
    }
    if(self.xDelegate && [self.xDelegate respondsToSelector:@selector(getNoReturnX)])
    {
        [self.xDelegate getNoReturnX];
    }
}

@end
