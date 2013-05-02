//
//  EIPEstampWorldViewController.m
//  EIPortafolio
//
//  Created by Eduardo Irias on 01/05/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import "EIPEstampWorldViewController.h"
#import <QuartzCore/QuartzCore.h>

#import "EIPUniversityViewController.h"
#import "EIPTechnicalSkillsViewController.h"
#import "EIPAllSectionsViewController.h"


#define DEGREES_TO_RADIANS(x) (M_PI * x / 180.0)


@interface EIPEstampWorldViewController ()

@end

@implementation EIPEstampWorldViewController

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
    
    
    
    self.EWLogo.layer.shadowColor = [UIColor blackColor].CGColor;
    self.EWLogo.layer.shadowOffset = CGSizeMake(0, 0);
    self.EWLogo.layer.shadowOpacity = .7;
    self.EWLogo.layer.shadowRadius = 5.0;
    
    self.background.layer.shadowColor = [UIColor blackColor].CGColor;
    self.background.layer.shadowOffset = CGSizeMake(0, 0);
    self.background.layer.shadowOpacity = .7;
    self.background.layer.shadowRadius = 5.0;
    
    
    self.EWLogo.transform = CGAffineTransformMakeRotation(180);
    self.EWLogo.alpha = 0;
    
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.EWLogo.alpha = 1;
        self.EWLogo.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished){
    }];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)makeitdance:(id)sender {
    
    
    CABasicAnimation *fullRotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    fullRotation.fromValue = [NSNumber numberWithFloat:0];
    fullRotation.toValue = [NSNumber numberWithFloat:((360*M_PI)/180)];
    fullRotation.duration = .5;
    fullRotation.repeatCount = 1;
    [self.EWLogo.layer addAnimation:fullRotation forKey:@"360"];
    
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
    EIPUniversityViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPUniversityViewController"];
    
    
    __block UIViewController *destinationController = viewController;
    
    CATransition* transition = [CATransition animation];
    transition.duration = .5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromLeft; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
}


- (IBAction)showNextFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    __block UIViewController *sourceViewController = (UIViewController*)self;
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    EIPTechnicalSkillsViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPTechnicalSkillsViewController"];
    
    
    __block UIViewController *destinationController = viewController;
    
    CATransition* transition = [CATransition animation];
    transition.duration = .5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromRight; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    

}


- (IBAction)showUpFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    __block UIViewController *sourceViewController = (UIViewController*)self;
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    EIPAllSectionsViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPAllSectionsViewController"];
    
    viewController.previousScreen = @"EIPEstampWorldViewController";
    
    __block UIViewController *destinationController = viewController;
    
    CATransition* transition = [CATransition animation];
    transition.duration = .5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromBottom; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
}



- (IBAction)showDownFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    
}





@end
