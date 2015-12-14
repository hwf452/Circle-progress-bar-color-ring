//
//  MyView4.m
//  drawViw
//
//  Created by huang wenfei on 15-12-12.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import "MyView4.h"

@implementation MyView4

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
    
//    CGContextMoveToPoint(ctx, 10, 10);
//    
//    
//    CGContextAddLineToPoint(ctx, 150, 150);
//    
//    CGContextAddLineToPoint(ctx, 250, 100);
//    //CGContextAddLineToPoint(ctx, 10, 100);
//    
//    CGContextClosePath(ctx);
//    
//    [[UIColor redColor] set];
//    
//    CGContextSetLineWidth(ctx, 5);
//    
//    CGContextSetLineJoin(ctx, kCGLineJoinBevel);
    
    
    
    
    
   // CGContextAddRect(ctx, CGRectMake(20, 20, 100, 100));
    
    
    CGContextStrokeRect(ctx, CGRectMake(30, 30, 150, 150));
    
    CGContextStrokePath(ctx);
    
    
    
    
    
}


@end
