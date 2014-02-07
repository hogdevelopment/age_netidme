#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class NetIDVerifyServiceSvc_Verify;
@class NetIDVerifyServiceSvc_VerifyRequestMessage;
@class NetIDVerifyServiceSvc_VerificationData;
@class NetIDVerifyServiceSvc_Name;
@class NetIDVerifyServiceSvc_DOB;
@class NetIDVerifyServiceSvc_Address;
@class NetIDVerifyServiceSvc_AdditionalPII;
@class NetIDVerifyServiceSvc_LineFormat;
@class NetIDVerifyServiceSvc_ComponentFormat;
@class NetIDVerifyServiceSvc_CreditCardAVS;
@class NetIDVerifyServiceSvc_VerifyResponse;
@class NetIDVerifyServiceSvc_VerificationResponse;
@class NetIDVerifyServiceSvc_Claims;
@class NetIDVerifyServiceSvc_ArrayOfKBVQuestion;
@class NetIDVerifyServiceSvc_Summary;
@class NetIDVerifyServiceSvc_ArrayOfClaim;
@class NetIDVerifyServiceSvc_Claim;
@class NetIDVerifyServiceSvc_KBVQuestion;
@class NetIDVerifyServiceSvc_NetIDVerifyException;
@class NetIDVerifyServiceSvc_GetRequestStatus;
@class NetIDVerifyServiceSvc_StatusRequest;
@class NetIDVerifyServiceSvc_GetRequestStatusResponse;
@class NetIDVerifyServiceSvc_RequestStatusResponse;
@class NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary;
@class NetIDVerifyServiceSvc_RequestStatusSummary;
@class NetIDVerifyServiceSvc_AnswerQuestions;
@class NetIDVerifyServiceSvc_ArrayOfKBVAnswer;
@class NetIDVerifyServiceSvc_KBVAnswer;
@class NetIDVerifyServiceSvc_AnswerQuestionsResponse;

