//
//  DEMOThirdViewController.m
//  HouseP
//
//  Created by Yubk on 13-11-22.
//  Copyright (c) 2013年 Yubk. All rights reserved.
//

#import "DEMOThirdViewController.h"
@interface DEMOThirdViewController ()
@end

@implementation DEMOThirdViewController
@synthesize feedbackimput;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"意见反馈";
    UIImage *backImg2 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"NavBG" ofType:@"png"]];
    [self.navigationController.navigationBar setBackgroundImage:backImg2 forBarMetrics:UIBarMetricsDefault];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(showMenu)];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView2.image = [UIImage imageNamed:@"FeedBackBG.JPG"];
    
    feedbackimput = [[GCPlaceholderTextView alloc] initWithFrame:CGRectMake(40.0f, 106.0f, 240.0f, 100.0f)];
    feedbackimput.backgroundColor = [UIColor brownColor];
    feedbackimput.placeholder = @"请输入反馈信息....";
    [feedbackimput setKeyboardType:UIKeyboardTypeDefault];
    
    
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    aButton.frame = CGRectMake(120, 250, 76, 44);
    aButton.titleLabel.font = [UIFont fontWithName:@"Arial" size:20];
    aButton.backgroundColor = [UIColor brownColor];
    [aButton setTitle:@"提交" forState:UIControlStateNormal];
    [aButton addTarget:self action:@selector(hideKeyboard:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imageView2];
    [self.view addSubview:feedbackimput];
    [self.view addSubview:aButton];
    
}
- (void)hideKeyboard:(id)sender
{
    [self.feedbackimput resignFirstResponder];
}


- (void)showMenu
{
    [self.sideMenuViewController presentMenuViewController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
