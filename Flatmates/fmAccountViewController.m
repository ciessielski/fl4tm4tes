//
//  fmAccountViewController.m
//  Flatmates
//
//  Created by Michał on 04.06.2013.
//  Copyright (c) 2013 Michał Ciesielski. All rights reserved.
//

#import "fmAccountViewController.h"

@interface fmAccountViewController ()

@end


@implementation fmAccountViewController
@synthesize tableBalanceView;
@synthesize squareBalanceView;
@synthesize switchButton;


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
    tableBalanceView.alpha = 0;
    squareBalanceView.alpha = 1;
    [switchButton setTitle:@"Settle" forState:UIControlStateNormal];
    
    
    
    
	// Do any additional setup after loading the view.
}
- (IBAction)switchBalanceViews:(id)sender

{
    if (tableBalanceView.alpha == 0 && squareBalanceView.alpha ==1)
    {
        tableBalanceView.alpha = 1;
        squareBalanceView.alpha = 0;
        [switchButton setTitle:@"Return" forState:UIControlStateNormal];
        
    }
    else
    {
        tableBalanceView.alpha = 0;
        squareBalanceView.alpha = 1;
        [switchButton setTitle:@"Settle" forState:UIControlStateNormal];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
