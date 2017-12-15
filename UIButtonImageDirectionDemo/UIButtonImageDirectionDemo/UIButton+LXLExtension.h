//
//  UIButton+LXLExtension.h
//  UIButtonImageDirectionDemo
//
//  Created by 李小龙 on 2017/12/15.
//  Copyright © 2017年 李小龙. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LXLUIButtonImageHorizontalAlignment) {
    LXLUIButtonImageHorizontalAlignmentLeft, //默认图片在左边,横向居中对齐
    LXLUIButtonImageHorizontalAlignmentRight //图片在右边,横向居中对齐
};

typedef NS_ENUM(NSInteger, LXLUIButtonImageVerticalAlignment) {
    LXLUIButtonImageVerticalAlignmentUp, //图片在上，文字图片垂直方向居中对齐
    LXLUIButtonImageVerticalAlignmentDown //图片在下，文字图片垂直方向居中对齐
};

@interface UIButton (LXLExtension)

/**
 设置button横向方向image的对齐方式与文字的间距(使用前先设置contentHorizontalAlignment)

 @param imageDirection 图片横向方向
 @param interval 图片与文字间隔
 */
- (void)setImageHorizontalAlignment:(LXLUIButtonImageHorizontalAlignment)imageDirection interval:(CGFloat)interval;


/**
 设置button垂直方向image的对其方式与文字间距(使用前先设置contentVerticalAlignment)

 @param imageDirection 图片垂直方向
 @param interval 图片与文字间隔
 */
- (void)setImageVerticalAlignment:(LXLUIButtonImageVerticalAlignment)imageDirection interval:(CGFloat)interval;

@end
