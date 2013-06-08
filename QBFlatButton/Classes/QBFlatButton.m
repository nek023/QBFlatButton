/*
 Copyright (c) 2013 Katsuma Tanaka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "QBFlatButton.h"

@interface QBFlatButton ()

@property (nonatomic, strong) UIColor *faceColorNormal;
@property (nonatomic, strong) UIColor *faceColorHighlighted;
@property (nonatomic, strong) UIColor *faceColorSelected;
@property (nonatomic, strong) UIColor *faceColorDisabled;

@property (nonatomic, strong) UIColor *sideColorNormal;
@property (nonatomic, strong) UIColor *sideColorHighlighted;
@property (nonatomic, strong) UIColor *sideColorSelected;
@property (nonatomic, strong) UIColor *sideColorDisabled;

- (void)_QBFlatButton_init;
- (void)drawRoundedRect:(CGRect)rect radius:(CGFloat)radius context:(CGContextRef)context;

@end

@implementation QBFlatButton

- (void)_QBFlatButton_init
{
    self.faceColor = [UIColor colorWithRed:0.333 green:0.631 blue:0.851 alpha:1.0];
    self.sideColor = [UIColor colorWithRed:0.310 green:0.498 blue:0.702 alpha:1.0];
    
    self.radius = 6.0;
    self.margin = 4.0;
    self.depth = 3.0;
    
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        [self _QBFlatButton_init];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self _QBFlatButton_init];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)decoder
{
    self = [super initWithCoder:decoder];
    
    if (self) {
        [self _QBFlatButton_init];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGSize size = self.bounds.size;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGRect faceRect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(faceRect.size, NO, 0.0);
    
    [[self faceColorForState:self.state] set];
    
    [self drawRoundedRect:faceRect radius:self.radius context:UIGraphicsGetCurrentContext()];
    UIImage *faceImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [[self sideColorForState:self.state] set];
    
    CGRect sideRect = CGRectMake(0, size.height * 1.0 / 4.0, size.width, size.height * 3.0 / 4.0);
    [self drawRoundedRect:sideRect radius:self.radius context:context];
    
    CGRect faceShrinkedRect;
    if(self.state == UIControlStateSelected || self.state == UIControlStateHighlighted) {
        faceShrinkedRect = CGRectMake(0, self.depth, size.width, size.height - self.margin);
    } else {
        faceShrinkedRect = CGRectMake(0, 0, size.width, size.height - self.margin);
    }
    
    [faceImage drawInRect:faceShrinkedRect];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect frame = self.titleLabel.frame;
    frame.origin.y = frame.origin.y - self.margin / 2;
    
    CGRect imageViewFrame = self.imageView.frame;
    imageViewFrame.origin.y = imageViewFrame.origin.y - self.margin / 2;
    
    if(self.state == UIControlStateSelected || self.state == UIControlStateHighlighted) {
        frame.origin.y = frame.origin.y + self.depth;
        imageViewFrame.origin.y = imageViewFrame.origin.y + self.depth;
    }
    
    self.titleLabel.frame = frame;
    self.imageView.frame = imageViewFrame;
}


#pragma mark - Accessors

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    
    [self setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)value
{
    [super setHighlighted:value];
    
    [self setNeedsDisplay];
}

- (void)setSelected:(BOOL)value
{
    [super setSelected:value];
    
    [self setNeedsDisplay];
}

- (void)setEnabled:(BOOL)enabled
{
    [super setEnabled:enabled];
    
    [self setNeedsDisplay];
}

- (void)setFaceColor:(UIColor *)faceColor
{
    [self setFaceColor:faceColor forState:UIControlStateNormal];
    [self setFaceColor:faceColor forState:UIControlStateHighlighted];
    [self setFaceColor:faceColor forState:UIControlStateSelected];
    [self setFaceColor:faceColor forState:UIControlStateDisabled];
}

- (UIColor *)faceColor
{
    return [self faceColorForState:self.state];
}

- (void)setSideColor:(UIColor *)sideColor
{
    [self setSideColor:sideColor forState:UIControlStateNormal];
    [self setSideColor:sideColor forState:UIControlStateHighlighted];
    [self setSideColor:sideColor forState:UIControlStateSelected];
    [self setSideColor:sideColor forState:UIControlStateDisabled];
}

- (UIColor *)sideColor
{
    return [self sideColorForState:self.state];
}


#pragma mark - Configuring the Button Colors

- (void)setFaceColor:(UIColor *)faceColor forState:(UIControlState)state
{
    switch(state) {
        case UIControlStateNormal: default:
            self.faceColorNormal = faceColor;
            break;
        case UIControlStateHighlighted:
            self.faceColorHighlighted = faceColor;
            break;
        case UIControlStateSelected:
            self.faceColorSelected = faceColor;
            break;
        case UIControlStateDisabled:
            self.faceColorDisabled = faceColor;
            break;
    }
}

- (void)setSideColor:(UIColor *)sideColor forState:(UIControlState)state
{
    switch(state) {
        case UIControlStateNormal: default:
            self.sideColorNormal = sideColor;
            break;
        case UIControlStateHighlighted:
            self.sideColorHighlighted = sideColor;
            break;
        case UIControlStateSelected:
            self.sideColorSelected = sideColor;
            break;
        case UIControlStateDisabled:
            self.sideColorDisabled = sideColor;
            break;
    }
}

- (UIColor *)faceColorForState:(UIControlState)state
{
    UIColor *faceColor;
    
    switch(state) {
        case UIControlStateNormal: default:
            faceColor = self.faceColorNormal;
            break;
        case UIControlStateHighlighted:
            faceColor = self.faceColorHighlighted;
            break;
        case UIControlStateSelected:
            faceColor = self.faceColorSelected;
            break;
        case UIControlStateDisabled:
            faceColor = self.faceColorDisabled;
            break;
    }
    
    return faceColor;
}

- (UIColor *)sideColorForState:(UIControlState)state
{
    UIColor *sideColor;
    
    switch(state) {
        case UIControlStateNormal: default:
            sideColor = self.sideColorNormal;
            break;
        case UIControlStateHighlighted:
            sideColor = self.sideColorHighlighted;
            break;
        case UIControlStateSelected:
            sideColor = self.sideColorSelected;
            break;
        case UIControlStateDisabled:
            sideColor = self.sideColorDisabled;
            break;
    }
    
    return sideColor;
}

- (void)drawRoundedRect:(CGRect)rect radius:(CGFloat)radius context:(CGContextRef)context
{	
    rect.origin.x += 0.5;
    rect.origin.y += 0.5;
    rect.size.width -= 1.0;
    rect.size.height -= 1.0;
    
    CGFloat lx = CGRectGetMinX(rect);
    CGFloat cx = CGRectGetMidX(rect);
    CGFloat rx = CGRectGetMaxX(rect);
    CGFloat by = CGRectGetMinY(rect);
    CGFloat cy = CGRectGetMidY(rect);
    CGFloat ty = CGRectGetMaxY(rect);
	
    CGContextMoveToPoint(context, lx, cy);
    CGContextAddArcToPoint(context, lx, by, cx, by, radius);
    CGContextAddArcToPoint(context, rx, by, rx, cy, radius);
    CGContextAddArcToPoint(context, rx, ty, cx, ty, radius);
    CGContextAddArcToPoint(context, lx, ty, lx, cy, radius);
    CGContextClosePath(context);
    
    CGContextDrawPath(context, kCGPathFillStroke);
}

@end
