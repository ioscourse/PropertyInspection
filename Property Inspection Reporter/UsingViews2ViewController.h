//
//  UsingViews2ViewController.h
//  Property Inspection Reporter
//
//  Created by webstudent on 4/15/13.
//  Copyright (c) 2013 webstudent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DropboxSDK/DropboxSDK.h>
#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <CoreLocation/CoreLocation.h>
//#import "PDFRenderer.h"

@class DBRestClient;

@interface UsingViews2ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate,DBRestClientDelegate>
{
    UIImagePickerController *imagePicker;
    DBRestClient *restClient;
    NSMutableArray *dropboxURLs;
	IBOutlet UILabel *locLabel;
    
}

    - (IBAction) doneEditing:(id) sender;

@property (retain, nonatomic) IBOutlet UIImageView *Photo;

//Create PDF
@property (nonatomic, strong) NSString * filePath;
@property (nonatomic, strong) NSString * oldFilePath;
@property (nonatomic, strong) NSString * comment;
@property (nonatomic, strong) UIImage * image;
-(NSString*)getPDFFilePath;

//dropbox DBrestClient
@property (nonatomic, readonly) DBRestClient *restClient;

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
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewSign;
- (IBAction)btnSign:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewName;
- (IBAction)btnName:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewAgency;
- (IBAction)btnAgency:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewLockbox;
- (IBAction)btnLockbox:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewKeys;
- (IBAction)btnKeys:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewSignin;
- (IBAction)btnSignin:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewAgencyinfo;
- (IBAction)btnAgencyinfo:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewElectric;
- (IBAction)btnElectric:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewElecmeter;
- (IBAction)btnElecmeter:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewEleclocked;
- (IBAction)btnEleclocked:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewGas;
- (IBAction)btnGas:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewGasmeter;
- (IBAction)btnGasmeter:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewGaslocked;
- (IBAction)btnGaslocked:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewWater;
- (IBAction)btnWater:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewWatermeter;
- (IBAction)btnWatermeter:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewWinterized;
- (IBAction)btnWinterized:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewWell;
- (IBAction)btnWell:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewSeptic;
- (IBAction)btnSeptic:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewHeater;
- (IBAction)btnHeater:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewWinter;
- (IBAction)btnWinter:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewSummer;
- (IBAction)btnSummer:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewDoorssecure;
- (IBAction)btnDoorssecure:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewBasement;
- (IBAction)btnBasement:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewSump;
- (IBAction)btnSump:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewOperate;
- (IBAction)btnOperate:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewBrokenWindows;
- (IBAction)btnBrokenWindows:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewLeak;
- (IBAction)btnLeak:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewSquatters;
- (IBAction)btnSquatters:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewTenants;
- (IBAction)btnTenants:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewMold;
- (IBAction)btnMold:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewCleanservice;
- (IBAction)btnCleanservice:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewTrashout;
- (IBAction)btnTrashout:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewViolations;
- (IBAction)btnViolations:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewLawn;
- (IBAction)btnLawn:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *viewSnow;

- (IBAction)btnphSign:(id)sender;
- (IBAction)btnphLockbox:(id)sender;
- (IBAction)btnphSignin:(id)sender;
- (IBAction)btnphElec:(id)sender;
- (IBAction)btnphGas:(id)sender;
- (IBAction)btnphWater:(id)sender;
- (IBAction)btnphThremo:(id)sender;
- (IBAction)btnphDoors:(id)sender;
- (IBAction)btnphBasement:(id)sender;
- (IBAction)btnphWindows:(id)sender;
- (IBAction)btnphLeaks:(id)sender;
- (IBAction)btnphTennants:(id)sender;
- (IBAction)btnphMold:(id)sender;
- (IBAction)btnphClean:(id)sender;
- (IBAction)btnphTrash:(id)sender;
- (IBAction)btnphViolations:(id)sender;
- (IBAction)btnphAddress:(id)sender;
- (IBAction)btnphLawn:(id)sender;
- (IBAction)btnphSnow:(id)sender;
- (IBAction)btnphMissing:(id)sender;


@property (retain, nonatomic) IBOutlet UILabel *caption;
@property (retain, nonatomic) IBOutlet UILabel *lblCover;
@property (retain, nonatomic) IBOutlet UIImageView *ImageCover;







- (IBAction)btnSnow:(id)sender;

- (IBAction)btnReview:(id)sender;


    

@property (retain, nonatomic) IBOutlet UIScrollView *scrollview;

@end
