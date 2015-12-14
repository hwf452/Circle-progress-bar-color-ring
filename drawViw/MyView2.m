//
//  MyView2.m
//  drawViw
//
//  Created by huang wenfei on 15-12-11.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import "MyView2.h"



@implementation MyView2



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
             
        self.backgroundColor=[UIColor clearColor];
        
        
        path =CGPathCreateMutable();
        
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    
    CGPoint p = [touch  locationInView:self];
    
    CGPathMoveToPoint(path, nil, p.x, p.y);
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    
    CGPoint p = [touch  locationInView:self];
    
    CGPathAddLineToPoint(path, nil, p.x, p.y);
    
    [self setNeedsDisplay];
    
}

-(void)drawRect:(CGRect)rect{
    
//    CGContextRef con=UIGraphicsGetCurrentContext();
//    // CGContextAddEllipseInRect(con, CGRectMake(10, 10, 100, 100));
//    CGContextSetRGBStrokeColor(con, 1, 0, 1, 1);
//    CGContextSetLineWidth(con, 3);
//    CGContextAddPath(con, path);
//    
//   // CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
//    
//    CGContextStrokePath(con);
    
    
    CGContextRef con=UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(con, CGRectMake(0, 0, 200, 200));
    
    CGContextSetFillColorWithColor(con, [UIColor redColor].CGColor);
    
    CGContextFillPath(con);
    
    CGContextAddEllipseInRect(con, CGRectMake(50, 50, 100,100));
    
    CGContextSetFillColorWithColor(con, [UIColor greenColor].CGColor);
    CGContextSetShouldAntialias(con, YES);
    CGContextFillPath(con);
    
}


@end
