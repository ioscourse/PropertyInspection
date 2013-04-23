//
//  scrollViewController.m
//  Property Inspection Reporter
//
//  Created by webstudent on 4/22/13.
//  Copyright (c) 2013 webstudent. All rights reserved.
//

#import "scrollViewController.h"

@interface scrollViewController ()

@end

@implementation scrollViewController

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
    
    [scrollview setContentSize:CGSizeMake(1280,460)];
   
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
