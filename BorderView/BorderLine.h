//
//  BorderLine.h
//  GTest
//
//  Created by PXJ on 17/3/4.
//  Copyright © 2017年 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BorderLine : UIView

/**
 * 自定义圆角边框
 * borderWidth  :边框宽度
 * borderColor  :边框颜色
 * redius       :圆角半径
 * leftBottom   :左下角是否圆角
 * leftTop      :左上。。。。
 * rightTop     :右上。。。。
 * rightBottom  :右下。。。。
 */
- (id)initWithFrame:(CGRect)frame
        borderColor:(UIColor *)borderColor
        borderWidth:(CGFloat)borderWidth
    setBorderRedius:(CGFloat)redius
         leftBottom:(BOOL)leftBottom
            leftTop:(BOOL)leftTop
           rightTop:(BOOL)rightTop
        rightBottom:(BOOL)rightBottom;
@end
