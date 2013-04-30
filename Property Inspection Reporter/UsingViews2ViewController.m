//
//  UsingViews2ViewController.m
//  Property Inspection Reporter
//
//  Created by webstudent on 4/15/13.
//  Copyright (c) 2013 webstudent. All rights reserved.
//

#import "UsingViews2ViewController.h"

@interface UsingViews2ViewController ()

@end

@implementation UsingViews2ViewController
@synthesize scrollview;
@synthesize txtAddress;
@synthesize txtCity;
@synthesize txtState;
@synthesize txtInspector;
@synthesize txtLockboxCode;
@synthesize txtLockboxLoc;

- (void)viewDidLoad
{
   
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];

}
-(void)dismissKeyboard {
    [txtAddress resignFirstResponder];
    [txtCity resignFirstResponder];
    [txtState resignFirstResponder];
    [txtInspector resignFirstResponder];
    [txtLockboxLoc resignFirstResponder];
    [txtInspector resignFirstResponder];
    
}
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [scrollview release];
    [txtAddress release];
    [txtCity release];
    [txtState release];
    [txtInspector release];
    [txtLockboxLoc release];
    [txtLockboxCode release];
    [super dealloc];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [scrollview setContentOffset:CGPointZero animated:YES];
}

@end
