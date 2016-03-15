//
//  XHItem.h
//  XHItemScrollToolBar
//
//  Created by 曾 宪华 on 14-1-23.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import <Foundation/Foundation.h>

@class XHItemView;
typedef void(^XHItemSelectedBlcok)(XHItemView *itemView);

@interface XHItem : NSObject
@property (nonatomic, assign) NSInteger index;
@property (nonatomic, readonly) UIImage *selectedImage;
@property (nonatomic, readonly) UIImage *normalImage;
@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) XHItemSelectedBlcok itemSelectedCompled;

- (instancetype)initWithNormalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage title:(NSString *)title itemSelectedBlcok:(XHItemSelectedBlcok)itemSelectedCompled;

@end
