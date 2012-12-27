#import "QBFlatButton.h"

@implementation QBFlatButton

- (void)awakeFromNib
{
    [self addTarget:self action:@selector(moveTitleLabel) forControlEvents:UIControlEventTouchDown];
}

- (id)init
{
    self = [super init];
    
    if(self) {
        [self addTarget:self action:@selector(moveTitleLabel) forControlEvents:UIControlEventTouchDown];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self) {
        [self addTarget:self action:@selector(moveTitleLabel) forControlEvents:UIControlEventTouchDown];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if(self) {
        [self addTarget:self action:@selector(moveTitleLabel) forControlEvents:UIControlEventTouchDown];
    }
    
    return self;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    
    [self setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)value {
    [super setHighlighted:value];
    
    [self setNeedsDisplay];
}

- (void)setSelected:(BOOL)value {
    [super setSelected:value];
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGSize size = self.bounds.size;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGRect faceRect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(faceRect.size, NO, 0.0);
    [self.faceColor set];
    [self drawRoundedRect:faceRect radius:self.radius context:UIGraphicsGetCurrentContext()];
    UIImage *faceImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [self.sideColor set];
    CGRect sideRect = CGRectMake(0, size.height * 1.0 / 4.0, size.width, size.height * 3.0 / 4.0);
    [self drawRoundedRect:sideRect radius:self.radius context:context];
    
    CGRect faceShrinkedRect;
    if(self.state && (UIControlStateSelected || UIControlStateHighlighted)) {
        faceShrinkedRect = CGRectMake(0, self.depth, size.width, size.height - self.margin);
    } else {
        faceShrinkedRect = CGRectMake(0, 0, size.width, size.height - self.margin);
    }
    
    [faceImage drawInRect:faceShrinkedRect];
}


#pragma mark -

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

- (void)moveTitleLabel
{
    UILabel *titleLabel = self.titleLabel;
    CGRect frame = titleLabel.frame;
    
    frame.origin.y = frame.origin.y + self.depth;
    
    titleLabel.frame = frame;
}

@end
