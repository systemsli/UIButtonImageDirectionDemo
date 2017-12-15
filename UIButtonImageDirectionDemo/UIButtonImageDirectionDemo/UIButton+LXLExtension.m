//
//  UIButton+LXLExtension.m
//  UIButtonImageDirectionDemo
//
//  Created by 李小龙 on 2017/12/15.
//  Copyright © 2017年 李小龙. All rights reserved.
//

#import "UIButton+LXLExtension.h"

@implementation UIButton (LXLExtension)

- (void)setImageHorizontalAlignment:(LXLUIButtonImageHorizontalAlignment)imageDirection interval:(CGFloat)interval {

    CGSize titleSize = self.titleLabel.intrinsicContentSize;
    CGSize imageSize = self.imageView.image.size;
    CGFloat labelWidth = titleSize.width;
    CGFloat imageWidth = imageSize.width;
    CGRect frame = self.frame;
    CGFloat offset = interval/2;

    if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentCenter) {
        if (imageDirection == LXLUIButtonImageHorizontalAlignmentLeft) {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, interval/2, 0, -interval/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -interval/2, 0, interval/2);
        } else if (imageDirection == LXLUIButtonImageHorizontalAlignmentRight) {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + offset, 0, -(labelWidth + offset));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageWidth + offset), 0, imageWidth + offset);
        }
    } else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft) {
        if (imageDirection == LXLUIButtonImageHorizontalAlignmentLeft) {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, interval, 0, -interval);
        } else if (imageDirection == LXLUIButtonImageHorizontalAlignmentRight) {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + offset, 0, -(labelWidth + offset));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth, 0, imageWidth);
        }

    } else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight) {
        if (imageDirection == LXLUIButtonImageHorizontalAlignmentLeft) {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -interval, 0, interval);
        } else if (imageDirection == LXLUIButtonImageHorizontalAlignmentRight) {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth, 0, -labelWidth);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageWidth + interval), 0, imageWidth + interval);
        }

    }

    if(labelWidth + imageWidth + interval > frame.size.width) {
        frame.size.width = labelWidth + imageWidth + interval;
        self.frame = frame;
    }
}


- (void)setImageVerticalAlignment:(LXLUIButtonImageVerticalAlignment)imageDirection interval:(CGFloat)interval {

    CGSize titleSize = self.titleLabel.intrinsicContentSize;
    CGSize imageSize = self.imageView.image.size;
    CGFloat labelWidth = titleSize.width;
    CGFloat imageWidth = imageSize.width;
    CGFloat labelHeight = titleSize.height;
    CGFloat imageHeight = imageSize.height;
    CGRect frame = self.frame;
    CGFloat offset = interval/2;

    if (self.contentVerticalAlignment == UIControlContentVerticalAlignmentCenter) {
        if (imageDirection == LXLUIButtonImageVerticalAlignmentUp) {
            self.titleEdgeInsets = UIEdgeInsetsMake(imageHeight/2 + offset, -imageWidth/2, -(imageHeight/2 + offset), imageWidth/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(-(labelHeight/2 + offset), labelWidth/2, labelHeight/2 + offset, -labelWidth/2);
        } else if (imageDirection == LXLUIButtonImageVerticalAlignmentDown) {
            self.titleEdgeInsets = UIEdgeInsetsMake(- (imageHeight/2 + offset), -imageWidth/2, imageHeight/2 + offset, imageWidth/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(labelHeight/2 + offset, labelWidth/2, -(labelHeight/2 + offset), -labelWidth/2);
        }
    } else if (self.contentVerticalAlignment == UIControlContentVerticalAlignmentTop) {
        if (imageDirection == LXLUIButtonImageVerticalAlignmentUp) {
            self.titleEdgeInsets = UIEdgeInsetsMake(imageHeight + interval, -imageWidth/2, -(imageHeight + interval), imageWidth/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth/2, 0, -labelWidth/2);
        } else if (imageDirection == LXLUIButtonImageVerticalAlignmentDown) {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth/2, 0, imageWidth/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(labelHeight + interval, labelWidth/2,-(labelHeight + interval) , -labelWidth/2);
        }

    } else if (self.contentVerticalAlignment == UIControlContentVerticalAlignmentBottom) {
        if (imageDirection == LXLUIButtonImageVerticalAlignmentUp) {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth/2, 0, imageWidth/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(-(labelHeight + interval), labelWidth/2, labelHeight + interval, -labelWidth/2);
        } else if (imageDirection == LXLUIButtonImageVerticalAlignmentDown) {
            self.titleEdgeInsets = UIEdgeInsetsMake(-(imageHeight + interval), -imageWidth/2, imageHeight + interval, imageWidth/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth/2, 0, -labelWidth/2);
        }
    }

    if(labelHeight + imageHeight + interval > frame.size.height) {
        frame.size.height = labelHeight + imageHeight + interval;
        self.frame = frame;
    }
}


@end
