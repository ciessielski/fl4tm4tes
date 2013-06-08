//
//  fmAccountViewController.h
//  Flatmates
//
//  Created by Michał on 04.06.2013.
//  Copyright (c) 2013 Michał Ciesielski. All rights reserved.
//

#import <UIKit/UIKit.h>
//chsu
@interface fmAccountViewController : UIViewController   <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *switchButton;
@property (weak, nonatomic) IBOutlet UITableView *tableBalanceView;
@property (weak, nonatomic) IBOutlet UIScrollView *squareBalanceView;
@end
