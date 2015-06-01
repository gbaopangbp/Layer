//
//  ViewController.m
//  LayerChp3
//
//  Created by tirostiros on 15/5/27.
//  Copyright (c) 2015年 cn.com.tiros. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *buleLayer = [CALayer layer];
    buleLayer.frame = CGRectMake(30, 0, 10, 50);
    buleLayer.backgroundColor = [[UIColor blueColor] CGColor];
    [self.view.layer addSublayer:buleLayer];
    
    //1 anchorpoint的作用
    CALayer *redLayer = [CALayer layer];
    redLayer.frame = CGRectMake(100, 0, 10, 50);
    redLayer.backgroundColor = [[UIColor redColor] CGColor];
    redLayer.anchorPoint = CGPointMake(0, 0);
    [self.view.layer addSublayer:redLayer];
    
    //旋转点不一样
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.layer.backgroundColor = [[UIColor grayColor] CGColor];
    view.layer.anchorPoint = CGPointMake(0.0, 0);
//    view.transform = CGAffineTransformMakeRotation(M_2_PI/2.0);
    [self.view addSubview:view];
    
    //2 zpositon
    UIView *top = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 100, 100)];
    top.backgroundColor = [UIColor redColor];
    top.layer.zPosition = 1;
    [self.view addSubview:top];
    
    UIView *botton = [[UIView alloc] initWithFrame:CGRectMake(50, 200, 100, 100)];
    botton.backgroundColor = [UIColor greenColor];
    [self.view addSubview:botton];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
