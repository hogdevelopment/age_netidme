//
//  getVerifydataDetails.m
//  testNetIDme
//
//  Created by shinoy on 1/30/14.
//  Copyright (c) 2014 SHINOY. All rights reserved.
//

#import "getVerifydataDetails.h"

@implementation getVerifydataDetails

+(NetIDVerifyServiceSvc_VerificationData *)getData
{
    
    //user data for verfication.
    
    NetIDVerifyServiceSvc_VerificationData  * dataVerify= [[NetIDVerifyServiceSvc_VerificationData alloc]init];
    NetIDVerifyServiceSvc_Name              * name      = [[NetIDVerifyServiceSvc_Name alloc]init];
    NetIDVerifyServiceSvc_DOB               * dob       = [[NetIDVerifyServiceSvc_DOB alloc]init];
    NetIDVerifyServiceSvc_Address           * address   = [[NetIDVerifyServiceSvc_Address alloc]init];
    
    name.Title               = @"Mr";
    name.FirstName           = @"Test";
    name.MiddleNames         = @"";
    name.LastName            = @"Test";
    dob.DayOfBirth          = [NSNumber numberWithInt:01];
    dob.MonthOfBirth         = [NSNumber numberWithInt:02];
    dob.YearOfBirth          = [NSNumber numberWithInt:1940];
    
    address.ComponentFormatAddress.HouseNumber   = @"25";
    address.PostalCode                           = @"P057CD";
    address.TwoLetterISOCountryCode              = @"GB";
    
    dataVerify.Name         =   name;
    dataVerify.DOB          =   dob;
    dataVerify.Address      =   address;
    
    dataVerify.EmailAddress             = @"something@somewhere.com";
    

    return dataVerify;
}

@end
