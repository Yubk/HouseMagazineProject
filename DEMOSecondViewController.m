//
//  DEMOSecondViewController.m
//  RESideMenuExample
//
//  Created by Roman Efimov on 10/10/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOSecondViewController.h"

@implementation DEMOSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = @"关于我们";
    //设置背景图
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView1.image = [UIImage imageNamed:@"AboutUsptc.JPG"];
    [self.view addSubview:imageView1];
    //设置导航背景
    UIImage *backImg2 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"NavBG" ofType:@"png"]];
    [self.navigationController.navigationBar setBackgroundImage:backImg2 forBarMetrics:UIBarMetricsDefault];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(showMenu)];
}

- (void)showMenu
{
    [self.sideMenuViewController presentMenuViewController];
}

@end
