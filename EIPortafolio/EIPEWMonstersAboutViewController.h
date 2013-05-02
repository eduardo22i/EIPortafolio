//
//  EIPEWMonstersAboutViewController.h
//  EIPortafolio
//
//  Created by Eduardo Irias on 29/04/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EIPEWMonstersAboutViewController : UIViewController

@property (strong, nonatomic)  NSTimer *timer;

@property (weak, nonatomic) IBOutlet UIButton *relp;

@property (weak, nonatomic) IBOutlet UIImageView *help;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipegestureup;

- (IBAction)showUpFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer;
- (IBAction)changemonsters:(id)sender;
- (IBAction)openappstore:(id)sender;

@end
