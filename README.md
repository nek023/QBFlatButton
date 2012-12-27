## Installation
`#import "QBFlatButton.h"` in your ViewController

## Properties
- `(UIColor *) faceColor` surface color of the button
- `(UIColor *) sideColor` side color of the button

- `(CGFloat) radius` corner radius of the button
- `(CGFloat) margin` button height in normal state
- `(CGFloat) depth` button depth when the button pushed down

## Example Usage
    QBFlatButton *btn = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(92, 200, 137, 48);

    btn.faceColor = [UIColor colorWithRed:0.333 green:0.631 blue:0.851 alpha:1.0];
    btn.sideColor = [UIColor colorWithRed:0.310 green:0.498 blue:0.702 alpha:1.0];
    
    btn.radius = 6.0;
    btn.margin = 4.0;
    btn.depth = 3.0;
    
    [self.view addSubview:btn];

See also *QBFlatButtonSample* in project.

## Credits
Copyright (c) 2012 questbeat