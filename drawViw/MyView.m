//
//  MyView.m
//  drawViw
//
//  Created by huang wenfei on 15-12-11.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor=[UIColor clearColor];
         layer=[CAGradientLayer layer];
        
        layer.colors=@[(id)[UIColor greenColor].CGColor,(id)[UIColor blueColor].CGColor,(id)[UIColor redColor].CGColor,(id)[UIColor greenColor].CGColor];
        
        layer.startPoint=CGPointMake(0, 0);
        layer.endPoint=CGPointMake(1, 1);
        layer.locations=@[@0.0,@0.2,@0.4,@0.6,@0.8];
        
        layer_d = [CALayer layer];
        [layer_d insertSublayer:layer atIndex:0];
        
        
    }
    return self;
}

-(void)drawRect:(CGRect)rect{
    
    
    
    UIBezierPath *p=[UIBezierPath bezierPathWithOvalInRect:rect];
//    
//    [[UIColor redColor] setFill];
//    
    [p fill];
    
    layer.frame=rect;
    
    
//    UIBezierPath *_apath = [UIBezierPath bezierPath];
//    
//    [_apath addArcWithCenter:CGPointMake(100, 100) radius:100 startAngle:M_PI/2 endAngle:M_PI*2 clockwise:YES];
//    
//
//    
//    
//    
//    layer.frame=CGRectMake(0, 0, 100, 100);
    
    [self.layer addSublayer:layer_d];
    
    
    
    
}

@end
