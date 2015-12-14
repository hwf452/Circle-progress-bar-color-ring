//
//  MyView6.h
//  drawViw
//
//  Created by huang wenfei on 15-12-13.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface MyView6 : UIView
{
    CAShapeLayer *_trackLayer;
    CAShapeLayer *_progressLayer;
    
    
    UIColor *_strokeColor;
}

-(void)setPercent:(CGFloat)percent animated:(BOOL)animated;

@end
