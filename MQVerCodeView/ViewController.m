//
//  ViewController.m
//  MQVerCodeView
//
//  Created by 林美齐 on 16/12/2.
//  Copyright © 2016年 林美齐. All rights reserved.
//

#import "ViewController.h"
#import "MQVerCodeImageView.h"

@interface ViewController ()
@property (nonatomic, strong) MQVerCodeImageView *codeImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _codeImageView = [[MQVerCodeImageView alloc] initWithFrame:CGRectMake(100, 100, 80, 35)];
    _codeImageView.bolck = ^(NSString *imageCodeStr){//看情况是否需要
        NSLog(@"imageCodeStr = %@",imageCodeStr);
    };
    _codeImageView.isRotation = NO;
    [_codeImageView freshVerCode];
    
    //点击刷新
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
    [_codeImageView addGestureRecognizer:tap];
    [self.view addSubview: _codeImageView];}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tapClick:(UITapGestureRecognizer*)tap
{
    [_codeImageView freshVerCode];
}


@end
