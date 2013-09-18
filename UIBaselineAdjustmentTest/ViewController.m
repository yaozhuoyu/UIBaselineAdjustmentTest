//
//  ViewController.m
//  UIBaselineAdjustmentTest
//
//  Created by yaozhuoyu on 13-9-18.
//  Copyright (c) 2013年 yaozhuoyu. All rights reserved.
//

#import "ViewController.h"
#import "UIBaselineAdjustmentDrawView.h"

@interface ViewController (){
    UIBaselineAdjustmentDrawView *drawView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    drawView = [[UIBaselineAdjustmentDrawView alloc] initWithFrame:self.view.bounds];
    drawView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:drawView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
