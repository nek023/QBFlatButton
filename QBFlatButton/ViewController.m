#import "ViewController.h"

#import "QBFlatButton.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    QBFlatButton *flatButton = [[QBFlatButton alloc] initWithFrame:CGRectMake(60, 140, 200, 60)];
    flatButton.faceColor = [UIColor colorWithRed:86.0/255.0 green:161.0/255.0 blue:217.0/255.0 alpha:1.0];
    flatButton.sideColor = [UIColor colorWithRed:79.0/255.0 green:127.0/255.0 blue:179.0/255.0 alpha:1.0];
    flatButton.radius = 8.0;
    flatButton.margin = 4.0;
    flatButton.depth = 3.0;
    
    flatButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [flatButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [flatButton setTitle:@"Button" forState:UIControlStateNormal];
    
    [self.view addSubview:flatButton];
    
    QBFlatButton *flatButton2 = [[QBFlatButton alloc] initWithFrame:CGRectMake(60, 280, 200, 60)];
    flatButton2.faceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    flatButton2.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    flatButton2.radius = 6.0;
    flatButton2.margin = 7.0;
    flatButton2.depth = 6.0;
    
    flatButton2.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [flatButton2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [flatButton2 setTitle:@"Button" forState:UIControlStateNormal];
    
    [self.view addSubview:flatButton2];
}

@end
