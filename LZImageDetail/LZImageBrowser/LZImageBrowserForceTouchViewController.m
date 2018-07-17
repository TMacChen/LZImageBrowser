//
//  LZImageBrowserForceTouchViewController.m
//  LZImageDetail
//
//  Created by shenzhenshihua on 2018/7/17.
//  Copyright © 2018年 shenzhenshihua. All rights reserved.
//

#import "LZImageBrowserForceTouchViewController.h"
#import "LZImageBrowserHeader.h"
#import <UIImageView+WebCache.h>
@interface LZImageBrowserForceTouchViewController ()

@end

@implementation LZImageBrowserForceTouchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initView];
    // Do any additional setup after loading the view.
}

- (void)initView {
    CGFloat showImageViewW;
    CGFloat showImageViewH;
    CGFloat showImageW = self.showOriginForceImage.size.width;
    CGFloat showImageH = self.showOriginForceImage.size.height;
    if (showImageH/showImageW > Screen_Height/Screen_Width) {
        showImageViewH = Screen_Height;
        showImageViewW = Screen_Height * showImageW/showImageH;
    } else {
        showImageViewW = Screen_Width;
        showImageViewH = Screen_Width * showImageH/showImageW;
    }
    
    UIImageView * showImageView = [[UIImageView alloc] initWithFrame:CGRectMake(-1, -1, showImageViewW, showImageViewH)];
    [showImageView sd_setImageWithURL:[NSURL URLWithString:self.showForceImageUrl] placeholderImage:self.showOriginForceImage];
    showImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:showImageView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
