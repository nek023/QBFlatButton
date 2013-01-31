# QBFlatButton
QBFlatButton is a flat style button.


## Installation
`#import "QBFlatButton.h"` in your ViewController


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
 Copyright (c) 2013 Katsuma Tanaka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
