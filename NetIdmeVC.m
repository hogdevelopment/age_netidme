//
//  NetIdmeVC.m
//  NetIDmeAuth
//
//  Created by shinoy on 1/31/14.
//  Copyright (c) 2014 SHINOY. All rights reserved.
//

#import "NetIdmeVC.h"
#import "getVerifydataDetails.h"

@interface NetIdmeVC ()

@end

@implementation NetIdmeVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //request is created
	   
    NetIDVerifyServiceSvc_VerifyRequestMessage  * request     = [NetIDVerifyServiceSvc_VerifyRequestMessage new];
    
    //NetIDVerifyServiceSvc_VerificationData * verificationData = [NetIDVerifyServiceSvc_VerificationData new];
    
    //verificationData.CustomerReferenceID = @"32dfswq3";//reference id should be created

    request.ConfigurationProfileName    = profileUK;
    
    //getting user data
    
    request.VerificationData            = [getVerifydataDetails getData];
    
    // creating client for accessing netIDme service
    
    [NetIDVerifyServiceSvc initialize];
    
    NetIDVerify_v3Binding   * client    = [NetIDVerifyServiceSvc NetIDVerify_v3Binding];
    
    client.logXMLInOut                  = YES;
    
    client.authUsername                 = userName;
    client.authPassword                 = password;

    NetIDVerifyServiceSvc_Verify    *verifyUser = [NetIDVerifyServiceSvc_Verify new];
    
    verifyUser.VerificationRequest              = request;
    
    NetIDVerify_v3BindingResponse  * response =[[NetIDVerify_v3BindingResponse alloc]init];
    
    response = [client VerifyUsingParameters:verifyUser];

    
    if(response.error)
    {
        NSLog(@"\n\n\n\nError :  %@", response.error);
    }
    
    if(response.headers)
    {
        NSLog(@"\n\n\nhearder :  %@", response.headers);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
