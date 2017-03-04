//
//  BorderLine.m
//  GTest
//
//  Created by PXJ on 17/3/4.
//  Copyright © 2017年 com. All rights reserved.
//
#define pi 3.14159265359
#define DEGREES_TO_RADIANS(degrees)  ((pi * degrees)/ 180)
#define fontText 12*ScreenWidth/375
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height


#import "BorderLine.h"

@implementation BorderLine
{
    CGFloat _selfWidth;
    CGFloat _selfHeight;
    CGFloat _borderWidth;
    CGFloat _redius;
    BOOL    _leftBottom;
    BOOL    _leftTop;
    BOOL    _rightTop;
    BOOL    _rightBottom;
    UIColor * _borderColor;
}

- (id)initWithFrame:(CGRect)frame
        borderColor:(UIColor *)borderColor
        borderWidth:(CGFloat)borderWidth
    setBorderRedius:(CGFloat)redius
         leftBottom:(BOOL)leftBottom
            leftTop:(BOOL)leftTop
           rightTop:(BOOL)rightTop
        rightBottom:(BOOL)rightBottom
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _selfWidth      = CGRectGetWidth(self.frame);
        _selfHeight     = CGRectGetHeight(self.frame);
        _borderWidth    = borderWidth;
        _redius         = redius;
        _leftBottom     = leftBottom;
        _leftTop        = leftTop;
        _rightTop       = rightTop;
        _rightBottom    = rightBottom;
        _borderColor    = borderColor;
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    UIColor *color = _borderColor;// color_backView;
    [color set];  //设置线条颜色

    UIBezierPath* aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = _borderWidth;
    aPath.lineCapStyle = kCGLineCapRound;  //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound;  //终点处理
    
    
    
    [aPath moveToPoint:CGPointMake(_borderWidth/2.0, _redius + _borderWidth/2.0)];

    if (_leftTop) {
        [aPath addArcWithCenter:CGPointMake(_redius + _borderWidth/2.0,
                                            _redius + _borderWidth/2.0)
                         radius:_redius
                     startAngle:DEGREES_TO_RADIANS(180)
                       endAngle:DEGREES_TO_RADIANS(270)
                      clockwise:YES];
    }else{
        [aPath addLineToPoint:CGPointMake(_borderWidth/2.0,
                                          _borderWidth/2.0)];
    }
    
    if (_rightTop) {
        [aPath addArcWithCenter:CGPointMake(_selfWidth - _redius - _borderWidth/2.0,
                                            _redius + _borderWidth/2.0)
                         radius:_redius
                     startAngle:DEGREES_TO_RADIANS(270)
                       endAngle:DEGREES_TO_RADIANS(360)
                      clockwise:YES];
    }else{
        [aPath addLineToPoint:CGPointMake(_selfWidth - _borderWidth/2.0,
                                          _borderWidth/2.0)];
    }
    
    
    if (_rightBottom) {
        [aPath addArcWithCenter:CGPointMake(_selfWidth - _redius - _borderWidth/2.0,
                                            _selfHeight-_redius - _borderWidth/2.0)
                         radius:_redius
                     startAngle:DEGREES_TO_RADIANS(0)
                       endAngle:DEGREES_TO_RADIANS(90)
                      clockwise:YES];
    }else{
    
        [aPath addLineToPoint:CGPointMake(_selfWidth-_borderWidth/2.0,
                                          _selfHeight-_borderWidth/2.0)];
    }
    
    if (_leftBottom) {
        [aPath addArcWithCenter:CGPointMake(_redius + _borderWidth/2.0,
                                            _selfHeight-_redius - _borderWidth/2.0)
                         radius:_redius
                     startAngle:DEGREES_TO_RADIANS(90)
                       endAngle:DEGREES_TO_RADIANS(180)
                      clockwise:YES];
    }else{
        [aPath addLineToPoint:CGPointMake(_borderWidth/2.0,
                                          _selfHeight - _borderWidth/2.0)];
    }
    [aPath closePath]; //第五条线通过调用closePath方法得到的
    [aPath stroke]; //Draws line 根据坐标点连线
}

@end
