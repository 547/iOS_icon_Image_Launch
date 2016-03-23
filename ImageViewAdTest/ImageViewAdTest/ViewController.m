//
//  ViewController.m
//  ImageViewAdTest
//
//  Created by mac on 16/3/23.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
/*
 图片适配需要美工切出多套图
 图片的适配程序是根据图片的名字后面的@xx来获取的
 1scale ==1.png
 2scale ==1@2x.png
 3scale ==1@3x.png
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%f",[UIScreen mainScreen].scale);
    
    
    UIImageView *ima=[[UIImageView alloc]initWithFrame:CGRectMake(100, 110, 80, 80)];
    [self.view addSubview:ima];
    //写图片名字的时候不要加上图片名中的@xx，只要写@之前的名就行了，系统会自己根据当前设备的屏幕缩放因子自己选择合适的图片，追加的缩放因子
    
    //可以结合着xcode提供的Assets.xcassets功能来读去当前图片集合的名字，而不是某一个图片的名字
    ima.image=[UIImage imageNamed:@"myImage"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
