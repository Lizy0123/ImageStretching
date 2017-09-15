//
//  ViewController.m
//  ImgStretching
//
//  Created by Lzy on 2017/9/15.
//  Copyright © 2017年 Lzy. All rights reserved.
//

#import "ViewController.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *origionalImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 20, 100, 100)];
    origionalImage.image = [UIImage imageNamed:@"0123456789"];
    [self.view addSubview:origionalImage];
    
    /*
     以图片原大小为基准设置不被拉伸的区域(适合边框部分不被拉伸的情况)
     @param capInsets 用来说明你要限制不被拉伸的区域，其包含四个参数，分别为图片中距离上、左、下、右边界的不拉伸部分的范围宽度
     @param resizingMode
     UIImageResizingModeStretch：拉伸模式，通过拉伸UIEdgeInsets指定的矩形区域来填充图片
     UIImageResizingModeTile：平铺模式，通过重复显示UIEdgeInsets指定的矩形区域来填充图片
     @return 返回处理过的图片
     
    - (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode;
     */
    UIImageView *stretchingImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, kScreenHeight - 300, 300, 150)];
    stretchingImg.image = [[UIImage imageNamed:@"0123456789"] resizableImageWithCapInsets:UIEdgeInsetsMake(20, 30, 20, 30) resizingMode:UIImageResizingModeStretch];
    [self.view addSubview:stretchingImg];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
