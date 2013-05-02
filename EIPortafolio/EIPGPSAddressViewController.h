//
//  EIPGPSAddressViewController.h
//  EIPortafolio
//
//  Created by Eduardo Irias on 02/05/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EIPGPSAddressViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *about;

@property (weak, nonatomic) IBOutlet UIImageView *help;
@property (weak, nonatomic) IBOutlet UIImageView *background;

@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipegestureright;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipegestureleft;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipegestureup;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipegesturedown;


- (IBAction)showPrevFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer;
- (IBAction)showNextFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer;
- (IBAction)showUpFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer;
- (IBAction)showDownFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer;


@end
