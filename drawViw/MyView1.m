//
//  MyView1.m
//  drawViw
//
//  Created by huang wenfei on 15-12-11.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import "MyView1.h"

@implementation MyView1

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)drawRect:(CGRect)rect{
    
    CGContextRef con=UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(con, CGRectMake(0, 0, 100, 100));
    
    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
    
    CGContextFillPath(con);
    
    
    
}

@end
