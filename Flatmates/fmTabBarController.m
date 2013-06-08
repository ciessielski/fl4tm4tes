//
//  fmTabBarController.m
//  Flatmates
//
//  Created by Jan Szynal on 08.06.2013.
//  Copyright (c) 2013 Michał Ciesielski. All rights reserved.
//

#import "fmTabBarController.h"

@interface fmTabBarController ()

@end

@implementation fmTabBarController

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
    UIImage *stat1 = [[UIImage alloc] init];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0.0, 0.0, stat1.size.width, stat1.size.height);
    [button setBackgroundImage:stat1 forState:UIControlStateNormal];
    [button setBackgroundImage:stat1 forState:UIControlStateHighlighted];
    
    CGFloat heightDifference = stat1.size.height - self.tabBar.frame.size.height;
    if (heightDifference < 0)
        button.center = self.tabBar.center;
    else
    {
        CGPoint center = self.tabBar.center;
        center.y = center.y - heightDifference/2.0;
        button.center = center;
    }
    
    [self.view addSubview:button];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
