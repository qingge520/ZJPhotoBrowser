//
//  ViewController.m
//  KJBPhotoBrowser
//
//  Created by mac on 2019/4/12.
//  Copyright © 2019 呛水的鱼. All rights reserved.
//

#import "ViewController.h"

#import "HZPhotoBrowser.h"
#import <SDWebImageManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 289, 100, 17)];
    [btn setTitle:@"动我下试试" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)btnClick {
    HZPhotoBrowser *browser = [[HZPhotoBrowser alloc] init];
    browser.isFullWidthForLandScape = YES;
    browser.isNeedLandscape = YES;
    //    browser.currentImageIndex = 1;
    browser.imageArray = @[
                           @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555047051204&di=fb645abb79c424662f9bfa20927b1a22&imgtype=0&src=http%3A%2F%2Ff.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Fd788d43f8794a4c240e9466f0ef41bd5ac6e39af.jpg",
                           @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555047051204&di=c524204a6cccee088c1a58ba81d753fd&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F94o3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2Fadaf2edda3cc7cd965728ebd3b01213fb80e9173.jpg",
                           @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555047051203&di=c3b46ae169bad43c7b340bde3b5e0aae&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Ffaf2b2119313b07e8e5b7a240fd7912397dd8c33.jpg",
                           @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555047051202&di=b26feaae157e80b535b21d4d32f97074&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F-fo3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2Fe824b899a9014c08886825250a7b02087af4f4db.jpg",
                           @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555047051201&di=9e67c7e78922071285cd86f0f27a68bf&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F-vo3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2Fc995d143ad4bd1131ecafc3c58afa40f4bfb05bc.jpg",
                           @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555047202214&di=d688484c2560714e0b1403abfe376a7f&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F9fo3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2F9358d109b3de9c82db7956be6f81800a19d843e6.jpg",
                           @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555047225712&di=60f023529562efff00b6ce760d77a9aa&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F8b82b9014a90f603f4c7d7303912b31bb051ed56.jpg",
                           @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555047225711&di=caa9dcc75806d2267b0390572b4628c8&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F7Po3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2Ff7246b600c3387443c0e6880500fd9f9d62aa007.jpg"
                           ];
    
    [browser show];
}

- (void)clearCache {
    // 清除图片缓存
    [[SDWebImageManager sharedManager].imageCache clearMemory];
    [[SDWebImageManager sharedManager].imageCache clearDiskOnCompletion:^{
        
    }];
}

@end
