//
//  ViewController.m
//  QBFlatButtonDemo
//
//  Created by Tanaka Katsuma on 2014/07/07.
//  Copyright (c) 2014年 Katsuma Tanaka. All rights reserved.
//

#import "ViewController.h"

// QBFlatButton
#import "QBFlatButton.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Button 1
    QBFlatButton *button1 = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(60, 164 - 20 - 40, 200, 60);
    button1.surfaceColor = [UIColor colorWithRed:86.0/255.0 green:161.0/255.0 blue:217.0/255.0 alpha:1.0];
    button1.sideColor = [UIColor colorWithRed:79.0/255.0 green:127.0/255.0 blue:179.0/255.0 alpha:1.0];
    button1.cornerRadius = 8.0;
    button1.height = 4.0;
    button1.depth = 3.0;
    
    button1.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button1 setTitle:@"QBFlatButton" forState:UIControlStateNormal];
    
    [self.view addSubview:button1];
    
    // Button 2
    QBFlatButton *button2 = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(60, 224 - 20, 200, 60);
    button2.surfaceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    button2.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    button2.cornerRadius = 6.0;
    button2.height = 7.0;
    button2.depth = 6.0;
    
    button2.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button2 setTitle:@"QBFlatButton" forState:UIControlStateNormal];
    
    [self.view addSubview:button2];
    
    // Button 3
    QBFlatButton *button3 = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(60, 284 + 20, 200, 60);
    button3.surfaceColor = [UIColor colorWithRed:86.0/255.0 green:161.0/255.0 blue:217.0/255.0 alpha:1.0];
    button3.sideColor = [UIColor colorWithRed:79.0/255.0 green:127.0/255.0 blue:179.0/255.0 alpha:1.0];
    button3.borderColor = [UIColor colorWithRed:79.0/255.0 green:127.0/255.0 blue:179.0/255.0 alpha:1.0];
    button3.cornerRadius = 8.0;
    button3.height = 4.0;
    button3.depth = 4.0;
    button3.borderWidth = 2.0;
    
    button3.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button3 setTitle:@"QBFlatButton" forState:UIControlStateNormal];
    
    [self.view addSubview:button3];
    
    // Button 4
    QBFlatButton *button4 = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake(60, 344 + 20 + 40, 200, 60);
    button4.surfaceColor = [UIColor colorWithWhite:0.75 alpha:1.0];
    button4.sideColor = [UIColor colorWithWhite:0.55 alpha:1.0];
    button4.cornerRadius = 8.0;
    button4.height = 4.0;
    button4.depth = 3.0;
    
    button4.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [button4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button4 setTitle:@"QBFlatButton" forState:UIControlStateNormal];
    
    button4.enabled = NO;
    
    [self.view addSubview:button4];
}

@end
