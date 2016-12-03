//
//  MQVerCodeImageView.h
//  LMQProgram
//
//  Created by 林美齐 on 16/11/28.
//  Copyright © 2016年 林美齐. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^MQCodeImageBlock)(NSString *codeStr);
@interface MQVerCodeImageView : UIView

@property (nonatomic, strong) NSString *imageCodeStr;
@property (nonatomic, assign) BOOL isRotation;
@property (nonatomic, copy) MQCodeImageBlock bolck;

-(void)freshVerCode;

@end
