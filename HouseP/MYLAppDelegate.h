//
//  MYLAppDelegate.h
//  HouseP
//
//  Created by Yubk on 13-11-22.
//  Copyright (c) 2013年 Yubk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"
@interface MYLAppDelegate : UIResponder <UIApplicationDelegate , RESideMenuDelegate>{
    UIImageView *zView;//Z图片ImageView
    UIImageView *fView;//F图片ImageView
    
    
    UIView *rView;//图片的UIView
}
@property (strong, nonatomic) UIWindow *window;

@end
