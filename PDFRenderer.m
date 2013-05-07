//
//  PDFRenderer.m
//  PDFRenderer
//
//  Created by Yuichi Fujiki on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PDFRenderer.h"

@implementation PDFRenderer

+(void)drawLineFromPoint:(CGPoint)from toPoint:(CGPoint)to
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 2.0);
    
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    
    CGFloat components[] = {0.2, 0.2, 0.2, 0.3};
    
    CGColorRef color = CGColorCreate(colorspace, components);
    
    CGContextSetStrokeColorWithColor(context, color);
    
    
    CGContextMoveToPoint(context, from.x, from.y);
    CGContextAddLineToPoint(context, to.x, to.y);
    
    CGContextStrokePath(context);
    CGColorSpaceRelease(colorspace);
    CGColorRelease(color);
    
}

+(void)drawImage:(UIImage*)image inRect:(CGRect)rect
{
    [image drawInRect:rect];
}

+(void)createPDF:(NSString*)filePath field:(NSString*) field Photo:(UIImage*) Photo gps:(NSString*) gps
{
    NSString *maps=field;
    // Create the PDF context using the default page size of 612 x 792.
    UIGraphicsBeginPDFContextToFile(filePath, CGRectZero, nil);
    // Mark the beginning of a new page.
    UIGraphicsBeginPDFPageWithInfo(CGRectMake(0, 0, 612, 792), nil);
    NSString *http=@"https://";
    NSString *http1=@"maps.google.com/maps?q=";
    NSString *map1=@"+";
    NSString *map2=@"&z=14&ll=";
    NSString *link=[NSString stringWithFormat:@"%@%@%@%@(%@)%@%@",
                    http,http1,gps,map1,maps,map2,gps];
    NSURL *url2 = [NSURL URLWithString:[link
                                        stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSString *myString = [url2 absoluteString];
    NSString *myString2 = [url2 absoluteString];
    NSString *myString3 = [url2 absoluteString];
    CGRect  fldFrame1 =CGRectMake(150, 375, 320, 50);
    CGRect  fldFrame2 = CGRectMake(100, 420, 500,50);
    // CGRect  fldFrame3 = CGRectMake(150, 10, 320,320);
    
    
    [PDFRenderer drawText:maps inFrame:CGRectMake(150, 375, 320, 50) fontName:@"TimesNewRomanPSMT" fontSize:36];
    UIGraphicsSetPDFContextURLForRect ([NSURL URLWithString:myString], fldFrame1);
    [PDFRenderer drawText:@"link to map" inFrame:CGRectMake(285, 420, 500,50) fontName:@"TimesNewRomanPSMT" fontSize:10];
    UIGraphicsSetPDFContextURLForRect ([NSURL URLWithString:myString2], fldFrame2);
    //CGPoint from = CGPointMake(0, 0);
    // CGPoint to = CGPointMake(200, 300);
    //[PDFRenderer drawLineFromPoint:from toPoint:to];
    
    UIImage* logo = Photo;
    
    CGRect frame = CGRectMake(150, 10, 320,320);
    [PDFRenderer drawImage:logo inRect:frame];
    UIGraphicsSetPDFContextURLForRect ([NSURL URLWithString:myString3],  CGRectMake(150, 500, 320,320));
    // Close the PDF context and write the contents out.
    UIGraphicsEndPDFContext();
}

+(void)editPDF:(NSString*)filePath templateFilePath:(NSString*) templatePath field:(NSString*) field Photo:(UIImage*) Photo
{
    // Create the PDF context using the default page size of 612 x 792.
    UIGraphicsBeginPDFContextToFile(filePath, CGRectZero, nil);
    // Mark the beginning of a new page.
    UIGraphicsBeginPDFPageWithInfo(CGRectMake(0, 0, 612, 792), nil);
    
    //open template file
    CFURLRef url = CFURLCreateWithFileSystemPath (NULL, ( CFStringRef)templatePath, kCFURLPOSIXPathStyle, 0);
    CGPDFDocumentRef templateDocument = CGPDFDocumentCreateWithURL(url);
    CFRelease(url);
    
    //get bounds of template page
    CGPDFPageRef templatePage = CGPDFDocumentGetPage(templateDocument, 1);
    CGRect templatePageBounds = CGPDFPageGetBoxRect(templatePage, kCGPDFCropBox);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //flip context due to different origins
    CGContextTranslateCTM(context, 0.0, templatePageBounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    //copy content of template page on the corresponding page in new file
    CGContextDrawPDFPage(context, templatePage);
    
    //flip context back
    CGContextTranslateCTM(context, 0.0, templatePageBounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    // Edit body
    [PDFRenderer drawText:field inFrame:CGRectMake(150, 550, 300, 50) fontName:@"Times" fontSize:36];
    [PDFRenderer drawText:@"adasd" inFrame:CGRectMake(150, 550, 305, 50) fontName:@"Times" fontSize:36];
    
    CGPoint from = CGPointMake(0, 400);
    CGPoint to = CGPointMake(200, 700);
    [PDFRenderer drawLineFromPoint:from toPoint:to];
    
    UIImage* logo = Photo;
    CGRect frame = CGRectMake(20, 500, 60, 60);
    
    [PDFRenderer drawImage:logo inRect:frame];
    
    
    CGPDFDocumentRelease(templateDocument);
    
    // Close the PDF context and write the contents out.
    UIGraphicsEndPDFContext();
}
@end
