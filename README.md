# QBFlatButton
Flat-Style Button


## Installation
QBFlatButton can be installed with [CocoaPods](http://cocoapods.org/).

    pod 'QBFlatButton'

Or clone this repository and include `QBFlatButton.h` in your project manually.


## ScreenShot
![screenshot.png](http://gyazo.com/69abc2f3861c87fceabc92e2ca780fd8.png)


## Properties
### surfaceColor
A surface color of the button.

`@property (nonatomic, strong) UIColor *surfaceColor`

### sideColor
A side color of the button.

`@property (nonatomic, strong) UIColor *sideColor`

### borderColor
A border color of the button.

`@property (nonatomic, strong) UIColor *borderColor`

### cornerRadius
A corner radius of the button.

`@property (nonatomic, assign) CGFloat cornerRadius`

### height
A button height in normal state.

`@property (nonatomic, assign) CGFloat height`

### depth
A button depth when the button pushed down.

`@property (nonatomic, assign) CGFloat depth`

### borderWidth
A border width of the button.

`@property (nonatomic, assign) CGFloat borderWidth`


## Example
    QBFlatButton *button = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(90, 200, 140, 50);

    button.surfaceColor = [UIColor colorWithRed:0.333 green:0.631 blue:0.851 alpha:1.0];
    button.sideColor = [UIColor colorWithRed:0.310 green:0.498 blue:0.702 alpha:1.0];
    button.borderColor = [UIColor colorWithRed:0.310 green:0.498 blue:0.702 alpha:1.0];
    
    button.cornerRadius = 6.0;
    button.height = 4.0;
    button.depth = 3.0;
    
    button.titleLabel.font = [UIFont boldSystemFontOfSize:16.0];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"QBFlatButton" forState:UIControlStateNormal];
    
    [self.view addSubview:button];


## License
*QBFlatButton* is released under the **MIT License**, see *LICENSE.txt*.
