# QBFlatButton
QBFlatButton is a flat style button.


## Installation
QBFlatButton can be installed via [CocoaPods](http://cocoapods.org/).

    pod 'QBFlatButton'

Or simply download it and include `QBFlatButton.h` in your project manually.


## ScreenShot
![ss01.png](http://adotout.sakura.ne.jp/github/QBFlatButton/ss01.png)


## Properties
### faceColor
A surface color of the button.

`@property (nonatomic, retain) UIColor *faceColor`

### sideColor
A side color of the button.

`@property (nonatomic, retain) UIColor *sideColor`

### radius
A corner radius of the button.

`@property (nonatomic, assign) CGFloat radius`

### margin
A button height in normal state.

`@property (nonatomic, assign) CGFloat margin`

### depth
A button depth when the button pushed down.

`@property (nonatomic, assign) CGFloat depth`


## Example Usage
    QBFlatButton *btn = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(90, 200, 140, 50);

    btn.faceColor = [UIColor colorWithRed:0.333 green:0.631 blue:0.851 alpha:1.0];
    btn.sideColor = [UIColor colorWithRed:0.310 green:0.498 blue:0.702 alpha:1.0];
    
    btn.radius = 6.0;
    btn.margin = 4.0;
    btn.depth = 3.0;
    
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitle:@"Button" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];


## License
*QBFlatButton* is released under the **MIT License**, see *LICENSE.txt*.