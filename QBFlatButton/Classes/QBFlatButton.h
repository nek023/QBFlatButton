#import <UIKit/UIKit.h>

@interface QBFlatButton : UIButton

@property (nonatomic, retain) UIColor *faceColor;
@property (nonatomic, retain) UIColor *sideColor;

@property (nonatomic, assign) CGFloat radius;
@property (nonatomic, assign) CGFloat margin;
@property (nonatomic, assign) CGFloat depth;

- (void)setFaceColor:(UIColor *)faceColor forState:(UIControlState)state;
- (void)setSideColor:(UIColor *)sideColor forState:(UIControlState)state;

- (UIColor *)faceColorForState:(UIControlState)state;
- (UIColor *)sideColorForState:(UIControlState)state;

@end
