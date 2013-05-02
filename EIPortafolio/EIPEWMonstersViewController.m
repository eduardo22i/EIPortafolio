//
//  EIPEWMonstersViewController.m
//  EIPortafolio
//
//  Created by Eduardo Irias on 29/04/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import "EIPEWMonstersViewController.h"
#import <QuartzCore/QuartzCore.h>

#import "EIPAllSectionsViewController.h"
#import "EIPTechnicalSkillsCViewController.h"
#import "EIPGPSAddressViewController.h"
#import "EIPEWMonstersAboutViewController.h"

@interface EIPEWMonstersViewController ()

@end

@implementation EIPEWMonstersViewController

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
	// Do any additional setup after loading the view.
    
    self.background.layer.shadowColor = [UIColor blackColor].CGColor;
    self.background.layer.shadowOffset = CGSizeMake(0, 0);
    self.background.layer.shadowOpacity = .7;
    self.background.layer.shadowRadius = 5.0;
    
    
    self.about.alpha = 0;
    self.about.transform = CGAffineTransformMakeScale(.5, .5);
    self.about.transform = CGAffineTransformMakeTranslation(0, -10);
    [UIView animateWithDuration:.5 delay:.5 options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.about.alpha = 1;
                         self.about.transform = CGAffineTransformIdentity;
                     }
                     completion:^(BOOL finished) {
                     }
     ];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma movement 

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

- (IBAction)showPrevFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    
    __block UIViewController *sourceViewController = (UIViewController*)self;
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    EIPTechnicalSkillsCViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPTechnicalSkillsCViewController"];
    
    
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
    EIPGPSAddressViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPGPSAddressViewController"];
    
    
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


- (IBAction)showUpFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    __block UIViewController *sourceViewController = (UIViewController*)self;
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    EIPAllSectionsViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPAllSectionsViewController"];
    
    viewController.previousScreen = @"EIPEWMonstersViewController";
    
    __block UIViewController *destinationController = viewController;
    
    CATransition* transition = [CATransition animation];
    transition.duration = .5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionMoveIn; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromBottom; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
}



- (IBAction)showDownFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    __block UIViewController *sourceViewController = (UIViewController*)self;
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    EIPEWMonstersAboutViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPEWMonstersAboutViewController"];
    
    
    __block UIViewController *destinationController = viewController;
    
    CATransition* transition = [CATransition animation];
    transition.duration = .5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromTop; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
}

@end
