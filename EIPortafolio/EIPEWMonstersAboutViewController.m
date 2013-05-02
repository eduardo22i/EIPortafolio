//
//  EIPEWMonstersAboutViewController.m
//  EIPortafolio
//
//  Created by Eduardo Irias on 29/04/13.
//  Copyright (c) 2013 Estamp World. All rights reserved.
//

#import "EIPEWMonstersAboutViewController.h"
#import <QuartzCore/QuartzCore.h>

#import "EIPEWMonstersViewController.h"

@interface EIPEWMonstersAboutViewController ()

@end

@implementation EIPEWMonstersAboutViewController

@synthesize timer;

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
    [self.relp addTarget:self action:@selector(relpReleased:) forControlEvents:UIControlEventTouchUpInside];
    
    self.relp.layer.shadowColor = [UIColor blackColor].CGColor;
    self.relp.layer.shadowOffset = CGSizeMake(0, 0);
    self.relp.layer.shadowOpacity = .7;
    self.relp.layer.shadowRadius = 5.0;
    
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



- (IBAction)showUpFromSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
     UIViewController *sourceViewController = (UIViewController*)self;
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    EIPEWMonstersViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EIPEWMonstersViewController"];
    
    
    UIViewController *destinationController = viewController;
    
    CATransition* transition = [CATransition animation];
    
    transition.duration = .5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromBottom; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    transition.fillMode = kCAFillModeForwards;
    transition.removedOnCompletion = YES;
    
    [sourceViewController.navigationController.view.layer addAnimation:transition forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
}

- (void)timerTick:(NSTimer *)timer {
    [self.relp setImage:[UIImage imageNamed:@"relp_1.png"] forState:UIControlStateNormal];
}

-(IBAction)relpReleased:(id)sender
{
   timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerTick:) userInfo:nil repeats:NO];
}

- (IBAction)changemonsters:(id)sender {
    [timer invalidate];
    
    [self.relp setImage:[UIImage imageNamed:@"relp_3.png"] forState:UIControlStateHighlighted];
    [self.relp setImage:[UIImage imageNamed:@"relp_2.png"] forState:UIControlStateNormal];
    
   

}

- (IBAction)openappstore:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:
                                                @"https://itunes.apple.com/us/app/ew-monsters/id459672469?mt=8"]];

}


@end
