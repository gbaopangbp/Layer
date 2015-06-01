//
//  ViewController.m
//  LayerChp4
//
//  Created by tirostiros on 15/6/1.
//  Copyright (c) 2015年 cn.com.tiros. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *leftView;
@property (weak, nonatomic) IBOutlet UIView *rightView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //1 圆角效果
//    self.leftView.layer.cornerRadius = 20;
//    self.rightView.layer.cornerRadius = 20;
//    
//    self.leftView.layer.masksToBounds = YES;
    
    //2 边框
//    self.leftView.layer.borderWidth = 5;
//    self.rightView.layer.borderWidth = 5;
//    
//    self.leftView.layer.masksToBounds = YES;
    
    //3 阴影
//    self.leftView.layer.shadowOffset = CGSizeMake(0, -5);
//    self.leftView.layer.shadowColor = [[UIColor blackColor] CGColor];
//    self.leftView.layer.shadowOpacity = 1.0;
    //4阴影裁剪 设置了裁剪后阴影实效
//    self.leftView.layer.masksToBounds = YES;
    
    // 5shadowpath
//    self.leftView.layer.shadowOpacity = 1.0;
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddRect(path, NULL, CGRectMake(0, 0, 200, 200));
//    self.leftView.layer.shadowPath = path;
//    CGPathRelease(path);
    
    //6蒙板
    //7拉伸
    //8组透明
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
