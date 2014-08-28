//
//  QBFlatButton.h
//  QBFlatButtonDemo
//
//  Created by Tanaka Katsuma on 2014/07/07.
//  Copyright (c) 2014年 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QBFlatButton : UIButton

@property (nonatomic, strong) UIColor *faceColor;
@property (nonatomic, strong) UIColor *sideColor;
@property (nonatomic, strong) UIColor *borderColor;

@property (nonatomic, assign) CGFloat radius;
@property (nonatomic, assign) CGFloat margin;
@property (nonatomic, assign) CGFloat depth;
@property (nonatomic, assign) CGFloat borderWidth;

- (void)setFaceColor:(UIColor *)faceColor forState:(UIControlState)state;
- (void)setSideColor:(UIColor *)sideColor forState:(UIControlState)state;
- (void)setBorderColor:(UIColor *)borderColor forState:(UIControlState)state;

- (UIColor *)faceColorForState:(UIControlState)state;
- (UIColor *)sideColorForState:(UIControlState)state;
- (UIColor *)borderColorForState:(UIControlState)state;

@end
