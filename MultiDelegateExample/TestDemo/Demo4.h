//
//  Demo4.h
//  MultiDelegateExample
//
//  Created by LarryZhang on 2021/5/14.
//  Copyright © 2021 Alejandro Isaza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoSource.h"

NS_ASSUME_NONNULL_BEGIN

@interface Demo4 : NSObject<DemoSourceDelegate, DemoSourceXDelegate>

@end

NS_ASSUME_NONNULL_END
