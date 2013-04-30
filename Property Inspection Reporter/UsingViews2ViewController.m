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
@synthesize txtUtilread;
@synthesize txtGasread;
@synthesize txtWaterread;
@synthesize txtDoorlocation;
@synthesize txtWindow;
@synthesize txtMold;
@synthesize txtLawn;
@synthesize txtSnow;
@synthesize txtMissing;
@synthesize txtHazards;
@synthesize viewSale;



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
    [txtUtilread resignFirstResponder];
    [txtGasread resignFirstResponder];
    [txtWaterread resignFirstResponder];
    [txtDoorlocation resignFirstResponder];
    [txtWindow resignFirstResponder];
    [txtMold resignFirstResponder];
    [txtLawn resignFirstResponder];
    [txtSnow resignFirstResponder];
    [txtMissing resignFirstResponder];
    [txtHazards resignFirstResponder];
    
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
    [txtUtilread release];
    [txtGasread release];
    [txtWaterread release];
    [txtDoorlocation release];
    [txtWindow release];
    [txtMold release];
    [txtLawn release];
    [txtSnow release];
    [txtMissing release];
    [txtHazards release];
    [viewSale release];
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
- (IBAction)btnSale:(id)sender {
    NSLog(@"%ld", (long)viewSale.selectedSegmentIndex);
}
@end
