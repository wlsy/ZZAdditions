//
//  NSString+Utilities.m
//  Additions
//
//  Created by Erica Sadun, http://ericasadun.com
//  iPhone Developer's Cookbook, 3.0 Edition
//  BSD License, Use at your own risk

#import "NSString+Utilities.h"

@implementation  NSString (UtilityExtensions)
///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString *) trimmedString
{
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}


// run srandom() somewhere in your app // http://tinypaste.com/5f1c9
// Requested by BleuLlama
///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString *) stringByAppendingRandomStringOfRandomLength
{
	int len = random() % 32;
	NSMutableArray *chars = [NSMutableArray array];
	NSMutableString *s = [NSMutableString stringWithString:self];

	NSMutableCharacterSet *cs = [[NSMutableCharacterSet alloc] init];
	[cs formUnionWithCharacterSet:[NSCharacterSet alphanumericCharacterSet]];
	[cs formUnionWithCharacterSet:[NSCharacterSet whitespaceCharacterSet]];
	// [cs formUnionWithCharacterSet:[NSCharacterSet symbolCharacterSet]];
	// [cs formUnionWithCharacterSet:[NSCharacterSet punctuationCharacterSet]];

	// init char array from charset
	for (int c = 0; c < 128; c++) // 7 bit only
		if ([cs characterIsMember:(unichar)c])
			[chars addObject:[NSString stringWithFormat:@"%c", c]];

	for (int i = 0; i < len; i++) [s appendString:[chars objectAtIndex:(random() % chars.count)]];

	return s;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSDate *) date
{
	// Return a date from a string
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	formatter.dateFormat = @"MM-dd-yyyy";
	NSDate *date = [formatter dateFromString:self];
	return date;
}

- (NSDate *)RFC3339ToDate
{
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    [formatter setLocale:[NSLocale systemLocale]];
    [formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
    
    NSDate *date = [NSDate date];
    date = [formatter dateFromString:self];
    return date;
}



@end
