//
//  XHItemScrollToolBar.h
//  XHItemScrollToolBar
//
//  Created by 曾 宪华 on 14-1-23.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import <UIKit/UIKit.h>

#import "XHItemView.h"

#define kXHItemScrollToolBarHeight 44

@interface XHItemScrollToolBar : UIScrollView
@property (nonatomic, strong) NSArray *items; // dataSources
@property (nonatomic, assign) CGFloat itemWidth; // default is CGRectGetWidth([[UIScreen mainScreen] bounds]) / 5.0;
@property (nonatomic, assign) CGFloat itemPaddingX; // default is 0
@property (nonatomic, assign) CGFloat itemPaddingY; // default is 0
@property (nonatomic, assign) NSInteger selectIndex; // default is 0
@property (nonatomic, strong) UIImage *indicatorImage; // default is nil
@property (nonatomic, assign) NSInteger currentSelectIndex;
- (void)reloadData;

@end
