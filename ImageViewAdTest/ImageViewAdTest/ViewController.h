//
//  ViewController.h
//  ImageViewAdTest
//
//  Created by mac on 16/3/23.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
 图片适配需要美工切出多套图
 */
@interface ViewController : UIViewController
/*
 iOS App图标和启动画面尺寸

 注意：iOS所有图标的圆角效果由系统生成，给到的图标本身不能是圆角的。
 
 1. 桌面图标 (app icon)
 for iPhone6 plus(@3x) : 180 x 180
 for iPhone 6/5s/5/4s/4(@2x) : 120 x 120
 2. 系统搜索框图标 (Spotlight search results icon)
 for iPhone6 plus(@3x) : 120 x 120
 for iPhone6/5s/5/4s/4(@2x) : 80 x 80
 3. 系统设置图标 (Settings icon)
 for iPhone6 plus(@3x) : 87 x 87
 for iPhone6/5s/5/4s/4(@2x) : 58 x 58
 4. 启动图片 (launch image)
 for iPhoen5s/5(@2x) : 640 x 1136
 for iPhoen4s/4(@2x) : 640 x 960
 
 iPhone6/iPhone6 plus 建议使用 launch file 或 storyboard ；如果依然想使用图片，尺寸数值为：
 
 for iPhone 6(@2x) : 750 x 1334
 
 for iPhone 6 plus (@3x) : 1242 x 2208
 5. 另一种根据iOS系统的分类法
 Spotlight
 
 iOS 5,6
 
 base: 29pt, 需要 @1x, @2x, @3x，得出：29 x 29, 58 x 58, 87 x 87
 
 iOS 7,8
 
 base: 40pt, 需要 @2x, @3x，得出：80 x 80, 120 x 120
 
 iPhone App
 
 iOS 5,6
 
 base: 57pt，需要 @1x, @2x, 得出：57 x 57, 114 x 114
 
 iOS 7,8
 
 base: 60pt，需要 @2x, @3x，得出：120 x 120, 180 x 180
 
 Settings
 
 iOS 5,6,7,8
 
 base: 29pt，需要 @1x,@2x,@3x，得出：29 x 29, 58x58, 87x87
 
 6. 尺寸总结：
 图标尺寸输出列表：
 
 180x180
 120x120
 87x87
 80x80
 58x58
 57x57
 29x29
 启动图片尺寸输出列表：
 
 640x960
 640x1136
 750x1334
 1242x2208
 7. 参考文献
 Icon and Image Sizes
 
 Launch Images
 */

/*
 
 LaunchImage启动页（欢迎页）的配置
 iPhone Portrait iOS 8-Retina HD 5.5 （1242×2208） @3x
 iPhone Portrait iOS 8-Retina HD 4.7 （750×1334） @2x
 
 iPhone Portrait iOS 7,8-2x （640×960） @2x
 iPhone Portrait iOS 7,8-Retina 4 （640×1136） @2x
 
 iPhone Portrait iOS 5,6-1x （320×480） @1x
 iPhone Portrait iOS 5,6-2x （640×960） @2x
 iPhone Portrait iOS 5,6-Retina4 （640×1136） @2x
 
 iPad
 768 x 1024 pixels
 1536 x 2048 pixels (@2x)
 1024 x 768 pixels
 2048 x 1536 pixels (@2x)
 */

@end

