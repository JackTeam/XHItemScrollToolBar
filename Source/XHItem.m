//
//  XHItem.m
//  XHItemScrollToolBar
//
//  Created by 曾 宪华 on 14-1-23.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
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
