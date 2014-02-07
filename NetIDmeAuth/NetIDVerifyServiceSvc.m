#import "NetIDVerifyServiceSvc.h"
#import <libxml/xmlstring.h>
#if TARGET_OS_IPHONE
#import <CFNetwork/CFNetwork.h>
#endif


#pragma mark - ********* Attributes ***********

@implementation NetIDVerifyServiceSvc_Name
- (id)init
{
	if((self = [super init]))
    {
		Title = 0;
		FirstName = 0;
		MiddleNames = 0;
		LastName = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}

- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}

- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}

- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Title != 0) {
		xmlAddChild(node, [self.Title xmlNodeForDoc:node->doc elementName:@"Title" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.FirstName != 0) {
		xmlAddChild(node, [self.FirstName xmlNodeForDoc:node->doc elementName:@"FirstName" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.MiddleNames != 0) {
		xmlAddChild(node, [self.MiddleNames xmlNodeForDoc:node->doc elementName:@"MiddleNames" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.LastName != 0) {
		xmlAddChild(node, [self.LastName xmlNodeForDoc:node->doc elementName:@"LastName" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}

/* elements */
@synthesize Title;
@synthesize FirstName;
@synthesize MiddleNames;
@synthesize LastName;
/* attributes */

- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}

+ (NetIDVerifyServiceSvc_Name *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_Name *newObject = [NetIDVerifyServiceSvc_Name alloc];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}

- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}

- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Title")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Title = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "FirstName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.FirstName = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "MiddleNames")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.MiddleNames = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "LastName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.LastName = newChild;
			}
		}
	}
}
@end

//////

////#pragma mark - ********  DOB  *********


@implementation NetIDVerifyServiceSvc_DOB
- (id)init
{
	if((self = [super init]))
    {
		DayOfBirth = 0;
		MonthOfBirth = 0;
		YearOfBirth = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.DayOfBirth != 0) {
		xmlAddChild(node, [self.DayOfBirth xmlNodeForDoc:node->doc elementName:@"DayOfBirth" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.MonthOfBirth != 0) {
		xmlAddChild(node, [self.MonthOfBirth xmlNodeForDoc:node->doc elementName:@"MonthOfBirth" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.YearOfBirth != 0) {
		xmlAddChild(node, [self.YearOfBirth xmlNodeForDoc:node->doc elementName:@"YearOfBirth" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize DayOfBirth;
@synthesize MonthOfBirth;
@synthesize YearOfBirth;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_DOB *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_DOB *newObject = [NetIDVerifyServiceSvc_DOB new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "DayOfBirth")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.DayOfBirth = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "MonthOfBirth")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.MonthOfBirth = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "YearOfBirth")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.YearOfBirth = newChild;
			}
		}
	}
}
@end


///#pragma mark - *************  Line Format   ***************


@implementation NetIDVerifyServiceSvc_LineFormat
- (id)init
{
	if((self = [super init])) {
		Line1 = 0;
		Line2 = 0;
		Line3 = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Line1 != 0) {
		xmlAddChild(node, [self.Line1 xmlNodeForDoc:node->doc elementName:@"Line1" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Line2 != 0) {
		xmlAddChild(node, [self.Line2 xmlNodeForDoc:node->doc elementName:@"Line2" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Line3 != 0) {
		xmlAddChild(node, [self.Line3 xmlNodeForDoc:node->doc elementName:@"Line3" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize Line1;
@synthesize Line2;
@synthesize Line3;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_LineFormat *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_LineFormat *newObject = [NetIDVerifyServiceSvc_LineFormat new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Line1")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Line1 = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Line2")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Line2 = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Line3")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Line3 = newChild;
			}
		}
	}
}
@end


/// #pragma mark - ********* Component Format  ***********

@implementation NetIDVerifyServiceSvc_ComponentFormat
- (id)init
{
	if((self = [super init])) {
		FlatNumber = 0;
		HouseName = 0;
		HouseNumber = 0;
		StreetName = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.FlatNumber != 0) {
		xmlAddChild(node, [self.FlatNumber xmlNodeForDoc:node->doc elementName:@"FlatNumber" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.HouseName != 0) {
		xmlAddChild(node, [self.HouseName xmlNodeForDoc:node->doc elementName:@"HouseName" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.HouseNumber != 0) {
		xmlAddChild(node, [self.HouseNumber xmlNodeForDoc:node->doc elementName:@"HouseNumber" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.StreetName != 0) {
		xmlAddChild(node, [self.StreetName xmlNodeForDoc:node->doc elementName:@"StreetName" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize FlatNumber;
@synthesize HouseName;
@synthesize HouseNumber;
@synthesize StreetName;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_ComponentFormat *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_ComponentFormat *newObject = [NetIDVerifyServiceSvc_ComponentFormat new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "FlatNumber")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.FlatNumber = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "HouseName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.HouseName = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "HouseNumber")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.HouseNumber = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "StreetName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.StreetName = newChild;
			}
		}
	}
}
@end



@implementation NetIDVerifyServiceSvc_Address
- (id)init
{
	if((self = [super init])) {
		LineFormatAddress = 0;
		ComponentFormatAddress = 0;
		TownCityName = 0;
		RegionOrState = 0;
		PostalCode = 0;
		TwoLetterISOCountryCode = 0;
		TelephoneNumber = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.LineFormatAddress != 0)
    {
		xmlAddChild(node, [self.LineFormatAddress xmlNodeForDoc:node->doc elementName:@"LineFormatAddress" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.ComponentFormatAddress != 0)
    {
		xmlAddChild(node, [self.ComponentFormatAddress xmlNodeForDoc:node->doc elementName:@"ComponentFormatAddress" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.TownCityName != 0)
    {
		xmlAddChild(node, [self.TownCityName xmlNodeForDoc:node->doc elementName:@"TownCityName" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.RegionOrState != 0)
    {
		xmlAddChild(node, [self.RegionOrState xmlNodeForDoc:node->doc elementName:@"RegionOrState" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.PostalCode != 0)
    {
		xmlAddChild(node, [self.PostalCode xmlNodeForDoc:node->doc elementName:@"PostalCode" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.TwoLetterISOCountryCode != 0)
    {
		xmlAddChild(node, [self.TwoLetterISOCountryCode xmlNodeForDoc:node->doc elementName:@"TwoLetterISOCountryCode" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.TelephoneNumber != 0)
    {
		xmlAddChild(node, [self.TelephoneNumber xmlNodeForDoc:node->doc elementName:@"TelephoneNumber" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize LineFormatAddress;
@synthesize ComponentFormatAddress;
@synthesize TownCityName;
@synthesize RegionOrState;
@synthesize PostalCode;
@synthesize TwoLetterISOCountryCode;
@synthesize TelephoneNumber;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_Address *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_Address *newObject = [NetIDVerifyServiceSvc_Address new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "LineFormatAddress")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_LineFormat class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.LineFormatAddress = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "ComponentFormatAddress")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_ComponentFormat class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.ComponentFormatAddress = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "TownCityName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.TownCityName = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "RegionOrState")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.RegionOrState = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "PostalCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.PostalCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "TwoLetterISOCountryCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.TwoLetterISOCountryCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "TelephoneNumber")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.TelephoneNumber = newChild;
			}
		}
	}
}
@end




@implementation NetIDVerifyServiceSvc_CreditCardAVS
- (id)init
{
	if((self = [super init])) {
		CardNumber = 0;
		ExpiryDate = 0;
		IssueNumber = 0;
		ValidFromDate = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.CardNumber != 0) {
		xmlAddChild(node, [self.CardNumber xmlNodeForDoc:node->doc elementName:@"CardNumber" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.ExpiryDate != 0) {
		xmlAddChild(node, [self.ExpiryDate xmlNodeForDoc:node->doc elementName:@"ExpiryDate" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.IssueNumber != 0) {
		xmlAddChild(node, [self.IssueNumber xmlNodeForDoc:node->doc elementName:@"IssueNumber" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.ValidFromDate != 0) {
		xmlAddChild(node, [self.ValidFromDate xmlNodeForDoc:node->doc elementName:@"ValidFromDate" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize CardNumber;
@synthesize ExpiryDate;
@synthesize IssueNumber;
@synthesize ValidFromDate;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_CreditCardAVS *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_CreditCardAVS *newObject = [NetIDVerifyServiceSvc_CreditCardAVS new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "CardNumber")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.CardNumber = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "ExpiryDate")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.ExpiryDate = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "IssueNumber")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.IssueNumber = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "ValidFromDate")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.ValidFromDate = newChild;
			}
		}
	}
}
@end





@implementation NetIDVerifyServiceSvc_AdditionalPII
- (id)init
{
	if((self = [super init])) {
		CreditCardAVS = 0;
		DrivingLicenseNumber = 0;
		DrivingLicenseState = 0;
		NationalID = 0;
		PassportMRZ = 0;
		PerformAlgorithmicCheckOnly = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.CreditCardAVS != 0) {
		xmlAddChild(node, [self.CreditCardAVS xmlNodeForDoc:node->doc elementName:@"CreditCardAVS" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.DrivingLicenseNumber != 0) {
		xmlAddChild(node, [self.DrivingLicenseNumber xmlNodeForDoc:node->doc elementName:@"DrivingLicenseNumber" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.DrivingLicenseState != 0) {
		xmlAddChild(node, [self.DrivingLicenseState xmlNodeForDoc:node->doc elementName:@"DrivingLicenseState" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.NationalID != 0) {
		xmlAddChild(node, [self.NationalID xmlNodeForDoc:node->doc elementName:@"NationalID" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.PassportMRZ != 0) {
		xmlAddChild(node, [self.PassportMRZ xmlNodeForDoc:node->doc elementName:@"PassportMRZ" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.PerformAlgorithmicCheckOnly != 0) {
		xmlAddChild(node, [self.PerformAlgorithmicCheckOnly xmlNodeForDoc:node->doc elementName:@"PerformAlgorithmicCheckOnly" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize CreditCardAVS;
@synthesize DrivingLicenseNumber;
@synthesize DrivingLicenseState;
@synthesize NationalID;
@synthesize PassportMRZ;
@synthesize PerformAlgorithmicCheckOnly;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_AdditionalPII *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_AdditionalPII *newObject = [NetIDVerifyServiceSvc_AdditionalPII new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "CreditCardAVS")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_CreditCardAVS class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.CreditCardAVS = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "DrivingLicenseNumber")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.DrivingLicenseNumber = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "DrivingLicenseState")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.DrivingLicenseState = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "NationalID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.NationalID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "PassportMRZ")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.PassportMRZ = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "PerformAlgorithmicCheckOnly")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.PerformAlgorithmicCheckOnly = newChild;
			}
		}
	}
}
@end


#pragma  mark - ********** Verification Data *********


@implementation NetIDVerifyServiceSvc_VerificationData
- (id)init
{
	if((self = [super init])) {
		CustomerReferenceID = 0;
		Name = 0;
		DOB = 0;
		Address = 0;
		IsMale = 0;
		EmailAddress = 0;
		AdditionalPII = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.CustomerReferenceID != 0) {
		xmlAddChild(node, [self.CustomerReferenceID xmlNodeForDoc:node->doc elementName:@"CustomerReferenceID" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Name != 0) {
		xmlAddChild(node, [self.Name xmlNodeForDoc:node->doc elementName:@"Name" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.DOB != 0) {
		xmlAddChild(node, [self.DOB xmlNodeForDoc:node->doc elementName:@"DOB" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Address != 0) {
		xmlAddChild(node, [self.Address xmlNodeForDoc:node->doc elementName:@"Address" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.IsMale != 0) {
		xmlAddChild(node, [self.IsMale xmlNodeForDoc:node->doc elementName:@"IsMale" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.EmailAddress != 0) {
		xmlAddChild(node, [self.EmailAddress xmlNodeForDoc:node->doc elementName:@"EmailAddress" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.AdditionalPII != 0) {
		xmlAddChild(node, [self.AdditionalPII xmlNodeForDoc:node->doc elementName:@"AdditionalPII" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize CustomerReferenceID;
@synthesize Name;
@synthesize DOB;
@synthesize Address;
@synthesize IsMale;
@synthesize EmailAddress;
@synthesize AdditionalPII;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_VerificationData *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_VerificationData *newObject = [NetIDVerifyServiceSvc_VerificationData new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "CustomerReferenceID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.CustomerReferenceID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Name")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_Name class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Name = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "DOB")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_DOB class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.DOB = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Address")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_Address class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Address = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "IsMale")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.IsMale = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "EmailAddress")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.EmailAddress = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "AdditionalPII")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_AdditionalPII class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.AdditionalPII = newChild;
			}
		}
	}
}
@end


#pragma  mark - ******* Verification Message ********

@implementation NetIDVerifyServiceSvc_VerifyRequestMessage
- (id)init
{
	if((self = [super init])) {
		ConfigurationProfileName = 0;
		VerificationData = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.ConfigurationProfileName != 0) {
		xmlAddChild(node, [self.ConfigurationProfileName xmlNodeForDoc:node->doc elementName:@"ConfigurationProfileName" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.VerificationData != 0) {
		xmlAddChild(node, [self.VerificationData xmlNodeForDoc:node->doc elementName:@"VerificationData" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize ConfigurationProfileName;
@synthesize VerificationData;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_VerifyRequestMessage *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_VerifyRequestMessage *newObject = [NetIDVerifyServiceSvc_VerifyRequestMessage new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "ConfigurationProfileName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.ConfigurationProfileName = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "VerificationData")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_VerificationData class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.VerificationData = newChild;
			}
		}
	}
}
@end


#pragma mark - ****** Verify *******

@implementation NetIDVerifyServiceSvc_Verify

- (id)init
{
	if((self = [super init]))
    {
		VerificationRequest = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}

- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}

- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}

- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.VerificationRequest != 0) {
		xmlAddChild(node, [self.VerificationRequest xmlNodeForDoc:node->doc elementName:@"VerificationRequest" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}

/* elements */
@synthesize VerificationRequest;
/* attributes */

- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}

+ (NetIDVerifyServiceSvc_Verify *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_Verify *newObject = [NetIDVerifyServiceSvc_Verify new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}

- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next )
    {
		if(cur->type == XML_ELEMENT_NODE)
        {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL)
            {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "VerificationRequest"))
            {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL)
                {
					elementClass = [NetIDVerifyServiceSvc_VerifyRequestMessage class];
				}
                else
                {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1)
                    {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					}
                    else
                    {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.VerificationRequest = newChild;
			}
		}
	}
}
@end

#pragma mark -  ****** Summary ******


@implementation NetIDVerifyServiceSvc_Summary
- (id)init
{
	if((self = [super init])) {
		Name = 0;
		DateOfBirth = 0;
		Address = 0;
		Is18OrOver = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Name != 0) {
		xmlAddChild(node, [self.Name xmlNodeForDoc:node->doc elementName:@"Name" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.DateOfBirth != 0) {
		xmlAddChild(node, [self.DateOfBirth xmlNodeForDoc:node->doc elementName:@"DateOfBirth" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Address != 0) {
		xmlAddChild(node, [self.Address xmlNodeForDoc:node->doc elementName:@"Address" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Is18OrOver != 0) {
		xmlAddChild(node, [self.Is18OrOver xmlNodeForDoc:node->doc elementName:@"Is18OrOver" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize Name;
@synthesize DateOfBirth;
@synthesize Address;
@synthesize Is18OrOver;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_Summary *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_Summary *newObject = [[NetIDVerifyServiceSvc_Summary new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Name")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Name = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "DateOfBirth")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.DateOfBirth = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Address")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Address = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Is18OrOver")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Is18OrOver = newChild;
			}
		}
	}
}
@end



tns1_ClaimMatchType tns1_ClaimMatchType_enumFromString(NSString *string)
{
	if([string isEqualToString:@"NotAvailable"]) {
		return tns1_ClaimMatchType_NotAvailable;
	}
	if([string isEqualToString:@"NotVerified"]) {
		return tns1_ClaimMatchType_NotVerified;
	}
	if([string isEqualToString:@"Verified"]) {
		return tns1_ClaimMatchType_Verified;
	}
	
	return tns1_ClaimMatchType_none;
}
NSString * tns1_ClaimMatchType_stringFromEnum(tns1_ClaimMatchType enumValue)
{
	switch (enumValue) {
		case tns1_ClaimMatchType_NotAvailable:
			return @"NotAvailable";
			break;
		case tns1_ClaimMatchType_NotVerified:
			return @"NotVerified";
			break;
		case tns1_ClaimMatchType_Verified:
			return @"Verified";
			break;
		default:
			return @"";
	}
}
@implementation NetIDVerifyServiceSvc_Claim
- (id)init
{
	if((self = [super init])) {
		MatchType = 0;
		TypeURI = 0;
		Value = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(TypeURI != nil) [TypeURI release];
	if(Value != nil) [Value release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.MatchType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"NetIDVerifyServiceSvc:MatchType", [tns1_ClaimMatchType_stringFromEnum(self.MatchType) xmlString]);
	}
	if(self.TypeURI != 0) {
		xmlAddChild(node, [self.TypeURI xmlNodeForDoc:node->doc elementName:@"TypeURI" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Value != 0) {
		xmlAddChild(node, [self.Value xmlNodeForDoc:node->doc elementName:@"Value" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize MatchType;
@synthesize TypeURI;
@synthesize Value;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_Claim *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_Claim *newObject = [[NetIDVerifyServiceSvc_Claim new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "MatchType")) {
				
				tns1_ClaimMatchType enumRepresentation = tns1_ClaimMatchType_enumFromString(elementString);
				self.MatchType = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "TypeURI")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.TypeURI = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Value")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Value = newChild;
			}
		}
	}
}
@end

#pragma mark -  ******* Claim Array *******

@implementation NetIDVerifyServiceSvc_ArrayOfClaim
- (id)init
{
	if((self = [super init])) {
		Claim = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	if(Claim != nil) [Claim release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Claim != 0) {
		for(NetIDVerifyServiceSvc_Claim * child in self.Claim) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"Claim" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
		}
	}
}
/* elements */
@synthesize Claim;
- (void)addClaim:(NetIDVerifyServiceSvc_Claim *)toAdd
{
	if(toAdd != nil) [Claim addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_ArrayOfClaim *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_ArrayOfClaim *newObject = [[NetIDVerifyServiceSvc_ArrayOfClaim new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Claim")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_Claim class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.Claim addObject:newChild];
			}
		}
	}
}
@end


#pragma  mark - ********** Claims  *********

@implementation NetIDVerifyServiceSvc_Claims
- (id)init
{
	if((self = [super init])) {
		Summary = 0;
		List = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(Summary != nil) [Summary release];
	if(List != nil) [List release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Summary != 0) {
		xmlAddChild(node, [self.Summary xmlNodeForDoc:node->doc elementName:@"Summary" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.List != 0) {
		xmlAddChild(node, [self.List xmlNodeForDoc:node->doc elementName:@"List" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize Summary;
@synthesize List;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_Claims *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_Claims *newObject = [[NetIDVerifyServiceSvc_Claims new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Summary")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_Summary class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Summary = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "List")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_ArrayOfClaim class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.List = newChild;
			}
		}
	}
}
@end


@implementation tns2_ArrayOfstring
- (id)init
{
	if((self = [super init])) {
		string = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	if(string != nil) [string release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"tns2";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"tns2", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.string != 0) {
		for(NSString * child in self.string) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"string" elementNSPrefix:@"tns2"]);
		}
	}
}
/* elements */
@synthesize string;
- (void)addString:(NSString *)toAdd
{
	if(toAdd != nil) [string addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (tns2_ArrayOfstring *)deserializeNode:(xmlNodePtr)cur
{
	tns2_ArrayOfstring *newObject = [[tns2_ArrayOfstring new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "string")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.string addObject:newChild];
			}
		}
	}
}
@end

#pragma mark - ******* KBV Question **********

@implementation NetIDVerifyServiceSvc_KBVQuestion
- (id)init
{
	if((self = [super init])) {
		Number = 0;
		QuestionAnswers = 0;
		QuestionText = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(Number != nil) [Number release];
	if(QuestionAnswers != nil) [QuestionAnswers release];
	if(QuestionText != nil) [QuestionText release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Number != 0) {
		xmlAddChild(node, [self.Number xmlNodeForDoc:node->doc elementName:@"Number" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.QuestionAnswers != 0) {
		xmlAddChild(node, [self.QuestionAnswers xmlNodeForDoc:node->doc elementName:@"QuestionAnswers" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.QuestionText != 0) {
		xmlAddChild(node, [self.QuestionText xmlNodeForDoc:node->doc elementName:@"QuestionText" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize Number;
@synthesize QuestionAnswers;
@synthesize QuestionText;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_KBVQuestion *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_KBVQuestion *newObject = [[NetIDVerifyServiceSvc_KBVQuestion new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Number")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Number = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "QuestionAnswers")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [tns2_ArrayOfstring class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.QuestionAnswers = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "QuestionText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.QuestionText = newChild;
			}
		}
	}
}
@end


#pragma mark - ******** Array of KBV Question  ********

@implementation NetIDVerifyServiceSvc_ArrayOfKBVQuestion
- (id)init
{
	if((self = [super init])) {
		KBVQuestion = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	if(KBVQuestion != nil) [KBVQuestion release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.KBVQuestion != 0) {
		for(NetIDVerifyServiceSvc_KBVQuestion * child in self.KBVQuestion) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"KBVQuestion" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
		}
	}
}
/* elements */
@synthesize KBVQuestion;
- (void)addKBVQuestion:(NetIDVerifyServiceSvc_KBVQuestion *)toAdd
{
	if(toAdd != nil) [KBVQuestion addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_ArrayOfKBVQuestion *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_ArrayOfKBVQuestion *newObject = [[NetIDVerifyServiceSvc_ArrayOfKBVQuestion new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "KBVQuestion")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_KBVQuestion class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.KBVQuestion addObject:newChild];
			}
		}
	}
}
@end

#pragma mark - ***** Request Status from Enum From String class

NetIDVerifyServiceSvc_RequestStatus NetIDVerifyServiceSvc_RequestStatus_enumFromString(NSString *string)
{
	if([string isEqualToString:@"InProgress"]) {
		return NetIDVerifyServiceSvc_RequestStatus_InProgress;
	}
	if([string isEqualToString:@"Complete"]) {
		return NetIDVerifyServiceSvc_RequestStatus_Complete;
	}
	
	return NetIDVerifyServiceSvc_RequestStatus_none;
}
NSString * NetIDVerifyServiceSvc_RequestStatus_stringFromEnum(NetIDVerifyServiceSvc_RequestStatus enumValue)
{
	switch (enumValue) {
		case NetIDVerifyServiceSvc_RequestStatus_InProgress:
			return @"InProgress";
			break;
		case NetIDVerifyServiceSvc_RequestStatus_Complete:
			return @"Complete";
			break;
		default:
			return @"";
	}
}
@implementation NetIDVerifyServiceSvc_VerificationResponse
- (id)init
{
	if((self = [super init])) {
		Claims = 0;
		IdentityCheckPassed = 0;
		KBVQuestions = 0;
		Status = 0;
		TransactionID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(Claims != nil) [Claims release];
	if(IdentityCheckPassed != nil) [IdentityCheckPassed release];
	if(KBVQuestions != nil) [KBVQuestions release];
	if(TransactionID != nil) [TransactionID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Claims != 0) {
		xmlAddChild(node, [self.Claims xmlNodeForDoc:node->doc elementName:@"Claims" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.IdentityCheckPassed != 0) {
		xmlAddChild(node, [self.IdentityCheckPassed xmlNodeForDoc:node->doc elementName:@"IdentityCheckPassed" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.KBVQuestions != 0) {
		xmlAddChild(node, [self.KBVQuestions xmlNodeForDoc:node->doc elementName:@"KBVQuestions" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"NetIDVerifyServiceSvc:Status", [NetIDVerifyServiceSvc_RequestStatus_stringFromEnum(self.Status) xmlString]);
	}
	if(self.TransactionID != 0) {
		xmlAddChild(node, [self.TransactionID xmlNodeForDoc:node->doc elementName:@"TransactionID" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize Claims;
@synthesize IdentityCheckPassed;
@synthesize KBVQuestions;
@synthesize Status;
@synthesize TransactionID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_VerificationResponse *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_VerificationResponse *newObject = [[NetIDVerifyServiceSvc_VerificationResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Claims")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_Claims class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Claims = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "IdentityCheckPassed")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.IdentityCheckPassed = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "KBVQuestions")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_ArrayOfKBVQuestion class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.KBVQuestions = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Status")) {
				
				NetIDVerifyServiceSvc_RequestStatus enumRepresentation = NetIDVerifyServiceSvc_RequestStatus_enumFromString(elementString);
				self.Status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "TransactionID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.TransactionID = newChild;
			}
		}
	}
}
@end

#pragma mark - ******* Verify Response ********

@implementation NetIDVerifyServiceSvc_VerifyResponse
- (id)init
{
	if((self = [super init])) {
		VerifyResult = 0;
	}
	
	return self;
}

- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}

- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
    
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}

- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.VerifyResult != 0) {
		xmlAddChild(node, [self.VerifyResult xmlNodeForDoc:node->doc elementName:@"VerifyResult" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize VerifyResult;
/* attributes */

- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}

+ (NetIDVerifyServiceSvc_VerifyResponse *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_VerifyResponse *newObject = [[NetIDVerifyServiceSvc_VerifyResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}

- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "VerifyResult")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_VerificationResponse class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.VerifyResult = newChild;
			}
		}
	}
}
@end

#pragma mark - ******** NetIDme Exception *******

@implementation NetIDVerifyServiceSvc_NetIDVerifyException
- (id)init
{
	if((self = [super init])) {
		Message = 0;
		TransactionID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(Message != nil) [Message release];
	if(TransactionID != nil) [TransactionID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Message != 0) {
		xmlAddChild(node, [self.Message xmlNodeForDoc:node->doc elementName:@"Message" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.TransactionID != 0) {
		xmlAddChild(node, [self.TransactionID xmlNodeForDoc:node->doc elementName:@"TransactionID" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize Message;
@synthesize TransactionID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}

+ (NetIDVerifyServiceSvc_NetIDVerifyException *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_NetIDVerifyException *newObject = [[NetIDVerifyServiceSvc_NetIDVerifyException new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}

- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Message")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Message = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "TransactionID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.TransactionID = newChild;
			}
		}
	}
}
@end

#pragma mark - ******* Status Request *******

@implementation NetIDVerifyServiceSvc_StatusRequest
- (id)init
{
	if((self = [super init])) {
		CustomerReferenceID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(CustomerReferenceID != nil) [CustomerReferenceID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.CustomerReferenceID != 0) {
		xmlAddChild(node, [self.CustomerReferenceID xmlNodeForDoc:node->doc elementName:@"CustomerReferenceID" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize CustomerReferenceID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}


+ (NetIDVerifyServiceSvc_StatusRequest *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_StatusRequest *newObject = [[NetIDVerifyServiceSvc_StatusRequest new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "CustomerReferenceID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.CustomerReferenceID = newChild;
			}
		}
	}
}
@end

#pragma mark - ******** Get Reauest *****

@implementation NetIDVerifyServiceSvc_GetRequestStatus
- (id)init
{
	if((self = [super init])) {
		StatusRequest = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(StatusRequest != nil) [StatusRequest release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.StatusRequest != 0) {
		xmlAddChild(node, [self.StatusRequest xmlNodeForDoc:node->doc elementName:@"StatusRequest" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize StatusRequest;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_GetRequestStatus *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_GetRequestStatus *newObject = [[NetIDVerifyServiceSvc_GetRequestStatus new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "StatusRequest")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_StatusRequest class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.StatusRequest = newChild;
			}
		}
	}
}
@end

NetIDVerifyServiceSvc_RequestStatusType NetIDVerifyServiceSvc_RequestStatusType_enumFromString(NSString *string)
{
	if([string isEqualToString:@"Unknown"]) {
		return NetIDVerifyServiceSvc_RequestStatusType_Unknown;
	}
	if([string isEqualToString:@"Incomplete"]) {
		return NetIDVerifyServiceSvc_RequestStatusType_Incomplete;
	}
	if([string isEqualToString:@"Passed"]) {
		return NetIDVerifyServiceSvc_RequestStatusType_Passed;
	}
	if([string isEqualToString:@"Failed"]) {
		return NetIDVerifyServiceSvc_RequestStatusType_Failed;
	}
	if([string isEqualToString:@"Expired"]) {
		return NetIDVerifyServiceSvc_RequestStatusType_Expired;
	}
	
	return NetIDVerifyServiceSvc_RequestStatusType_none;
}
NSString * NetIDVerifyServiceSvc_RequestStatusType_stringFromEnum(NetIDVerifyServiceSvc_RequestStatusType enumValue)
{
	switch (enumValue) {
		case NetIDVerifyServiceSvc_RequestStatusType_Unknown:
			return @"Unknown";
			break;
		case NetIDVerifyServiceSvc_RequestStatusType_Incomplete:
			return @"Incomplete";
			break;
		case NetIDVerifyServiceSvc_RequestStatusType_Passed:
			return @"Passed";
			break;
		case NetIDVerifyServiceSvc_RequestStatusType_Failed:
			return @"Failed";
			break;
		case NetIDVerifyServiceSvc_RequestStatusType_Expired:
			return @"Expired";
			break;
		default:
			return @"";
	}
}
@implementation NetIDVerifyServiceSvc_RequestStatusSummary
- (id)init
{
	if((self = [super init])) {
		CustomerReferenceID = 0;
		DateOfBirth = 0;
		Is18OrOver = 0;
		Name = 0;
		Narrative = 0;
		RequestCompletedDateTime = 0;
		RequestExpirationDateTime = 0;
		RequestSubmittedDateTime = 0;
		Status = 0;
		TransactionID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(CustomerReferenceID != nil) [CustomerReferenceID release];
	if(DateOfBirth != nil) [DateOfBirth release];
	if(Is18OrOver != nil) [Is18OrOver release];
	if(Name != nil) [Name release];
	if(Narrative != nil) [Narrative release];
	if(RequestCompletedDateTime != nil) [RequestCompletedDateTime release];
	if(RequestExpirationDateTime != nil) [RequestExpirationDateTime release];
	if(RequestSubmittedDateTime != nil) [RequestSubmittedDateTime release];
	if(TransactionID != nil) [TransactionID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.CustomerReferenceID != 0) {
		xmlAddChild(node, [self.CustomerReferenceID xmlNodeForDoc:node->doc elementName:@"CustomerReferenceID" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.DateOfBirth != 0) {
		xmlAddChild(node, [self.DateOfBirth xmlNodeForDoc:node->doc elementName:@"DateOfBirth" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Is18OrOver != 0) {
		xmlAddChild(node, [self.Is18OrOver xmlNodeForDoc:node->doc elementName:@"Is18OrOver" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Name != 0) {
		xmlAddChild(node, [self.Name xmlNodeForDoc:node->doc elementName:@"Name" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Narrative != 0) {
		xmlAddChild(node, [self.Narrative xmlNodeForDoc:node->doc elementName:@"Narrative" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.RequestCompletedDateTime != 0) {
		xmlAddChild(node, [self.RequestCompletedDateTime xmlNodeForDoc:node->doc elementName:@"RequestCompletedDateTime" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.RequestExpirationDateTime != 0) {
		xmlAddChild(node, [self.RequestExpirationDateTime xmlNodeForDoc:node->doc elementName:@"RequestExpirationDateTime" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.RequestSubmittedDateTime != 0) {
		xmlAddChild(node, [self.RequestSubmittedDateTime xmlNodeForDoc:node->doc elementName:@"RequestSubmittedDateTime" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"NetIDVerifyServiceSvc:Status", [NetIDVerifyServiceSvc_RequestStatusType_stringFromEnum(self.Status) xmlString]);
	}
	if(self.TransactionID != 0) {
		xmlAddChild(node, [self.TransactionID xmlNodeForDoc:node->doc elementName:@"TransactionID" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize CustomerReferenceID;
@synthesize DateOfBirth;
@synthesize Is18OrOver;
@synthesize Name;
@synthesize Narrative;
@synthesize RequestCompletedDateTime;
@synthesize RequestExpirationDateTime;
@synthesize RequestSubmittedDateTime;
@synthesize Status;
@synthesize TransactionID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_RequestStatusSummary *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_RequestStatusSummary *newObject = [[NetIDVerifyServiceSvc_RequestStatusSummary new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "CustomerReferenceID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.CustomerReferenceID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "DateOfBirth")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.DateOfBirth = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Is18OrOver")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Is18OrOver = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Name")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Name = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Narrative")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Narrative = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "RequestCompletedDateTime")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.RequestCompletedDateTime = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "RequestExpirationDateTime")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.RequestExpirationDateTime = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "RequestSubmittedDateTime")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.RequestSubmittedDateTime = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Status")) {
				
				NetIDVerifyServiceSvc_RequestStatusType enumRepresentation = NetIDVerifyServiceSvc_RequestStatusType_enumFromString(elementString);
				self.Status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "TransactionID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.TransactionID = newChild;
			}
		}
	}
}
@end

#pragma mark - ** Array of Requesr Summary **


@implementation NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary
- (id)init
{
	if((self = [super init])) {
		RequestStatusSummary = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	if(RequestStatusSummary != nil) [RequestStatusSummary release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.RequestStatusSummary != 0) {
		for(NetIDVerifyServiceSvc_RequestStatusSummary * child in self.RequestStatusSummary) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"RequestStatusSummary" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
		}
	}
}
/* elements */
@synthesize RequestStatusSummary;
- (void)addRequestStatusSummary:(NetIDVerifyServiceSvc_RequestStatusSummary *)toAdd
{
	if(toAdd != nil) [RequestStatusSummary addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}

+ (NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary *newObject = [[NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "RequestStatusSummary")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_RequestStatusSummary class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.RequestStatusSummary addObject:newChild];
			}
		}
	}
}
@end

#pragma  mark - ***** Request Status Response *****

@implementation NetIDVerifyServiceSvc_RequestStatusResponse
- (id)init
{
	if((self = [super init])) {
		Found = 0;
		Requests = 0;
		Status = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(Found != nil) [Found release];
	if(Requests != nil) [Requests release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.Found != 0) {
		xmlAddChild(node, [self.Found xmlNodeForDoc:node->doc elementName:@"Found" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Requests != 0) {
		xmlAddChild(node, [self.Requests xmlNodeForDoc:node->doc elementName:@"Requests" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.Status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"NetIDVerifyServiceSvc:Status", [NetIDVerifyServiceSvc_RequestStatusType_stringFromEnum(self.Status) xmlString]);
	}
}
/* elements */
@synthesize Found;
@synthesize Requests;
@synthesize Status;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_RequestStatusResponse *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_RequestStatusResponse *newObject = [[NetIDVerifyServiceSvc_RequestStatusResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Found")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Found = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Requests")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_ArrayOfRequestStatusSummary class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.Requests = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "Status")) {
				
				NetIDVerifyServiceSvc_RequestStatusType enumRepresentation = NetIDVerifyServiceSvc_RequestStatusType_enumFromString(elementString);
				self.Status = enumRepresentation;
			}
		}
	}
}
@end

#pragma mark - ******* Get Request Status Response *****

@implementation NetIDVerifyServiceSvc_GetRequestStatusResponse
- (id)init
{
	if((self = [super init])) {
		GetRequestStatusResult = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(GetRequestStatusResult != nil) [GetRequestStatusResult release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.GetRequestStatusResult != 0) {
		xmlAddChild(node, [self.GetRequestStatusResult xmlNodeForDoc:node->doc elementName:@"GetRequestStatusResult" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize GetRequestStatusResult;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_GetRequestStatusResponse *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_GetRequestStatusResponse *newObject = [[NetIDVerifyServiceSvc_GetRequestStatusResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "GetRequestStatusResult")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_RequestStatusResponse class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.GetRequestStatusResult = newChild;
			}
		}
	}
}
@end

#pragma  mark - ******* KBV Anwer ******

@implementation NetIDVerifyServiceSvc_KBVAnswer
- (id)init
{
	if((self = [super init])) {
		QuestionAnswer = 0;
		QuestionNumber = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(QuestionAnswer != nil) [QuestionAnswer release];
	if(QuestionNumber != nil) [QuestionNumber release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.QuestionAnswer != 0) {
		xmlAddChild(node, [self.QuestionAnswer xmlNodeForDoc:node->doc elementName:@"QuestionAnswer" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.QuestionNumber != 0) {
		xmlAddChild(node, [self.QuestionNumber xmlNodeForDoc:node->doc elementName:@"QuestionNumber" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize QuestionAnswer;
@synthesize QuestionNumber;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_KBVAnswer *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_KBVAnswer *newObject = [[NetIDVerifyServiceSvc_KBVAnswer new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "QuestionAnswer")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.QuestionAnswer = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "QuestionNumber")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.QuestionNumber = newChild;
			}
		}
	}
}
@end

#pragma mark - ***** Array of KBV answer ******

@implementation NetIDVerifyServiceSvc_ArrayOfKBVAnswer
- (id)init
{
	if((self = [super init])) {
		KBVAnswer = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	if(KBVAnswer != nil) [KBVAnswer release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.KBVAnswer != 0) {
		for(NetIDVerifyServiceSvc_KBVAnswer * child in self.KBVAnswer) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"KBVAnswer" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
		}
	}
}
/* elements */
@synthesize KBVAnswer;
- (void)addKBVAnswer:(NetIDVerifyServiceSvc_KBVAnswer *)toAdd
{
	if(toAdd != nil) [KBVAnswer addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_ArrayOfKBVAnswer *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_ArrayOfKBVAnswer *newObject = [[NetIDVerifyServiceSvc_ArrayOfKBVAnswer new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "KBVAnswer")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_KBVAnswer class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.KBVAnswer addObject:newChild];
			}
		}
	}
}
@end

#pragma mark - ******** Answer Questions ********

@implementation NetIDVerifyServiceSvc_AnswerQuestions
- (id)init
{
	if((self = [super init])) {
		TransactionID = 0;
		KBVAnswers = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(TransactionID != nil) [TransactionID release];
	if(KBVAnswers != nil) [KBVAnswers release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.TransactionID != 0) {
		xmlAddChild(node, [self.TransactionID xmlNodeForDoc:node->doc elementName:@"TransactionID" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
	if(self.KBVAnswers != 0) {
		xmlAddChild(node, [self.KBVAnswers xmlNodeForDoc:node->doc elementName:@"KBVAnswers" elementNSPrefix:@"NetIDVerifyServiceSvc"]);
	}
}
/* elements */
@synthesize TransactionID;
@synthesize KBVAnswers;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_AnswerQuestions *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_AnswerQuestions *newObject = [[NetIDVerifyServiceSvc_AnswerQuestions new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "TransactionID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.TransactionID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "KBVAnswers")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NetIDVerifyServiceSvc_ArrayOfKBVAnswer class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.KBVAnswers = newChild;
			}
		}
	}
}
@end





NetIDVerifyServiceSvc_KBVResult NetIDVerifyServiceSvc_KBVResult_enumFromString(NSString *string)
{
	if([string isEqualToString:@"Indeterminate"]) {
		return NetIDVerifyServiceSvc_KBVResult_Indeterminate;
	}
	if([string isEqualToString:@"Pass"]) {
		return NetIDVerifyServiceSvc_KBVResult_Pass;
	}
	if([string isEqualToString:@"Fail"]) {
		return NetIDVerifyServiceSvc_KBVResult_Fail;
	}
	
	return NetIDVerifyServiceSvc_KBVResult_none;
}
NSString * NetIDVerifyServiceSvc_KBVResult_stringFromEnum(NetIDVerifyServiceSvc_KBVResult enumValue)
{
	switch (enumValue) {
		case NetIDVerifyServiceSvc_KBVResult_Indeterminate:
			return @"Indeterminate";
			break;
		case NetIDVerifyServiceSvc_KBVResult_Pass:
			return @"Pass";
			break;
		case NetIDVerifyServiceSvc_KBVResult_Fail:
			return @"Fail";
			break;
		default:
			return @"";
	}
}
@implementation NetIDVerifyServiceSvc_AnswerQuestionsResponse
- (id)init
{
	if((self = [super init])) {
		AnswerQuestionsResult = 0;
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"NetIDVerifyServiceSvc";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"NetIDVerifyServiceSvc", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.AnswerQuestionsResult != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"NetIDVerifyServiceSvc:AnswerQuestionsResult", [NetIDVerifyServiceSvc_KBVResult_stringFromEnum(self.AnswerQuestionsResult) xmlString]);
	}
}
/* elements */
@synthesize AnswerQuestionsResult;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (NetIDVerifyServiceSvc_AnswerQuestionsResponse *)deserializeNode:(xmlNodePtr)cur
{
	NetIDVerifyServiceSvc_AnswerQuestionsResponse *newObject = [[NetIDVerifyServiceSvc_AnswerQuestionsResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next )
    {
		if(cur->type == XML_ELEMENT_NODE)
        {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "AnswerQuestionsResult")) {
				
				NetIDVerifyServiceSvc_KBVResult enumRepresentation = NetIDVerifyServiceSvc_KBVResult_enumFromString(elementString);
				self.AnswerQuestionsResult = enumRepresentation;
			}
		}
	}
}
@end


#pragma mark - _______*****NetIDVerifyServiceSvc*****_____


@implementation NetIDVerifyServiceSvc

+ (void)initialize
{
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"xs" forKey:@"http://schemas.xmlsoap.org/soap/envelope"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"NetIDVerifyServiceSvc" forKey:@"http://netidme.schemas/NetIDVerify/2012/03"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"tns1" forKey:@"http://schemas.netidme.com/claims/2009/10"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"tns2" forKey:@"http://schemas.microsoft.com/2003/10/Serialization/Arrays"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"tns3" forKey:@"http://schemas.microsoft.com/2003/10/Serialization/"];
}
+ (NetIDVerify_v3Binding *)NetIDVerify_v3Binding
{
	return [[[NetIDVerify_v3Binding alloc] initWithAddress:@"https://webservices.beta.netidme.com/verify/v3/service.svc"] autorelease];
}
@end


#pragma mark - *************Binding**************

@implementation NetIDVerify_v3Binding

@synthesize address;
@synthesize defaultTimeout;
@synthesize logXMLInOut;
@synthesize cookies;
@synthesize authUsername;
@synthesize authPassword;

- (id)init
{
	if((self = [super init]))
    {
		address = nil;
		cookies = nil;
		defaultTimeout = 30;//seconds
		logXMLInOut = NO;
		synchronousOperationComplete = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init]))
    {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil)
    {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (NetIDVerify_v3BindingResponse *)performSynchronousOperation:(NetIDVerify_v3BindingOperation *)operation
{
	synchronousOperationComplete = NO;
    
	[operation start];
	
	// Now wait for response
	NSRunLoop *theRL = [NSRunLoop currentRunLoop];
	
	while (!synchronousOperationComplete && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
    
	return operation.response;
}

- (void)performAsynchronousOperation:(NetIDVerify_v3BindingOperation *)operation
{
	[operation start];
}

- (void) operation:(NetIDVerify_v3BindingOperation *)operation completedWithResponse:(NetIDVerify_v3BindingResponse *)response
{
	synchronousOperationComplete = YES;
}

- (NetIDVerify_v3BindingResponse *)VerifyUsingParameters:(NetIDVerifyServiceSvc_Verify *)aParameters 
{
	return [self performSynchronousOperation:[(NetIDVerify_v3Binding_Verify*)[NetIDVerify_v3Binding_Verify alloc]
                                              initWithBinding:self delegate:self parameters:aParameters ]];
}
- (void)VerifyAsyncUsingParameters:(NetIDVerifyServiceSvc_Verify *)aParameters  delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(NetIDVerify_v3Binding_Verify*)[NetIDVerify_v3Binding_Verify alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (NetIDVerify_v3BindingResponse *)GetRequestStatusUsingParameters:(NetIDVerifyServiceSvc_GetRequestStatus *)aParameters 
{
	return [self performSynchronousOperation:[[(NetIDVerify_v3Binding_GetRequestStatus*)[NetIDVerify_v3Binding_GetRequestStatus alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)GetRequestStatusAsyncUsingParameters:(NetIDVerifyServiceSvc_GetRequestStatus *)aParameters  delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(NetIDVerify_v3Binding_GetRequestStatus*)[NetIDVerify_v3Binding_GetRequestStatus alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (NetIDVerify_v3BindingResponse *)AnswerQuestionsUsingParameters:(NetIDVerifyServiceSvc_AnswerQuestions *)aParameters 
{
	return [self performSynchronousOperation:[[(NetIDVerify_v3Binding_AnswerQuestions*)[NetIDVerify_v3Binding_AnswerQuestions alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)AnswerQuestionsAsyncUsingParameters:(NetIDVerifyServiceSvc_AnswerQuestions *)aParameters  delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(NetIDVerify_v3Binding_AnswerQuestions*)[NetIDVerify_v3Binding_AnswerQuestions alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}

- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(NetIDVerify_v3BindingOperation *)operation
{
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.address 
                                    cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                                    timeoutInterval:self.defaultTimeout];
	NSData *bodyData = [outputBody dataUsingEncoding:NSUTF8StringEncoding];

	if(cookies != nil)
    {
		[request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies:cookies]];
	}
    
	[request setValue:@"Hogarth" forHTTPHeaderField:@"User-Agent"];
	[request setValue:soapAction forHTTPHeaderField:@"SOAPAction"];
	[request setValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    ////////
    [request setValue:@"Basic U21va2VfaW5fdGhlX2NpdHk6RGJaUFhGU0dB" forHTTPHeaderField:@"Authorization"];

    //U21va2VfaW5fdGhlX2NpdHk6RGJaUFhGU0dB
	////////
    
    /*NSString *authStr = [NSString stringWithFormat:@"%@:%@",self.authUsername ,self.authPassword];
    NSData *authData = [authStr dataUsingEncoding:NSASCIIStringEncoding];
    NSString *authValue = [NSString stringWithFormat:@"Basic %@", [authData base64Encoding]];//[authData base64EncodingWithLineLength:80]];
    //[request setValue:authValue forHTTPHeaderField:@"Authorization"];*/
    
    [request setValue:[NSString stringWithFormat:@"%d",(int)[bodyData length]] forHTTPHeaderField:@"Content-Length"];
	[request setValue:self.address.host forHTTPHeaderField:@"Host"];
	[request setHTTPMethod: @"POST"];

	[request setHTTPBody: bodyData];
		
	if(self.logXMLInOut)
    {
		NSLog(@"OutputHeaders:\n%@", [request allHTTPHeaderFields]);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:operation];

	operation.urlConnection = connection;

}

@end

#pragma mark-  **********Bindin Operation***********

@implementation NetIDVerify_v3BindingOperation
@synthesize     binding;
@synthesize     response;
@synthesize     delegate;
@synthesize     responseData;
@synthesize     urlConnection;

- (id)initWithBinding:(NetIDVerify_v3Binding *)aBinding delegate:(id<NetIDVerify_v3BindingResponseDelegate>)aDelegate
{
	if ((self = [super init]))
    {
		self.binding        = aBinding;
		response            = nil;
		self.delegate       = aDelegate;
		self.responseData   = nil;
		self.urlConnection  = nil;
	}
	
	return self;
}

//this method will be called when there request could not authenticated. the server will send 401 status code.
//then the password and username will provide.

-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if ([challenge previousFailureCount] == 0)
    {
		NSURLCredential *newCredential;
		newCredential=[NSURLCredential credentialWithUser:self.binding.authUsername
												 password:self.binding.authPassword
											  persistence:NSURLCredentialPersistenceForSession];
        
		[[challenge sender] useCredential:newCredential
			   forAuthenticationChallenge:challenge];
	}
    else
    {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
        
		NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Authentication Error"
                                               forKey:NSLocalizedDescriptionKey];
		NSError *authError = [NSError errorWithDomain:@"Connection Authentication"
                                      code:0 userInfo:userInfo];
		[self connection:connection didFailWithError:authError];
	}
}


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)urlResponse
{
	NSHTTPURLResponse *httpResponse;
    
	if ([urlResponse isKindOfClass:[NSHTTPURLResponse class]])
    {
		httpResponse = (NSHTTPURLResponse *) urlResponse;
	}
    else
    {
		httpResponse = nil;
	}
	
	if(binding.logXMLInOut)
    {
		NSLog(@"ResponseStatus: %ld\n", (long)[httpResponse statusCode]);
		NSLog(@"ResponseHeaders:\n%@", [httpResponse allHeaderFields]);
	}
	
	NSMutableArray *cookies = [[NSHTTPCookie cookiesWithResponseHeaderFields:[httpResponse allHeaderFields] forURL:binding.address] mutableCopy];
	
	binding.cookies = cookies;

  if ([urlResponse.MIMEType rangeOfString:@"application/soap+xml"].length == 0)
  {
		NSError *error = nil;
		[connection cancel];

		if ([httpResponse statusCode] >= 400)
        {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:
                                     [NSHTTPURLResponse localizedStringForStatusCode:
                                     [httpResponse statusCode]] forKey:NSLocalizedDescriptionKey];
				
			error = [NSError errorWithDomain:@"NetIDVerify_v3BindingResponseHTTP" code:[httpResponse statusCode] userInfo:userInfo];
		}
        else
        {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject: [NSString stringWithFormat:
                                      @"Unexpected response MIME type to SOAP call:%@", urlResponse.MIMEType] forKey:NSLocalizedDescriptionKey];
            
			error = [NSError errorWithDomain:@"NetIDVerify_v3BindingResponseHTTP" code:1 userInfo:userInfo];
		}
				
		[self connection:connection didFailWithError:error];
  }
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (responseData == nil)
    {
		responseData = [data mutableCopy];
	}
    else
    {
		[responseData appendData:data];
	}
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	if (binding.logXMLInOut)
    {
		NSLog(@"ResponseError:\n%@", error);
	}
	response.error = error;
    
	[delegate operation:self completedWithResponse:response];
}

@end

#pragma mark *********Binding Verify***********

@implementation NetIDVerify_v3Binding_Verify

@synthesize parameters;

- (id)initWithBinding:(NetIDVerify_v3Binding *)aBinding delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate
parameters:(NetIDVerifyServiceSvc_Verify *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate]))
    {
		self.parameters = aParameters;
	}
	
	return self;
}

//this method will be called to verify the user.

- (void)main
{
    
	response = [NetIDVerify_v3BindingResponse new];
	
	NetIDVerify_v3Binding_envelope *envelope = [NetIDVerify_v3Binding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
    
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
    
	bodyElements = [NSMutableDictionary dictionary];
    
	if(parameters != nil)
        [bodyElements setObject:parameters forKey:@"Verify"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://netidme.schemas/NetIDVerify/2012/03/NetIDVerifyServiceContract/Verify" forOperation:self];
    
}



- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut)
        {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], (int)[responseData length]);
		
		if (doc == NULL)
        {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"NetIDVerify_v3BindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else
        {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next)
            {
				if(cur->type == XML_ELEMENT_NODE)
                {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body"))
                    {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next)
                        {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "VerifyResponse"))
                                {
									NetIDVerifyServiceSvc_VerifyResponse *bodyObject = [NetIDVerifyServiceSvc_VerifyResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault"))
                                {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end


#pragma mark *********Binding Get Request Status***********

@implementation NetIDVerify_v3Binding_GetRequestStatus

@synthesize parameters;
- (id)initWithBinding:(NetIDVerify_v3Binding *)aBinding delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate
parameters:(NetIDVerifyServiceSvc_GetRequestStatus *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate]))
    {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [NetIDVerify_v3BindingResponse new];
	
	NetIDVerify_v3Binding_envelope *envelope = [NetIDVerify_v3Binding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(parameters != nil) [bodyElements setObject:parameters forKey:@"GetRequestStatus"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://netidme.schemas/NetIDVerify/2012/03/NetIDVerifyServiceContract/GetRequestStatus" forOperation:self];
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], (int)[responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"NetIDVerify_v3BindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "GetRequestStatusResponse")) {
									NetIDVerifyServiceSvc_GetRequestStatusResponse *bodyObject = [NetIDVerifyServiceSvc_GetRequestStatusResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end


#pragma mark *********Binding Answer Question***********

@implementation NetIDVerify_v3Binding_AnswerQuestions
@synthesize parameters;

- (id)initWithBinding:(NetIDVerify_v3Binding *)aBinding delegate:(id<NetIDVerify_v3BindingResponseDelegate>)responseDelegate
parameters:(NetIDVerifyServiceSvc_AnswerQuestions *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [NetIDVerify_v3BindingResponse new];
	
	NetIDVerify_v3Binding_envelope *envelope = [NetIDVerify_v3Binding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(parameters != nil) [bodyElements setObject:parameters forKey:@"AnswerQuestions"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://netidme.schemas/NetIDVerify/2012/03/NetIDVerifyServiceContract/AnswerQuestions" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;

		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], (unsigned)[responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"NetIDVerify_v3BindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "AnswerQuestionsResponse")) {
									NetIDVerifyServiceSvc_AnswerQuestionsResponse *bodyObject = [NetIDVerifyServiceSvc_AnswerQuestionsResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end

#pragma mark *********Binding Envelope***********

static NetIDVerify_v3Binding_envelope *NetIDVerify_v3BindingSharedEnvelopeInstance = nil;

@implementation NetIDVerify_v3Binding_envelope

+ (NetIDVerify_v3Binding_envelope *)sharedInstance
{
	if(NetIDVerify_v3BindingSharedEnvelopeInstance == nil)
    {
		NetIDVerify_v3BindingSharedEnvelopeInstance = [NetIDVerify_v3Binding_envelope new];
	}
	
	return NetIDVerify_v3BindingSharedEnvelopeInstance;
}


- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements
{
    xmlDocPtr doc;
	////edited by me
	//doc = xmlNewDoc((const xmlChar*)XML_DEFAULT_VERSION);
    doc = xmlNewDoc((const xmlChar*)@"?xml version=\"1.0\" encoding=\"utf-8\"?");
	if (doc == NULL)
    {
        
		NSLog(@"Error creating the xml document tree");
		return @"";
	}
	
	xmlNodePtr root = xmlNewDocNode(doc, NULL, (const xmlChar*)"Envelope", NULL);
	xmlDocSetRootElement(doc, root);
	
	xmlNsPtr soapEnvelopeNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2003/05/soap-envelope", (const xmlChar*)"soap");
	xmlSetNs(root, soapEnvelopeNs);
	
	xmlNsPtr xslNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/1999/XSL/Transform", (const xmlChar*)"xsl");
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
	
	//xmlNewNsProp(root, xslNs, (const xmlChar*)"version", (const xmlChar*)"1.0");
	
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema", (const xmlChar*)"xs");
	xmlNewNs(root, (const xmlChar*)"http://netidme.schemas/NetIDVerify/2012/03 ", (const xmlChar*)"NetIDVerifyServiceSvc");
	xmlNewNs(root, (const xmlChar*)"http://schemas.netidme.com/claims/2009/10", (const xmlChar*)"tns1");
	xmlNewNs(root, (const xmlChar*)"http://schemas.microsoft.com/2003/10/Serialization/Arrays", (const xmlChar*)"tns2");
	xmlNewNs(root, (const xmlChar*)"http://schemas.microsoft.com/2003/10/Serialization/", (const xmlChar*)"tns3");
    
    
	
	if((headerElements != nil) && ([headerElements count] > 0))
    {
		xmlNodePtr headerNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Header", NULL);
		xmlAddChild(root, headerNode);
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			xmlAddChild(headerNode, [header xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	if((bodyElements != nil) && ([bodyElements count] > 0))
    {
		xmlNodePtr bodyNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Body", NULL);
		xmlAddChild(root, bodyNode);
		
		for(NSString *key in [bodyElements allKeys])
        {
			id body = [bodyElements objectForKey:key];
			xmlAddChild(bodyNode, [body xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	xmlChar *buf;
	int size;
	xmlDocDumpFormatMemory(doc, &buf, &size, 1);
	
	NSString *serializedForm = [NSString stringWithCString:(const char*)buf encoding:NSUTF8StringEncoding];
	xmlFree(buf);
	
	xmlFreeDoc(doc);	
	return serializedForm;
}
@end


#pragma mark *********Binding Response***********

@implementation NetIDVerify_v3BindingResponse
@synthesize headers;
@synthesize bodyParts;
@synthesize error;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
		error = nil;
	}
	
	return self;
}

@end
