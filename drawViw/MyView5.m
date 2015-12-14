//
//  MyView5.m
//  drawViw
//
//  Created by huang wenfei on 15-12-12.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import "MyView5.h"

@implementation MyView5

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.progressLayer=[CALayer layer];
        self.progressLayer.frame=CGRectMake(0, 0, 0, frame.size.height);
        [self.layer addSublayer:self.progressLayer];
        self.currentViewLeng=frame.size.width;
        self.progressLayer.backgroundColor=[UIColor greenColor].CGColor;
        
    }
    return self;
}

@synthesize progressLayer=_progressLayer;
@synthesize layerColor=_layerColor;

-(void)setProgress:(CGFloat)progress{
    _progress=progress;
    
    if (progress<=0) {
        self.progressLayer.frame=CGRectMake(0, 0, 0, self.frame.size.height);
    }else if(progress<=1){
        self.progressLayer.frame=CGRectMake(0, 0, self.currentViewLeng*progress, self.frame.size.height);
    }else{
        self.progressLayer.frame=CGRectMake(0, 0, self.currentViewLeng, self.frame.size.height);
    }
    
    
}

-(CGFloat)getProgress{
    return _progress;
}

-(void)setLayerColor:(UIColor *)layerColor{
    
    _layerColor=layerColor;
    self.progressLayer.backgroundColor=layerColor.CGColor;
    
    
    
}

- (UIColor *)layerColor{
    
    
    return _layerColor;
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect
//{
//    
//    
//    
//    
//    
//    
//    
//    
//}


@end
