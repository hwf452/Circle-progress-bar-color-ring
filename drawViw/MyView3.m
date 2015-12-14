//
//  MyView3.m
//  drawViw
//
//  Created by huang wenfei on 15-12-12.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import "MyView3.h"

@implementation MyView3

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor=[UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(ctx, 50,50);
    CGContextAddLineToPoint(ctx, 200, 200);
    
    [[UIColor yellowColor] set];
    
    CGContextSetLineWidth(ctx, 10);
    
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    
    CGContextStrokePath(ctx);
    
    
    
    
    
}


@end
