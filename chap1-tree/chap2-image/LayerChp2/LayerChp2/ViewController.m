//
//  ViewController.m
//  LayerChp2
//
//  Created by tirostiros on 15/5/26.
//  Copyright (c) 2015年 cn.com.tiros. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *imagelayer = [CALayer layer];
    imagelayer.frame = CGRectMake(50, 50, 100, 100);
    imagelayer.backgroundColor = [[UIColor blackColor] CGColor];
    UIImage *snowImage = [UIImage imageNamed:@"snow"];
    imagelayer.contents = (__bridge id)[snowImage CGImage];
    [self.view.layer addSublayer:imagelayer];
    
    
    //1contentGravity,填充模式
    imagelayer.contentsGravity = kCAGravityCenter;
    //2图片伸缩，和屏幕分辨率有关
    imagelayer.contentsScale = [UIScreen mainScreen].scale;
    NSLog(@"scale:%f",imagelayer.contentsScale);
    //3剪掉外部
    imagelayer.masksToBounds = YES;
    
    //4只显示一个图片的一部分
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(50, 170, 100, 100)];
    leftView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:leftView];
    leftView.layer.contents = (__bridge id)[snowImage CGImage];
    //伸缩坐标系
    leftView.layer.contentsRect = CGRectMake(0, 0, 0.5, 0.5);
 
    
    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(170, 170, 100, 100)];
    [self.view addSubview:rightView];
    rightView.backgroundColor = [UIColor redColor];
    rightView.layer.contents = (__bridge id)[snowImage CGImage];
    rightView.layer.contentsRect = CGRectMake(0.5, 0.5, 0.5, 0.5);
    
    //5伸缩区域
    UIView *bottom = [[UIView alloc] initWithFrame:CGRectMake(00, 300, 100, 100)];
    bottom.backgroundColor = [UIColor grayColor];
    [self.view addSubview:bottom];
    bottom.layer.contents = (__bridge id)[snowImage CGImage];
    bottom.layer.contentsCenter = CGRectMake(0.25, 0.25, 0.5, 0.5);
    //6代理
    bottom.layer.delegate = self;
    [bottom.layer display];

    
    
    
}

//layer的代理
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    [[UIColor redColor] set];
    CGContextSetLineWidth(ctx, 5);
    CGContextStrokeEllipseInRect(ctx, layer.bounds);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
