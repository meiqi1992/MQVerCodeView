# MQVerCodeView

使用方法

1.直接在viewController中初始化添加

```
_codeImageView = [[MQVerCodeImageView alloc] initWithFrame:CGRectMake(100, 100, 80, 35)];
    _codeImageView.bolck = ^(NSString *imageCodeStr){
    //打印生成的验证码
      NSLog(@"imageCodeStr = %@",imageCodeStr);
    };
   //验证码字符是否可以斜着
    _codeImageView.isRotation = NO;
    [_codeImageView freshVerCode];
    [self.view addSubview: _codeImageView];}
```

2.点击验证码，重新获取验证码的方法
```
 [_codeImageView freshVerCode];
```
3.效果图：
