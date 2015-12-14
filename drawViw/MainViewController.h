//
//  MainViewController.h
//  drawViw
//
//  Created by huang wenfei on 15-12-11.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyView.h"
#import "MyView1.h"
#import "MyView2.h"
#import "MyView3.h"
#import "MyView4.h"
#import "MyView5.h"
#import "MyView6.h"

@interface MainViewController : UIViewController
{
    
    MyView5 *myview5;
}


@property (weak, nonatomic) IBOutlet UIImageView *img1;


@property (weak, nonatomic) IBOutlet UIImageView *img2;

@property (weak, nonatomic) IBOutlet UIView *sub;


@end
