#import <UIKit/UIKit.h>

@interface QBFlatButton : UIButton <UIAppearance, UIAppearanceContainer>

@property (nonatomic, retain) UIColor *faceColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, retain) UIColor *sideColor UI_APPEARANCE_SELECTOR;

@property (nonatomic, assign) CGFloat radius UI_APPEARANCE_SELECTOR;
@property (nonatomic, assign) CGFloat margin UI_APPEARANCE_SELECTOR;
@property (nonatomic, assign) CGFloat depth UI_APPEARANCE_SELECTOR;

- (void)setFaceColor:(UIColor *)faceColor forState:(UIControlState)state UI_APPEARANCE_SELECTOR;
- (void)setSideColor:(UIColor *)sideColor forState:(UIControlState)state UI_APPEARANCE_SELECTOR;

- (UIColor *)faceColorForState:(UIControlState)state UI_APPEARANCE_SELECTOR;
- (UIColor *)sideColorForState:(UIControlState)state UI_APPEARANCE_SELECTOR;

@end
