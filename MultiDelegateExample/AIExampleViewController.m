//  Created by Alejandro Isaza on 13-03-18.
//  Copyright (c) 2013 Alejandro Isaza. All rights reserved.

#import "AIExampleViewController.h"

//#import "AIArrayTableViewDataSource.h"
#import "AIMultiDelegate.h"

#import "DemoSource.h"
#import "Demo1.h"
#import "Demo2.h"
#import "Demo3.h"
#import "Demo4.h"

#define REUSE_IDENTIFIER @"Cell"

@interface AIExampleViewController ()<UITableViewDataSource>
@property (strong, nonatomic) DemoSource *source;
@property (strong, nonatomic) Demo1 *demo1;
@property (strong, nonatomic) Demo2 *demo2;
@property (strong, nonatomic) Demo3 *demo3;
@property (strong, nonatomic) Demo4 *demo4;

@end


@implementation AIExampleViewController {
    AIMultiDelegate* _multiDelegate;
//    AIArrayTableViewDataSource* _dataSource;
}

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (!self)
        return nil;
    
    
    
    _array = @[@"[DemoSource getId]", @"[DemoSource getInt]", @"[DemoSource getNoReturn]"];
//    _multiDelegate = [[AIMultiDelegate alloc] init];
//    [_multiDelegate addDelegate:self];
//
//    _dataSource = [[AIArrayTableViewDataSource alloc] init];
//    _dataSource.array = @[ @"Object 1", @"Object 2", @"Object 3" ];
//    [_multiDelegate addDelegate:_dataSource];
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:REUSE_IDENTIFIER];
    
    // Multiplex the data source to split the implementation between
    // the data source and and the view controller
    self.tableView.dataSource = self;
    
    
    self.source = [[DemoSource alloc]init];
    
    self.demo1 = [[Demo1 alloc]init];
    self.demo2 = [[Demo2 alloc]init];
    self.demo3 = [[Demo3 alloc]init];
    self.demo4 = [[Demo4 alloc]init];
    
    
    
    self.source.delegate = self.demo4;
    self.source.xDelegate = self.demo4;
    
    
    [self.source initMultiDelegate];

    [self.source.multiDelegate addDelegate:self.demo3];
    [self.source.multiDelegate addDelegate:self.demo2];
    [self.source.multiDelegate addDelegate:self.demo1];

    [self.source.multixDelegate addDelegate:self.demo2];
    [self.source.multixDelegate addDelegate:self.demo1];
    [self.source.multixDelegate addDelegate:self.demo3];

}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView {
//    NSLog(@"%s", __FUNCTION__);
    return 1;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
//    NSLog(@"%s section:%ld", __FUNCTION__, (long)section);
    return [_array count];
}

- (id)itemAtIndex:(NSUInteger)index {
//    NSLog(@"%s index:%lu", __FUNCTION__, (unsigned long)index);
    return [_array objectAtIndex:index];
}

- (UITableViewCell *)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath {
//    NSLog(@"%s indexPath:%@", __FUNCTION__, indexPath);
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:REUSE_IDENTIFIER forIndexPath:indexPath];
//    cell.textLabel.text = [_dataSource itemAtIndex:indexPath.row];
    cell.textLabel.text = [self itemAtIndex:indexPath.row];
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath {
//    NSLog(@"%s indexPath:%@", __FUNCTION__, indexPath);
    if (indexPath.row == 0) {
        
        [self.source getId];
    } else if (indexPath.row == 1) {
        [self.source getInt];
    } else if (indexPath.row == 2) {
        
        [self.source getNoReturn];
    }
}

@end
