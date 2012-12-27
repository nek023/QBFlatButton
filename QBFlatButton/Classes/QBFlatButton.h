#import <UIKit/UIKit.h>

@interface QBFlatButton : UIButton

@property (nonatomic, retain) UIColor *faceColor;
@property (nonatomic, retain) UIColor *sideColor;

@property (nonatomic, assign) CGFloat radius;
@property (nonatomic, assign) CGFloat margin;
@property (nonatomic, assign) CGFloat depth;

- (void)moveTitleLabel;
- (void)drawRoundedRect:(CGRect)rect radius:(CGFloat)radius context:(CGContextRef)context;

@end
