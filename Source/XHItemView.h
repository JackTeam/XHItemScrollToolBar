//
//  XHItemView.h
//  XHItemScrollToolBar
//
//  Created by 曾 宪华 on 14-1-23.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "XHItem.h"

@interface XHItemView : UIButton
@property (nonatomic, readonly) XHItem *item;
- (instancetype)initWithFrame:(CGRect)frame item:(XHItem *)item;

@end
