//
//  EIPViewController.h
//  EIPortafolio
//
//  Created by Eduardo Irias on 27/04/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface EIPViewController : UIViewController

@property (nonatomic, retain) AVAudioPlayer *audioPlayer;


@property (weak, nonatomic) IBOutlet UIImageView *header_img;
@property (weak, nonatomic) IBOutlet UILabel *name_lbl;
@property (weak, nonatomic) IBOutlet UILabel *city_lbl;


@property (weak, nonatomic) IBOutlet UIImageView *help;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipegesture;

- (IBAction)showGestureForSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer;

@end
