#import "ViewController.h"

#import "QBFlatButton.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.75 alpha:1.0] forState:UIControlStateDisabled];
    [[QBFlatButton appearance] setSideColor:[UIColor colorWithWhite:0.55 alpha:1.0] forState:UIControlStateDisabled];
    
    
    QBFlatButton *btn = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(60, 180, 200, 60);
    btn.faceColor = [UIColor colorWithRed:86.0/255.0 green:161.0/255.0 blue:217.0/255.0 alpha:1.0];
    btn.sideColor = [UIColor colorWithRed:79.0/255.0 green:127.0/255.0 blue:179.0/255.0 alpha:1.0];
    btn.radius = 8.0;
    btn.margin = 4.0;
    btn.depth = 3.0;
    
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitle:@"Button" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
    
    QBFlatButton *btn2 = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(60, 280, 200, 60);
    btn2.faceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    btn2.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    btn2.radius = 6.0;
    btn2.margin = 7.0;
    btn2.depth = 6.0;
    
    btn2.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn2 setTitle:@"Button" forState:UIControlStateNormal];
    
    [self.view addSubview:btn2];
    
    
    QBFlatButton *btn3 = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(60, 380, 200, 60);
    btn3.radius = 8.0;
    btn3.margin = 4.0;
    btn3.depth = 3.0;
    
    btn3.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn3 setTitle:@"Disabled" forState:UIControlStateNormal];
    
    btn3.enabled = NO;
    
    [self.view addSubview:btn3];
}

@end
