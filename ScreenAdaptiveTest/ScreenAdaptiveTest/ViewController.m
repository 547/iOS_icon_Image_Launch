//
//  ViewController.m
//  ScreenAdaptiveTest
//
//  Created by mac on 16/3/23.
//  Copyright © 2016年 Seven. All rights reserved.
//


/*
 屏幕适配：是为了兼容性更强，增加用户量
 
 屏幕尺寸：屏幕对角线
 像素点：屏幕上的每一个发光点，如800万像素：
 逻辑坐标：开发中用到的坐标cgrect cgsize cgpoint
 缩放因子：指的是某一款设备对应的显示比例，可以通过UIScreen的scale来测试当前设备的缩放因子
 缩放因子：3GS 4 1倍 scale 320*480
 4s 5 5s 6 6s 2倍 scale
 plus         3倍 scale
 分辨率：缩放因子*逻辑坐标
 */
/*
 适配不能设置绝对坐标，而应该使用相对坐标
 利用当前UIscreen的bounds来计算对应的相对坐标
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    
    UIView *view;
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
  CGFloat scale =  [UIScreen mainScreen].scale;//获取缩放因子
    NSLog(@"%f",scale);

    
}
-(void)initUI
{
    view=[[UIView alloc]init];
    view.backgroundColor=[UIColor redColor];
    view.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:view];
    [self codeVFLTest];
}
/*
 适配方法：
 1.系统api提供（autolayout vfl语言）==代码适配
 2.storyboard==xib适配
 3.第三方库 Masonry 代码适配
 4.程序图片以及icon适配
 */
//如果使用AutoLayout的api为控件做适配的话，那么控件的一个适配属性要关闭
//AutoLayout和autoresizing原理一样，如果同时开启会有冲突

//适配的核心就是设置对应的约束条件

//代码约束
-(void)codeTest
{
        //NSLayoutConstraint约束，一个对应的NSLayoutConstraint负责控制当前控件的一个约束条件
    /*
     参数1：constraintWithItem当前约束的对象
     参数2：attribute约束的条件范围
     参数3：relatedBy约束的参照（读取的值）
     参数4：toItem参照物
     参数5：attribute参照物的哪一侧
     参数6：multiplier===一般为1.0
     参数7：constant约束的范围pt(在参照物左边的距离为负的，参照物的右边的距离为正的)==就是距离参照物空多少距离
     */
    //左边的约束
    NSLayoutConstraint *layourL=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:10];
     //右边的约束
    NSLayoutConstraint *layoutR=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:-10];
    //顶部的约束
    NSLayoutConstraint *layoutT=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:21];
    //自身的高度约束==不在添加参照物
    NSLayoutConstraint *layoutH=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:50];

    //添加约束==有参照物的约束加在参照物的Constraints上
    [self.view addConstraints:@[layourL,layoutR,layoutT]];
    //添加约束==没有参照物的约束加在自己的Constraints上
    [view addConstraint:layoutH];
    
    
}

-(void)codeVFLTest
{
    //1.创建约束需要用到的值
    NSDictionary *dic=@{@"left":@10,@"right":@10,@"top":@21,@"height":@50};
    //VFL
    /*
     @"H:|-left-[view]-right-|"==H/V表示横向或纵向布局
     |superview
     屏幕边缘-10-[view]-10- 屏幕边缘
     */
    NSString *stringH=@"H:|-left-[view]-right-|";
    NSString *stringV=@"V:|-top-[view(height)]|";
    //获取当前约束控件的信息
    NSDictionary *viewDic=NSDictionaryOfVariableBindings(view);
    
    /*
     参数1：VFL语句
     参数2：
     参数3：
     参数4：views装有控件信息的字典
     */
    //横向的约束
    NSArray *arrH=[NSLayoutConstraint constraintsWithVisualFormat:stringH options:NSLayoutFormatAlignAllLeft metrics:dic views:viewDic];
    //纵向向的约束
    NSArray *arrV=[NSLayoutConstraint constraintsWithVisualFormat:stringV options:NSLayoutFormatAlignAllTop metrics:dic views:viewDic];
    [self.view addConstraints:arrH];
    [self.view addConstraints:arrV];
}


















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
