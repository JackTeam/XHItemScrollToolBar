//
//  XHItemView.m
//  XHItemScrollToolBar
//
//  Created by 曾 宪华 on 14-1-23.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "XHItemView.h"

@interface XHItemView ()
@property (nonatomic, strong) XHItem *item;
@end

@implementation XHItemView

- (instancetype)initWithFrame:(CGRect)frame item:(XHItem *)item {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.item = item;
        if (item.normalImage)
            [self setImage:item.normalImage forState:UIControlStateNormal];
        if (item.selectedImage)
            [self setImage:item.selectedImage forState:UIControlStateSelected];
        if (item.title)
            [self setTitle:item.title forState:UIControlStateNormal];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
