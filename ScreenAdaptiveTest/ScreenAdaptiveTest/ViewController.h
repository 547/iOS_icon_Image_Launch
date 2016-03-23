//
//  ViewController.h
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
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

