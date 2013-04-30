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
    

@property (retain, nonatomic) IBOutlet UIScrollView *scrollview;

@end
