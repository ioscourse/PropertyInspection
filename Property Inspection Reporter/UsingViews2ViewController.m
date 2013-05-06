//
//  UsingViews2ViewController.m
//  Property Inspection Reporter
//
//  Created by webstudent on 4/15/13.
//  Copyright (c) 2013 webstudent. All rights reserved.
//

#import "UsingViews2ViewController.h"
#import "PDFRenderer.h"
#import <DropboxSDK/DropboxSDK.h>


@interface UsingViews2ViewController ()

@end

@implementation UsingViews2ViewController

NSString *files;

@synthesize image;
@synthesize comment;
@synthesize filePath;

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
@synthesize viewSign;
@synthesize viewName;
@synthesize viewAgency;
@synthesize viewLockbox;
@synthesize viewKeys;
@synthesize viewSignin;
@synthesize viewAgencyinfo;
@synthesize viewElectric;
@synthesize viewElecmeter;
@synthesize viewEleclocked;
@synthesize viewGas;
@synthesize viewGasmeter;
@synthesize viewGaslocked;
@synthesize viewWater;
@synthesize viewWatermeter;
@synthesize viewWinterized;
@synthesize viewWell;
@synthesize viewSeptic;
@synthesize viewHeater;
@synthesize viewWinter;
@synthesize viewSummer;
@synthesize viewDoorssecure;
@synthesize viewBasement;
@synthesize viewSump;
@synthesize viewOperate;
@synthesize viewBrokenWindows;
@synthesize viewLeak;
@synthesize viewSquatters;
@synthesize viewTenants;
@synthesize viewMold;
@synthesize viewCleanservice;
@synthesize viewTrashout;
@synthesize viewViolations;
@synthesize viewLawn;
@synthesize viewSnow;

- (void)didPressLink {
    if (![[DBSession sharedSession] isLinked]) {
        [[DBSession sharedSession] linkFromController:self];
    }
}

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
    [viewSign release];
    [viewName release];
    [viewAgency release];
    [viewLockbox release];
    [viewKeys release];
    [viewSignin release];
    [viewAgencyinfo release];
    [viewElectric release];
    [viewElecmeter release];
    [viewEleclocked release];
    [viewGas release];
    [viewGasmeter release];
    [viewGaslocked release];
    [viewWater release];
    [viewWatermeter release];
    [viewWinterized release];
    [viewWell release];
    [viewSeptic release];
    [viewHeater release];
    [viewWinter release];
    [viewSummer release];
    [viewDoorssecure release];
    [viewBasement release];
    [viewSump release];
    [viewOperate release];
    [viewBrokenWindows release];
    [viewLeak release];
    [viewSquatters release];
    [viewTenants release];
    [viewMold release];
    [viewCleanservice release];
    [viewTrashout release];
    [viewViolations release];
    [viewLawn release];
    [viewSnow release];
    
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
- (IBAction)btnSign:(id)sender {
    NSLog(@"%ld", (long)viewSign.selectedSegmentIndex);
}
- (IBAction)btnName:(id)sender {
    NSLog(@"%ld", (long)viewName.selectedSegmentIndex);
}
- (IBAction)btnAgency:(id)sender {
    NSLog(@"%ld", (long)viewAgency.selectedSegmentIndex);
}
- (IBAction)btnLockbox:(id)sender {
    NSLog(@"%ld", (long)viewLockbox.selectedSegmentIndex);
}
- (IBAction)btnKeys:(id)sender {
    NSLog(@"%ld", (long)viewKeys.selectedSegmentIndex);
}
- (IBAction)btnSignin:(id)sender {
    NSLog(@"%ld", (long)viewSignin.selectedSegmentIndex);
}
- (IBAction)btnAgencyinfo:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnElectric:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnElecmeter:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnEleclocked:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnGas:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnGasmeter:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnGaslocked:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnWater:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnWatermeter:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnWinterized:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnWell:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnSeptic:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnHeater:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnWinter:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnSummer:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnDoorssecure:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnBasement:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnSump:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnOperate:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnBrokenWindows:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnLeak:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnSquatters:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnTenants:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnMold:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnCleanservice:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnTrashout:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnViolations:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnLawn:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}
- (IBAction)btnSnow:(id)sender {
    NSLog(@"%ld", (long)viewAgencyinfo.selectedSegmentIndex);
}

- (IBAction)btnReview:(id)sender {
    
    [PDFRenderer createPDF:filePath field:comment Photo:image];
    
    -(NSString*)getPDFFilePath
    {
        NSString* fileName = @"New.pdf";
        
        NSArray *arrayPaths =
        NSSearchPathForDirectoriesInDomains(
                                            NSDocumentDirectory,
                                            NSUserDomainMask,
                                            YES);
        NSString *path = [arrayPaths objectAtIndex:0];
        NSString* pdfFilePath = [path stringByAppendingPathComponent:fileName];
        
        return pdfFilePath;
    }
    
    - (NSString *) filePath: (NSString *) fileName {
        NSArray *paths =
        NSSearchPathForDirectoriesInDomains(
                                            NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDir = [paths objectAtIndex:0];
        
        return [documentsDir stringByAppendingPathComponent:fileName];
    }
   }





@end
