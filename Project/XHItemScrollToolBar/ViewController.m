//
//  ViewController.m
//  XHItemScrollToolBar
//
//  Created by 曾 宪华 on 14-1-23.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "ViewController.h"
#import "XHItemScrollToolBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)_setupItemScrollToolBar {
    NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:5];
    XHItem *backToRootItem = [[XHItem alloc] initWithNormalImage:[UIImage imageNamed:@"tabBar-camera"] selectedImage:[UIImage imageNamed:@"tabBar-camera-on"] title:nil itemSelectedBlcok:^(XHItemView *itemView) {
        NSLog(@"index : %d", itemView.item.index);
    }];
    [items addObject:backToRootItem];
    
    XHItem *libraryItem = [[XHItem alloc] initWithNormalImage:[UIImage imageNamed:@"tabBar-camera"] selectedImage:[UIImage imageNamed:@"tabBar-camera-on"] title:nil itemSelectedBlcok:^(XHItemView *itemView) {
        NSLog(@"index : %d", itemView.item.index);
    }];
    [items addObject:libraryItem];
    
    XHItem *capturePhotoItem = [[XHItem alloc] initWithNormalImage:[UIImage imageNamed:@"tabBar-camera"] selectedImage:[UIImage imageNamed:@"tabBar-camera-on"] title:nil itemSelectedBlcok:^(XHItemView *itemView) {
        NSLog(@"index : %d", itemView.item.index);
    }];
    [items addObject:capturePhotoItem];
    
    XHItem *scenesItem = [[XHItem alloc] initWithNormalImage:[UIImage imageNamed:@"tabBar-camera"] selectedImage:[UIImage imageNamed:@"tabBar-camera-on"] title:nil itemSelectedBlcok:^(XHItemView *itemView) {
        NSInteger index = itemView.item.index;
        NSLog(@"index : %d", index);
    }];
    [items addObject:scenesItem];
    
    XHItem *filterItem = [[XHItem alloc] initWithNormalImage:[UIImage imageNamed:@"tabBar-camera"] selectedImage:[UIImage imageNamed:@"tabBar-camera-on"] title:@"title5" itemSelectedBlcok:^(XHItemView *itemView) {
        NSInteger index = itemView.item.index;
        NSLog(@"index : %d", index);
    }];
    [items addObject:filterItem];
    XHItemScrollToolBar *itemScrollToolBarToBottom = [[XHItemScrollToolBar alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) - kXHItemScrollToolBarHeight, CGRectGetWidth(self.view.bounds), kXHItemScrollToolBarHeight)];
    itemScrollToolBarToBottom.itemWidth = CGRectGetWidth([[UIScreen mainScreen] bounds]) / 5.0;
    itemScrollToolBarToBottom.items = items;
    itemScrollToolBarToBottom.selectIndex = 2;
    [self.view addSubview:itemScrollToolBarToBottom];
    [itemScrollToolBarToBottom reloadData];
    
    
    XHItemScrollToolBar *itemScrollToolBarToTop = [[XHItemScrollToolBar alloc]initWithFrame:CGRectMake(0, 20, CGRectGetWidth(self.view.bounds), kXHItemScrollToolBarHeight)];
    itemScrollToolBarToTop.itemWidth = CGRectGetWidth([[UIScreen mainScreen] bounds]) / 5.0;
    itemScrollToolBarToTop.items = items;
    itemScrollToolBarToTop.selectIndex = 0;
    [self.view addSubview:itemScrollToolBarToTop];
    [itemScrollToolBarToTop reloadData];
    
    
    for (int i = 0; i < 10; i ++) {
        XHItem *item = [[XHItem alloc] initWithNormalImage:[UIImage imageNamed:@"tabBar-camera"] selectedImage:[UIImage imageNamed:@"tabBar-camera-on"] title:@"title5" itemSelectedBlcok:^(XHItemView *itemView) {
            NSInteger index = itemView.item.index;
            NSLog(@"index : %d", index);
        }];
        [items addObject:item];
    }
    XHItemScrollToolBar *itemScrollToolBarToMid = [[XHItemScrollToolBar alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) / 2.0 - kXHItemScrollToolBarHeight / 2.0, CGRectGetWidth(self.view.bounds), kXHItemScrollToolBarHeight)];
    itemScrollToolBarToMid.itemWidth = CGRectGetWidth([[UIScreen mainScreen] bounds]) / 5.0;
    itemScrollToolBarToMid.items = items;
    itemScrollToolBarToMid.selectIndex = 2;
    [self.view addSubview:itemScrollToolBarToMid];
    [itemScrollToolBarToMid reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self _setupItemScrollToolBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
