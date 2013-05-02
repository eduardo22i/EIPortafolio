//
//  EIPAllSectionsViewController.h
//  EIPortafolio
//
//  Created by Eduardo Irias on 28/04/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EIPAllSectionsViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *btn_1;
@property (weak, nonatomic) IBOutlet UIButton *btn_2;
@property (weak, nonatomic) IBOutlet UIButton *btn_3;
@property (weak, nonatomic) IBOutlet UIButton *btn_4;
@property (weak, nonatomic) IBOutlet UIButton *btn_5;
@property (weak, nonatomic) IBOutlet UIButton *btn_6;
@property (weak, nonatomic) IBOutlet UIButton *btn_7;
@property (weak, nonatomic) IBOutlet UIButton *btn_8;
@property (weak, nonatomic) IBOutlet UIButton *btn_9;




@property (weak, nonatomic) NSString *previousScreen;

@property (weak, nonatomic) IBOutlet UIImageView *deco_img1;

@property (weak, nonatomic) IBOutlet UIImageView *help;
@property (weak, nonatomic) IBOutlet UIImageView *background;

@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipegestureright;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipegestureleft;

- (IBAction)showGestureForSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer;

- (IBAction)showDownFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer;


@end
