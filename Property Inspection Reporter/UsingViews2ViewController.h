//
//  UsingViews2ViewController.h
//  Property Inspection Reporter
//
//  Created by webstudent on 4/15/13.
//  Copyright (c) 2013 webstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UsingViews2ViewController : UIViewController 

    - (IBAction) doneEditing:(id) sender;
 


@property (retain, nonatomic) IBOutlet UITextField *txtAddress;
@property (retain, nonatomic) IBOutlet UITextField *txtCity;
@property (retain, nonatomic) IBOutlet UITextField *txtState;
@property (retain, nonatomic) IBOutlet UITextField *txtInspector;
@property (retain, nonatomic) IBOutlet UITextField *txtLockboxLoc;
@property (retain, nonatomic) IBOutlet UITextField *txtLockboxCode;
@property (retain, nonatomic) IBOutlet UITextField *txtUtilread;
@property (retain, nonatomic) IBOutlet UITextField *txtGasread;
@property (retain, nonatomic) IBOutlet UITextField *txtWaterread;
@property (retain, nonatomic) IBOutlet UITextField *txtDoorlocation;
@property (retain, nonatomic) IBOutlet UITextField *txtWindow;
@property (retain, nonatomic) IBOutlet UITextField *txtMold;
@property (retain, nonatomic) IBOutlet UITextField *txtLawn;
@property (retain, nonatomic) IBOutlet UITextField *txtSnow;
@property (retain, nonatomic) IBOutlet UITextField *txtMissing;
@property (retain, nonatomic) IBOutlet UITextField *txtHazards;


@property (retain, nonatomic) IBOutlet UISegmentedControl *viewSale;
- (IBAction)btnSale:(id)sender;

    

@property (retain, nonatomic) IBOutlet UIScrollView *scrollview;

@end
