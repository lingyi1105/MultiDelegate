//  Created by Alejandro Isaza on 13-03-18.
//  Copyright (c) 2013 Alejandro Isaza. All rights reserved.

#import "AIArrayTableViewDataSource.h"

@interface AIArrayTableViewDataSource ()<UITableViewDataSource>

@end

@implementation AIArrayTableViewDataSource

+ (instancetype)arrayDataSourceWithArray:(NSArray*)array {
    return [[AIArrayTableViewDataSource alloc] initWithArray:array];
}

- (id)initWithArray:(NSArray*)array {
    self = [super init];
    self.array = array;
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView {
    NSLog(@"%s", __FUNCTION__);
    return 1;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%s section:%ld", __FUNCTION__, (long)section);
    return [_array count];
}

- (id)itemAtIndex:(NSUInteger)index {
    NSLog(@"%s index:%lu", __FUNCTION__, (unsigned long)index);
    return [_array objectAtIndex:index];
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath {
    NSLog(@"%s indexSSPath:%@", __FUNCTION__, indexPath);
}
@end
