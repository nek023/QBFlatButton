//
//  QBFlatButton.h
//  QBFlatButtonDemo
//
//  Created by Tanaka Katsuma on 2014/07/07.
//  Copyright (c) 2014年 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QBFlatButton : UIButton

@property (nonatomic, strong) UIColor *surfaceColor;
@property (nonatomic, strong) UIColor *sideColor;
@property (nonatomic, strong) UIColor *borderColor;

@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat depth;
@property (nonatomic, assign) CGFloat borderWidth;

- (void)setSurfaceColor:(UIColor *)faceColor forState:(UIControlState)state;
- (void)setSideColor:(UIColor *)sideColor forState:(UIControlState)state;
- (void)setBorderColor:(UIColor *)borderColor forState:(UIControlState)state;

- (UIColor *)surfaceColorForState:(UIControlState)state;
- (UIColor *)sideColorForState:(UIControlState)state;
- (UIColor *)borderColorForState:(UIControlState)state;

@end
