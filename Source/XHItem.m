//
//  XHItem.m
//  XHItemScrollToolBar
//
//  Created by 曾 宪华 on 14-1-23.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "XHItem.h"
@interface XHItem ()
@property (nonatomic, readwrite) UIImage *selectedImage;
@property (nonatomic, readwrite) UIImage *normalImage;
@property (nonatomic, readwrite) NSString *title;
@property (nonatomic, readwrite) XHItemSelectedBlcok itemSelectedCompled;

@end

@implementation XHItem
- (instancetype)initWithNormalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage title:(NSString *)title itemSelectedBlcok:(XHItemSelectedBlcok)itemSelectedCompled {
    self = [super init];
    if (self ) {
        self.normalImage = normalImage;
        self.selectedImage = selectedImage;
        self.title = title;
        self.itemSelectedCompled = itemSelectedCompled;
    }
    return self;
}

- (void)dealloc {
    self.selectedImage = nil;
    self.normalImage = nil;
    self.title = nil;
    self.itemSelectedCompled = nil;
}

@end
