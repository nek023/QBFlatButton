#import "QBFlatButton.h"

@interface QBFlatButton ()

@property (nonatomic, retain) UIColor *faceColorNormal;
@property (nonatomic, retain) UIColor *faceColorHighlighted;
@property (nonatomic, retain) UIColor *faceColorSelected;
@property (nonatomic, retain) UIColor *faceColorDisabled;

@property (nonatomic, retain) UIColor *sideColorNormal;
@property (nonatomic, retain) UIColor *sideColorHighlighted;
@property (nonatomic, retain) UIColor *sideColorSelected;
@property (nonatomic, retain) UIColor *sideColorDisabled;

- (void)drawRoundedRect:(CGRect)rect radius:(CGFloat)radius context:(CGContextRef)context;

@end

@implementation QBFlatButton

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
    self.faceColorNormal = faceColor;
    self.faceColorHighlighted = faceColor;
    self.faceColorSelected = faceColor;
    self.faceColorDisabled = faceColor;
}

- (UIColor *)faceColor
{
    return [self faceColorForState:self.state];
}

- (void)setSideColor:(UIColor *)sideColor
{
    self.sideColorNormal = sideColor;
    self.sideColorHighlighted = sideColor;
    self.sideColorSelected = sideColor;
    self.sideColorDisabled = sideColor;
}

- (UIColor *)sideColor
{
    return [self sideColorForState:self.state];
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


#pragma mark -

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
