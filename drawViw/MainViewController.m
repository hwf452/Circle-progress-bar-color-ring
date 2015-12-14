//
//  MainViewController.m
//  drawViw
//
//  Created by huang wenfei on 15-12-11.
//  Copyright (c) 2015年 edao. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic,strong) CALayer *layer;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    

    
    
    MyView6 *my=[[MyView6 alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    
    [self.view addSubview:my];
    
    [my setPercent:90 animated:YES];

    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
