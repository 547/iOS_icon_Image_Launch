//
//  ViewController.m
//  ScreenAdThreeTest
//
//  Created by mac on 16/3/23.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
@interface ViewController ()

@end

@implementation ViewController
{
    UIView *view;
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    [self initUI];
    [self foureTest];
}
-(void)initUI
{
    view=[[UIView alloc]init];
    [self.view addSubview:view];
    view.backgroundColor=[UIColor redColor];
    [self masonryTest];
}
-(void)masonryTest
{
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        //如果不参照物offset直接赋值
        make.left.offset(10);
        make.right.offset(-10);
        make.top.offset(20);
        make.height.offset(50);
    }];
    
    UIView *view2=[[UIView alloc]init];
    view2.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(@10);
        make.right.mas_equalTo(@-10);
        make.height.mas_equalTo(@50);
        //在VIew底部的基础上+20==就是以view为参照物
        make.top.equalTo(view.mas_bottom).offset(20);
    }];
    
}

-(void)selfTest
{
    UIView *leftView=[[UIView alloc]init];
    leftView.backgroundColor=[UIColor redColor];
    [self.view addSubview:leftView];
    UIView *moddleView=[[UIView alloc]init];
    moddleView.backgroundColor=[UIColor greenColor];
    [self.view addSubview:moddleView];
    UIView *rightView=[[UIView alloc]init];
    rightView.backgroundColor=[UIColor blueColor];
    [self.view addSubview:rightView];
    
    
    
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(@10);
        make.top.mas_equalTo(@50);
        make.width.mas_equalTo(@40);
        make.height.mas_equalTo(@40);
    }];
    
    [moddleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(leftView.mas_right).mas_equalTo(@20);
        make.right.equalTo(rightView.mas_left).mas_equalTo(@-20);
        make.top.mas_equalTo(@50);
        make.height.mas_equalTo(@40);
    }];
    
    [rightView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(@-10);
        make.top.mas_equalTo(@50);
        make.height.mas_equalTo(@40);
        make.width.mas_equalTo(@40);
    }];
}
-(void)foureTest
{
    for (int i=0; i<4; i++) {
        UIView *view1=[[UIView alloc]init];
        view1.backgroundColor=[UIColor colorWithRed:0.2 green:0.2 blue:0.5 alpha:0.5];
        [self.view addSubview:view1];
        [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
            if (i==0) {
            make.left.offset(20);
            }else if (i==3) {
            make.right.offset(-20);
            }else{
            make.left.offset(20+([UIScreen mainScreen].bounds.size.width-80)/4*i+20*i);
            }
            make.top.offset(100);
            make.height.offset(50);
            make.width.offset(([UIScreen mainScreen].bounds.size.width-100)/4);
        }];
    }
}
@end
