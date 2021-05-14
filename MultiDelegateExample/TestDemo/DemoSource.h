//
//  DemoSource.h
//  Demo
//
//  Created by Flame Grace on 2017/11/13.
//  Copyright © 2017年 com.flamegrace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AIMultiDelegate.h"

@protocol DemoSourceDelegate <NSObject>

@optional
- (NSNumber *)getId;
- (int)getInt;
- (void)getNoReturn;

@end

@protocol DemoSourceXDelegate <NSObject>

@optional
- (NSNumber *)getIdX;
- (int)getIntX;
- (void)getNoReturnX;

@end



@interface DemoSource : NSObject

@property (nonatomic, strong) AIMultiDelegate* multiDelegate;
@property (nonatomic, strong) AIMultiDelegate* multixDelegate;


@property (weak, nonatomic) id <DemoSourceDelegate> delegate;
@property (weak, nonatomic) id <DemoSourceXDelegate> xDelegate;

- (void)initMultiDelegate;

- (void)getId;
- (void)getInt;
- (void)getNoReturn;

@end
