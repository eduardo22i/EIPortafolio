//
//  EIPAllSectionsViewController.m
//  EIPortafolio
//
//  Created by Eduardo Irias on 28/04/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import "EIPAllSectionsViewController.h"
#import <QuartzCore/QuartzCore.h>

#import "EIPViewController.h"
#import "EIPSchoolViewController.h"

@interface EIPAllSectionsViewController ()

@end

@implementation EIPAllSectionsViewController

@synthesize previousScreen;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.deco_img1.layer.shadowColor = [UIColor blackColor].CGColor;
    self.deco_img1.layer.shadowOffset = CGSizeMake(1, 1);
    self.deco_img1.layer.shadowOpacity = .7;
    self.deco_img1.layer.shadowRadius = 5.0;
    
    
    self.background.layer.shadowColor = [UIColor blackColor].CGColor;
    self.background.layer.shadowOffset = CGSizeMake(0, 0);
    self.background.layer.shadowOpacity = .7;
    self.background.layer.shadowRadius = 5.0;
    
    
    
    
    self.btn_1.transform = CGAffineTransformMakeScale(0, 0);
    self.btn_2.transform = CGAffineTransformMakeScale(0, 0);
    self.btn_3.transform = CGAffineTransformMakeScale(0, 0);
    self.btn_4.transform = CGAffineTransformMakeScale(0, 0);
    
    self.btn_5.transform = CGAffineTransformMakeScale(0, 0);
    self.btn_6.transform = CGAffineTransformMakeScale(0, 0);
    self.btn_7.transform = CGAffineTransformMakeScale(0, 0);
    self.btn_8.transform = CGAffineTransformMakeScale(0, 0);
    self.btn_9.transform = CGAffineTransformMakeScale(0, 0);
     
    
    [UIView animateWithDuration:.5 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_1.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    [UIView animateWithDuration:.5 delay:0.1 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_2.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    [UIView animateWithDuration:.5 delay:0.2 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_3.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    
    [UIView animateWithDuration:.5 delay:0.3 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_4.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    [UIView animateWithDuration:.5 delay:0.4 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_5.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
  
    
    [UIView animateWithDuration:.5 delay:.5 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_6.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    [UIView animateWithDuration:.5 delay:.6 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_7.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    [UIView animateWithDuration:.5 delay:.7 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_8.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    
    [UIView animateWithDuration:.5 delay:.8 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btn_9.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    
    
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
    EIPViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPViewController"];
    
    
    __block UIViewController *destinationController = viewController;
    
    CATransition* transition = [CATransition animation];
    transition.duration = .5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionMoveIn; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromLeft; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
    
    
    
}


- (IBAction)showNextFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    
    __block UIViewController *sourceViewController = (UIViewController*)self;
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    EIPSchoolViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPSchoolViewController"];
    
    
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



- (IBAction)showDownFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    
    if (previousScreen != NULL) {
        
    
    
    UIViewController *sourceViewController = (UIViewController*)self;
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:previousScreen];
    
    
    UIViewController *destinationController = viewController;
    
    CATransition* transition = [CATransition animation];
    transition.duration = .5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromTop; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
        
    }
    
}

@end