@interface NetIDVerifyServiceSvc_Name : NSObject
{
	
/* elements */
	NSString * Title;
	NSString * FirstName;
	NSString * MiddleNames;
	NSString * LastName;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_Name *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * Title;
@property (retain) NSString * FirstName;
@property (retain) NSString * MiddleNames;
@property (retain) NSString * LastName;
/* attributes */
- (NSDictionary *)attributes;
@end



@interface NetIDVerifyServiceSvc_DOB : NSObject
{
	
/* elements */
	NSNumber * DayOfBirth;
	NSNumber * MonthOfBirth;
	NSNumber * YearOfBirth;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_DOB *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * DayOfBirth;
@property (retain) NSNumber * MonthOfBirth;
@property (retain) NSNumber * YearOfBirth;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_LineFormat : NSObject
{
	
/* elements */
	NSString * Line1;
	NSString * Line2;
	NSString * Line3;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_LineFormat *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * Line1;
@property (retain) NSString * Line2;
@property (retain) NSString * Line3;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_ComponentFormat : NSObject
{
	
/* elements */
	NSString * FlatNumber;
	NSString * HouseName;
	NSString * HouseNumber;
	NSString * StreetName;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_ComponentFormat *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * FlatNumber;
@property (retain) NSString * HouseName;
@property (retain) NSString * HouseNumber;
@property (retain) NSString * StreetName;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_Address : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_LineFormat * LineFormatAddress;
	NetIDVerifyServiceSvc_ComponentFormat * ComponentFormatAddress;
	NSString * TownCityName;
	NSString * RegionOrState;
	NSString * PostalCode;
	NSString * TwoLetterISOCountryCode;
	NSString * TelephoneNumber;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_Address *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NetIDVerifyServiceSvc_LineFormat * LineFormatAddress;
@property (retain) NetIDVerifyServiceSvc_ComponentFormat * ComponentFormatAddress;
@property (retain) NSString * TownCityName;
@property (retain) NSString * RegionOrState;
@property (retain) NSString * PostalCode;
@property (retain) NSString * TwoLetterISOCountryCode;
@property (retain) NSString * TelephoneNumber;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_CreditCardAVS : NSObject
{
	
/* elements */
	NSString * CardNumber;
	NSDate * ExpiryDate;
	NSNumber * IssueNumber;
	NSDate * ValidFromDate;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_CreditCardAVS *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * CardNumber;
@property (retain) NSDate * ExpiryDate;
@property (retain) NSNumber * IssueNumber;
@property (retain) NSDate * ValidFromDate;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_AdditionalPII : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_CreditCardAVS * CreditCardAVS;
	NSString * DrivingLicenseNumber;
	NSString * DrivingLicenseState;
	NSString * NationalID;
	NSString * PassportMRZ;
	USBoolean * PerformAlgorithmicCheckOnly;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_AdditionalPII *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NetIDVerifyServiceSvc_CreditCardAVS * CreditCardAVS;
@property (retain) NSString * DrivingLicenseNumber;
@property (retain) NSString * DrivingLicenseState;
@property (retain) NSString * NationalID;
@property (retain) NSString * PassportMRZ;
@property (retain) USBoolean * PerformAlgorithmicCheckOnly;
/* attributes */
- (NSDictionary *)attributes;
@end


#pragma mark - ******* Verificatino Data *******

@interface NetIDVerifyServiceSvc_VerificationData : NSObject
{
	
/* elements */
	NSString * CustomerReferenceID;
	NetIDVerifyServiceSvc_Name * Name;
	NetIDVerifyServiceSvc_DOB * DOB;
	NetIDVerifyServiceSvc_Address * Address;
	USBoolean * IsMale;
	NSString * EmailAddress;
	NetIDVerifyServiceSvc_AdditionalPII * AdditionalPII;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_VerificationData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * CustomerReferenceID;
@property (retain) NetIDVerifyServiceSvc_Name * Name;
@property (retain) NetIDVerifyServiceSvc_DOB * DOB;
@property (retain) NetIDVerifyServiceSvc_Address * Address;
@property (retain) USBoolean * IsMale;
@property (retain) NSString * EmailAddress;
@property (retain) NetIDVerifyServiceSvc_AdditionalPII * AdditionalPII;
/* attributes */
- (NSDictionary *)attributes;
@end


////////////////////////////////////////////////

#pragma mark - ***** Verify Request Messege *****


@interface NetIDVerifyServiceSvc_VerifyRequestMessage : NSObject
{
	
/* elements */
	NSString * ConfigurationProfileName;
	NetIDVerifyServiceSvc_VerificationData * VerificationData;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_VerifyRequestMessage *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * ConfigurationProfileName;
@property (retain) NetIDVerifyServiceSvc_VerificationData * VerificationData;
/* attributes */
- (NSDictionary *)attributes;
@end


////////////////////

#pragma  mark- ***** Verify ******

@interface NetIDVerifyServiceSvc_Verify : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_VerifyRequestMessage * VerificationRequest;
/* attributes */
}

- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_Verify *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NetIDVerifyServiceSvc_VerifyRequestMessage * VerificationRequest;
/* attributes */
- (NSDictionary *)attributes;
@end





@interface NetIDVerifyServiceSvc_Summary : NSObject
{
	
/* elements */
	USBoolean * Name;
	USBoolean * DateOfBirth;
	USBoolean * Address;
	USBoolean * Is18OrOver;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_Summary *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) USBoolean * Name;
@property (retain) USBoolean * DateOfBirth;
@property (retain) USBoolean * Address;
@property (retain) USBoolean * Is18OrOver;
/* attributes */
- (NSDictionary *)attributes;
@end
typedef enum {
	tns1_ClaimMatchType_none = 0,
	tns1_ClaimMatchType_NotAvailable,
	tns1_ClaimMatchType_NotVerified,
	tns1_ClaimMatchType_Verified,
} tns1_ClaimMatchType;
tns1_ClaimMatchType tns1_ClaimMatchType_enumFromString(NSString *string);
NSString * tns1_ClaimMatchType_stringFromEnum(tns1_ClaimMatchType enumValue);
@interface NetIDVerifyServiceSvc_Claim : NSObject
{
	
/* elements */
	tns1_ClaimMatchType MatchType;
	NSString * TypeURI;
	NSString * Value;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_Claim *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (assign) tns1_ClaimMatchType MatchType;
@property (retain) NSString * TypeURI;
@property (retain) NSString * Value;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_ArrayOfClaim : NSObject
{
	
/* elements */
	NSMutableArray *Claim;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_ArrayOfClaim *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addClaim:(NetIDVerifyServiceSvc_Claim *)toAdd;
@property (readonly) NSMutableArray * Claim;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_Claims : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_Summary * Summary;
	NetIDVerifyServiceSvc_ArrayOfClaim * List;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_Claims *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NetIDVerifyServiceSvc_Summary * Summary;
@property (retain) NetIDVerifyServiceSvc_ArrayOfClaim * List;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_ArrayOfstring : NSObject
{
	
/* elements */
	NSMutableArray *string;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_ArrayOfstring *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addString:(NSString *)toAdd;
@property (readonly) NSMutableArray * string;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_KBVQuestion : NSObject
{
	
/* elements */
	NSNumber * Number;
	tns2_ArrayOfstring * QuestionAnswers;
	NSString * QuestionText;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_KBVQuestion *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * Number;
@property (retain) tns2_ArrayOfstring * QuestionAnswers;
@property (retain) NSString * QuestionText;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_ArrayOfKBVQuestion : NSObject
{
	
/* elements */
	NSMutableArray *KBVQuestion;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_ArrayOfKBVQuestion *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addKBVQuestion:(NetIDVerifyServiceSvc_KBVQuestion *)toAdd;
@property (readonly) NSMutableArray * KBVQuestion;
/* attributes */
- (NSDictionary *)attributes;
@end
typedef enum {
	NetIDVerifyServiceSvc_RequestStatus_none = 0,
	NetIDVerifyServiceSvc_RequestStatus_InProgress,
	NetIDVerifyServiceSvc_RequestStatus_Complete,
} NetIDVerifyServiceSvc_RequestStatus;
NetIDVerifyServiceSvc_RequestStatus NetIDVerifyServiceSvc_RequestStatus_enumFromString(NSString *string);
NSString * NetIDVerifyServiceSvc_RequestStatus_stringFromEnum(NetIDVerifyServiceSvc_RequestStatus enumValue);
@interface NetIDVerifyServiceSvc_VerificationResponse : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_Claims * Claims;
	USBoolean * IdentityCheckPassed;
	NetIDVerifyServiceSvc_ArrayOfKBVQuestion * KBVQuestions;
	NetIDVerifyServiceSvc_RequestStatus Status;
	NSString * TransactionID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_VerificationResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NetIDVerifyServiceSvc_Claims * Claims;
@property (retain) USBoolean * IdentityCheckPassed;
@property (retain) NetIDVerifyServiceSvc_ArrayOfKBVQuestion * KBVQuestions;
@property (assign) NetIDVerifyServiceSvc_RequestStatus Status;
@property (retain) NSString * TransactionID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_VerifyResponse : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_VerificationResponse * VerifyResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_VerifyResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NetIDVerifyServiceSvc_VerificationResponse * VerifyResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_NetIDVerifyException : NSObject
{
	
/* elements */
	NSString * Message;
	NSString * TransactionID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_NetIDVerifyException *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * Message;
@property (retain) NSString * TransactionID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_StatusRequest : NSObject
{
	
/* elements */
	NSString * CustomerReferenceID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_StatusRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * CustomerReferenceID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_GetRequestStatus : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_StatusRequest * StatusRequest;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_GetRequestStatus *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NetIDVerifyServiceSvc_StatusRequest * StatusRequest;
/* attributes */
- (NSDictionary *)attributes;
@end
typedef enum {
	NetIDVerifyServiceSvc_RequestStatusType_none = 0,
	NetIDVerifyServiceSvc_RequestStatusType_Unknown,
	NetIDVerifyServiceSvc_RequestStatusType_Incomplete,
	NetIDVerifyServiceSvc_RequestStatusType_Passed,
	NetIDVerifyServiceSvc_RequestStatusType_Failed,
	NetIDVerifyServiceSvc_RequestStatusType_Expired,
} NetIDVerifyServiceSvc_RequestStatusType;
NetIDVerifyServiceSvc_RequestStatusType NetIDVerifyServiceSvc_RequestStatusType_enumFromString(NSString *string);
NSString * NetIDVerifyServiceSvc_RequestStatusType_stringFromEnum(NetIDVerifyServiceSvc_RequestStatusType enumValue);
@interface NetIDVerifyServiceSvc_RequestStatusSummary : NSObject
{
	
/* elements */
	NSString * CustomerReferenceID;
	USBoolean * DateOfBirth;
	USBoolean * Is18OrOver;
	USBoolean * Name;
	NSString * Narrative;
	NSDate * RequestCompletedDateTime;
	NSDate * RequestExpirationDateTime;
	NSDate * RequestSubmittedDateTime;
	NetIDVerifyServiceSvc_RequestStatusType Status;
	NSString * TransactionID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_RequestStatusSummary *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * CustomerReferenceID;
@property (retain) USBoolean * DateOfBirth;
@property (retain) USBoolean * Is18OrOver;
@property (retain) USBoolean * Name;
@property (retain) NSString * Narrative;
@property (retain) NSDate * RequestCompletedDateTime;
@property (retain) NSDate * RequestExpirationDateTime;
@property (retain) NSDate * RequestSubmittedDateTime;
@property (assign) NetIDVerifyServiceSvc_RequestStatusType Status;
@property (retain) NSString * TransactionID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary : NSObject
{
	
/* elements */
	NSMutableArray *RequestStatusSummary;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addRequestStatusSummary:(NetIDVerifyServiceSvc_RequestStatusSummary *)toAdd;
@property (readonly) NSMutableArray * RequestStatusSummary;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_RequestStatusResponse : NSObject
{
	
/* elements */
	USBoolean * Found;
	NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary * Requests;
	NetIDVerifyServiceSvc_RequestStatusType Status;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_RequestStatusResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) USBoolean * Found;
@property (retain) NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary * Requests;
@property (assign) NetIDVerifyServiceSvc_RequestStatusType Status;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_GetRequestStatusResponse : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_RequestStatusResponse * GetRequestStatusResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_GetRequestStatusResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NetIDVerifyServiceSvc_RequestStatusResponse * GetRequestStatusResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NetIDVerifyServiceSvc_KBVAnswer : NSObject
{
	
/* elements */
	NSString * QuestionAnswer;
	NSString * QuestionNumber;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_KBVAnswer *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * QuestionAnswer;
@property (retain) NSString * QuestionNumber;
/* attributes */
- (NSDictionary *)attributes;
@end



@interface NetIDVerifyServiceSvc_ArrayOfKBVAnswer : NSObject
{
	
/* elements */
	NSMutableArray *KBVAnswer;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_ArrayOfKBVAnswer *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addKBVAnswer:(NetIDVerifyServiceSvc_KBVAnswer *)toAdd;
@property (readonly) NSMutableArray * KBVAnswer;
/* attributes */
- (NSDictionary *)attributes;
@end



@interface NetIDVerifyServiceSvc_AnswerQuestions : NSObject
{
	
/* elements */
	NSString * TransactionID;
	NetIDVerifyServiceSvc_ArrayOfKBVAnswer * KBVAnswers;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_AnswerQuestions *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * TransactionID;
@property (retain) NetIDVerifyServiceSvc_ArrayOfKBVAnswer * KBVAnswers;
/* attributes */
- (NSDictionary *)attributes;
@end



typedef enum
{
	NetIDVerifyServiceSvc_KBVResult_none = 0,
	NetIDVerifyServiceSvc_KBVResult_Indeterminate,
	NetIDVerifyServiceSvc_KBVResult_Pass,
	NetIDVerifyServiceSvc_KBVResult_Fail,
} NetIDVerifyServiceSvc_KBVResult;
NetIDVerifyServiceSvc_KBVResult NetIDVerifyServiceSvc_KBVResult_enumFromString(NSString *string);
NSString * NetIDVerifyServiceSvc_KBVResult_stringFromEnum(NetIDVerifyServiceSvc_KBVResult enumValue);

@interface NetIDVerifyServiceSvc_AnswerQuestionsResponse : NSObject
{
	
/* elements */
	NetIDVerifyServiceSvc_KBVResult AnswerQuestionsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NetIDVerifyServiceSvc_AnswerQuestionsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (assign) NetIDVerifyServiceSvc_KBVResult AnswerQuestionsResult;
/* attributes */
- (NSDictionary *)attributes;
@end


#pragma mark - _______*********NetIdVerify_v3*********_______


/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */


#import <libxml/parser.h>
#import "xs.h"
#import "NetIDVerifyServiceSvc.h"
#import "tns1.h"
#import "tns2.h"
#import "tns3.h"
@class NetIDVerify_v3Binding;
@interface NetIDVerifyServiceSvc : NSObject
{
	
}

+ (NetIDVerify_v3Binding *)NetIDVerify_v3Binding;

@end


@class NetIDVerify_v3BindingResponse;
@class NetIDVerify_v3BindingOperation;


@protocol NetIDVerify_v3BindingResponseDelegate <NSObject>
- (void) operation:(NetIDVerify_v3BindingOperation *)operation completedWithResponse:(NetIDVerify_v3BindingResponse *)response;

@end



#pragma mark - *************NetIDverify v3 binding*******************


@interface NetIDVerify_v3Binding : NSObject <NetIDVerify_v3BindingResponseDelegate>
{
	NSURL               *address;
	NSTimeInterval      defaultTimeout;
	NSMutableArray      *cookies;
	BOOL                logXMLInOut;
	BOOL                synchronousOperationComplete;
	NSString            *authUsername;
	NSString            *authPassword;
}

@property (copy)              NSURL             * address;
@property (assign)            BOOL                logXMLInOut;
@property (assign)            NSTimeInterval      defaultTimeout;
@property (nonatomic, retain) NSMutableArray    * cookies;
@property (nonatomic, retain) NSString          * authUsername;
@property (nonatomic, retain) NSString          * authPassword;

- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(NetIDVerify_v3BindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (NetIDVerify_v3BindingResponse *)VerifyUsingParameters:(NetIDVerifyServiceSvc_Verify *)aParameters ;
- (void)VerifyAsyncUsingParameters:(NetIDVerifyServiceSvc_Verify *)aParameters  delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate;
- (NetIDVerify_v3BindingResponse *)GetRequestStatusUsingParameters:(NetIDVerifyServiceSvc_GetRequestStatus *)aParameters ;
- (void)GetRequestStatusAsyncUsingParameters:(NetIDVerifyServiceSvc_GetRequestStatus *)aParameters  delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate;
- (NetIDVerify_v3BindingResponse *)AnswerQuestionsUsingParameters:(NetIDVerifyServiceSvc_AnswerQuestions *)aParameters ;
- (void)AnswerQuestionsAsyncUsingParameters:(NetIDVerifyServiceSvc_AnswerQuestions *)aParameters  delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate;
@end


#pragma mark - *****NetIdVerify_v3 Binding Operation********


@interface NetIDVerify_v3BindingOperation : NSOperation
{
	NetIDVerify_v3Binding                       * binding;
	NetIDVerify_v3BindingResponse               * response;
	id<NetIDVerify_v3BindingResponseDelegate>     delegate;
	NSMutableData                               * responseData;
	NSURLConnection                             * urlConnection;
}
@property (retain)   NetIDVerify_v3Binding      *binding;
@property (readonly) NetIDVerify_v3BindingResponse *response;
@property (nonatomic, assign) id<NetIDVerify_v3BindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData     *responseData;
@property (nonatomic, retain) NSURLConnection   *urlConnection;


- (id)initWithBinding:(NetIDVerify_v3Binding *)aBinding delegate:(id<NetIDVerify_v3BindingResponseDelegate>)aDelegate;


@end

///////////////////////

#pragma mark - ***** Verify client ******


@interface NetIDVerify_v3Binding_Verify : NetIDVerify_v3BindingOperation
{
	NetIDVerifyServiceSvc_Verify * parameters;
}

@property (retain) NetIDVerifyServiceSvc_Verify * parameters;

- (id)initWithBinding:(NetIDVerify_v3Binding *)aBinding delegate:(id<NetIDVerify_v3BindingResponseDelegate>)aDelegate
	parameters:(NetIDVerifyServiceSvc_Verify *)aParameters
;
@end



@interface NetIDVerify_v3Binding_GetRequestStatus : NetIDVerify_v3BindingOperation
{
	NetIDVerifyServiceSvc_GetRequestStatus * parameters;
}
@property (retain) NetIDVerifyServiceSvc_GetRequestStatus * parameters;

- (id)initWithBinding:(NetIDVerify_v3Binding *)aBinding delegate:(id<NetIDVerify_v3BindingResponseDelegate>)aDelegate
	parameters:(NetIDVerifyServiceSvc_GetRequestStatus *)aParameters
;
@end




@interface NetIDVerify_v3Binding_AnswerQuestions : NetIDVerify_v3BindingOperation
{
	NetIDVerifyServiceSvc_AnswerQuestions * parameters;
}
@property (retain) NetIDVerifyServiceSvc_AnswerQuestions * parameters;
- (id)initWithBinding:(NetIDVerify_v3Binding *)aBinding delegate:(id<NetIDVerify_v3BindingResponseDelegate>)aDelegate
	parameters:(NetIDVerifyServiceSvc_AnswerQuestions *)aParameters
;
@end



@interface NetIDVerify_v3Binding_envelope : NSObject
{
}
+ (NetIDVerify_v3Binding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end




@interface NetIDVerify_v3BindingResponse : NSObject
{
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
