//
//  EIPViewController.m
//  EIPortafolio
//
//  Created by Eduardo Irias on 27/04/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import "EIPViewController.h"
#import <QuartzCore/QuartzCore.h>

#import "EIPAllSectionsViewController.h"

@interface EIPViewController ()

@end

@implementation EIPViewController

@synthesize audioPlayer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.navigationController setNavigationBarHidden:YES];
    
    [self.view addGestureRecognizer:self.swipegesture];

    
    
    self.header_img.layer.shadowColor = [UIColor blackColor].CGColor;
    self.header_img.layer.shadowOffset = CGSizeMake(0, 0);
    self.header_img.layer.shadowOpacity = .6;
    self.header_img.layer.shadowRadius = 5.0;
    
    
    self.name_lbl.layer.shadowColor = [UIColor blackColor].CGColor;
    self.name_lbl.layer.shadowOffset = CGSizeMake(0, 0);
    self.name_lbl.layer.shadowOpacity = .6;
    self.name_lbl.layer.shadowRadius = 1.0;
    
    
    self.city_lbl.layer.shadowColor = [UIColor blackColor].CGColor;
    self.city_lbl.layer.shadowOffset = CGSizeMake(0, 0);
    self.city_lbl.layer.shadowOpacity = .6;
    self.city_lbl.layer.shadowRadius = 1.0;
    
    self.background.layer.shadowColor = [UIColor blackColor].CGColor;
    self.background.layer.shadowOffset = CGSizeMake(0, 0);
    self.background.layer.shadowOpacity = .7;
    self.background.layer.shadowRadius = 5.0;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *theTouch = [touches anyObject];
    CGPoint startPoint = [theTouch locationInView:self.view];
    CGFloat x = startPoint.x - 20;
    CGFloat y = startPoint.y - 20;
    
    self.help.center = CGPointMake(x, y);
    self.help.hidden = NO;
    self.help.alpha = 0;
    
    [UIView animateWithDuration:.25 delay:0.0 options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.help.alpha = 1;
                         
                     }
                     completion:^(BOOL finished) {
                         
                     }
     ];
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *theTouch = [touches anyObject];
    CGPoint startPoint = [theTouch locationInView:self.view];
    CGFloat x = startPoint.x - 20;
    CGFloat y = startPoint.y - 20;
    
    self.help.center = CGPointMake(x, y);

}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
    [UIView animateWithDuration:.25 delay:0.0 options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.help.alpha = 0;
                         
                     }
                     completion:^(BOOL finished) {
                         self.help.hidden = YES;
                     }
     ];
    
    
}


- (IBAction)showGestureForSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
   

        __block UIViewController *sourceViewController = (UIViewController*)self;
    
    
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
        EIPAllSectionsViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPAllSectionsViewController"];
    
    
        __block UIViewController *destinationController = viewController;
        
        CATransition* transition = [CATransition animation];
        transition.duration = .5;
        transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        transition.type = kCATransitionMoveIn; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
        transition.subtype = kCATransitionFromRight; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
        
        
        
        [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                    forKey:kCATransition];
        
        [sourceViewController.navigationController pushViewController:destinationController animated:NO];    
        
        


}


@end
