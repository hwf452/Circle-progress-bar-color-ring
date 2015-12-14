//
//  MyView6.m
//  drawViw
//
//  Created by huang wenfei on 15-12-13.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import "MyView6.h"

#define degreesToRadians(x) (M_PI*(x)/180.0)

#define PROGRESS_WIDTH 80

#define PROGRESS_LINE_WIDTH 15

#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]



@implementation MyView6

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        _strokeColor=[UIColor greenColor];//背景圆环的颜色
        
        _trackLayer=[CAShapeLayer layer];
        _trackLayer.frame=self.bounds;
        [self.layer addSublayer:_trackLayer];
        
        _trackLayer.fillColor=[UIColor clearColor].CGColor;
        _trackLayer.strokeColor=_strokeColor.CGColor;
        _trackLayer.opacity=0.25;//背景圆环的背景透明度
        _trackLayer.lineCap=kCALineCapRound;//这个参数主要是调整环型进度条边上是不圆角，主要有三个参数kCALineCapRound(圆角)，kCALineCapButt（直角），kCALineCapSquare（这个参数设了跟直角一样）
        _trackLayer.lineWidth=PROGRESS_LINE_WIDTH;
        
        
        //注意，这里改了，不像楼主写死 40,40这样在项目过程中便合理
        
        UIBezierPath *path=[UIBezierPath bezierPathWithArcCenter:CGPointMake(frame.size.width/2, frame.size.height/2) radius:PROGRESS_WIDTH startAngle:degreesToRadians(-210) endAngle:degreesToRadians(30) clockwise:YES];
        
        _trackLayer.path=[path CGPath];
        
        
        
        
        _progressLayer=[CAShapeLayer layer];
        _progressLayer.frame=self.bounds;
        _progressLayer.fillColor=[[UIColor clearColor] CGColor];
        _progressLayer.strokeColor=[UIColor redColor].CGColor;//这个一定不能用clearColor，然显示不出来
        _progressLayer.lineCap=kCALineCapRound;
        _progressLayer.lineWidth=PROGRESS_LINE_WIDTH;
        _progressLayer.path=[path CGPath];
        _progressLayer.strokeEnd=0.0;
        
        
        
        CALayer *gradientLayer=[CALayer layer];
        
        
        CAGradientLayer *gradientLayer1=[CAGradientLayer layer];
        
        gradientLayer1.frame=CGRectMake(0, 0, self.bounds.size.width/2,  self.bounds.size.height);
        [gradientLayer1 setColors:[NSArray arrayWithObjects:(id)[UIColor yellowColor].CGColor,(id)[UIColorFromRGB(0xff0000) CGColor], nil]];
        
        //注意，要把这行注释掉，不然进度条位置偏移 显示不出来
        
        //[gradientLayer1 setLocations:@[@0.5,@0.9,@1]];
        [gradientLayer1 setStartPoint:CGPointMake(0.5, 0.2)];//调整颜色比例主要是调这两个参数（0－1之间）
        [gradientLayer1 setEndPoint:CGPointMake(0.5, 0.5)];//调整颜色比例主要是调这两个参数（0－1之间）
        [gradientLayer addSublayer:gradientLayer1];
                
        CAGradientLayer *gradientLayer2=[CAGradientLayer layer];
        
        
        
        //如果只需要两种颜色渐变，把下边的gradientLayer2 相关代码去掉就行
        
        gradientLayer2.frame=CGRectMake(self.bounds.size.width/2, 0,self.bounds.size.width/2 , self.bounds.size.height);
        [gradientLayer2 setColors:[NSArray arrayWithObjects:(id)[UIColor yellowColor].CGColor,(id)[UIColor blueColor].CGColor, nil]];
        
        //注意，要把这行注释掉，不然进度条位置偏移 显示不出来
        
        //[gradientLayer2 setLocations:@[@0.1,@0.5,@1]];
        [gradientLayer2 setStartPoint:CGPointMake(0.5,0.2)];//调整颜色比例主要是调这两个参数（0－1之间）
        [gradientLayer2 setEndPoint:CGPointMake(0.5, 0.5)];//调整颜色比例主要是调这两个参数（0－1之间）
        
        [gradientLayer addSublayer:gradientLayer2];
        
        [gradientLayer setMask:_progressLayer];
        
        [self.layer addSublayer:gradientLayer];

        
        
        
        
    }
    return self;
}

//设置进度条的百分比 这里改成CGFloat更合理些 楼主用的NSInteger

-(void)setPercent:(CGFloat)percent animated:(BOOL)animated{
    
    
    [CATransaction begin];
    [CATransaction setDisableActions:!animated];
    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [CATransaction setAnimationDuration:1];
    _progressLayer.strokeEnd=percent/100.0;
    
    
    [CATransaction commit];
    
    
    
    
    
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
