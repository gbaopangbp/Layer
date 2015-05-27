//
//  ViewController.m
//  LayerChp1
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
    
    CALayer *bluelayer = [CALayer layer];
    bluelayer.frame = CGRectMake(50, 50, 100, 100);
    bluelayer.backgroundColor = [[UIColor blueColor] CGColor];
    
    [self.view.layer addSublayer:bluelayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
