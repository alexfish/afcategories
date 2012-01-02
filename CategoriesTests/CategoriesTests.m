//
//  CategoriesTests.m
//  CategoriesTests
//
//  Created by Alex Fish on 14/07/2011.
//  Copyright 2011 Alex Fish. All rights reserved.
//

#import "CategoriesTests.h"
#import "AFArray.h"
#import "AFDictionary.h"
#import "AFString.h"
#import "AFNumber.h"
#import "AFObject.h"
#import "AFFileManager.h"
#import "AFURL.h"

@implementation CategoriesTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)testArrayReverse 
{
    
    NSArray *testArray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",nil];
    
    testArray = [testArray reverseArray];
            
    STAssertEqualObjects(@"10", [testArray objectAtIndex:0],@"Array did not reverse");
    
}

-(void)testArrayIsEmpty {
    
    NSArray *testArray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",nil];
    STAssertFalse([testArray isEmpty],@"Array is empty is returning the wrong result");
    
}

-(void)testArrayFirstObject {
    NSArray *testArray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",nil];
    STAssertEqualObjects(@"1", [testArray firstObject],@"Array did not reverse");
}

-(void)testDictionaryHasKey
{
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Test Object",@"Key1", nil];
    
    STAssertFalse([dictionary hasKey:@"Key2"], @"Dictionary has key failed to return correct result");
    STAssertTrue([dictionary hasKey:@"Key1"], @"Dictionary has key failed to return correct result");
    
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Test Object",@"Key1", nil];
    
    STAssertFalse([mutableDict hasKey:@"Key2"], @"Dictionary has key failed to return correct result");
    STAssertTrue([mutableDict hasKey:@"Key1"], @"Dictionary has key failed to return correct result");
    
}

-(void)testDictionaryIsEmtpy 
{
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:@"test" forKey:@"test"];
    
    STAssertFalse([dictionary isEmpty], @"Dictionary is empty returning incorrect result");
}

-(void)testStringIsNotEqualToString
{
    
    NSString *string = @"Quack";
    
    STAssertTrue([string isNotEqualToString:@"Bloop"], @"String is not equal to is not correctly returning");
    STAssertFalse([string isNotEqualToString:string], @"String is not equal to is not correctly returning");
    
}

- (void)testFloorNumber {
    
    NSNumber *floorNumber = [[NSNumber numberWithFloat:1.8] floorNumber];
    
    STAssertEqualObjects([NSNumber numberWithInt:1], floorNumber, @"Failed to floor number");
    
}

- (void)testCeilNumber {
    
    NSNumber *ceilNumber = [[NSNumber numberWithFloat:1.8] ceilNumber];
    
    STAssertEqualObjects([NSNumber numberWithInt:2], ceilNumber, @"Failed to ceil number");
    
}

- (void)testRoundNumber {
    
    NSNumber *roundNumber = [[NSNumber numberWithFloat:1.8] roundNumber];
    
    STAssertEqualObjects([NSNumber numberWithInt:2],roundNumber, @"Failed to round number");
    
}

- (void)testNumberIsMoreThan {
    
    NSNumber *first = [NSNumber numberWithFloat:1.4];
    NSNumber *second = [NSNumber numberWithFloat:1.8];
    
    STAssertTrue([second isMoreThanNumber:first], @"Failed to return correct boolean");
    
}

- (void)testNumberIsLessThan {
    
    NSNumber *first = [NSNumber numberWithFloat:1.4];
    NSNumber *second = [NSNumber numberWithFloat:1.8];
    
    STAssertTrue([first isLessThanNumber:second], @"Failed to return correct boolean");
    
}

- (void)testNumberFromString {
    
    NSNumber *number = [NSNumber numberWithInt:1];
    NSString *string = @"1";
    
    STAssertEqualObjects(number,[NSNumber numberFromString:string] ,@"Failed to create number from string");
    
}

- (void)testNULL {
    
    NSString *string = [NSString stringWithFormat:@"Miaow"];
    NSNull *null = [NSNull null];
    
    STAssertFalse([string isNULL],@"null failed");
    STAssertTrue([null isNULL], @"null null failed");
    
}

- (void)testLibraryPath {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        
    STAssertEqualObjects([paths objectAtIndex:0], [NSFileManager libraryPath], @"Failed to return library path");
    
}

- (void)testDocumentsPath {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    STAssertEqualObjects([paths objectAtIndex:0], [NSFileManager documentsPath], @"Failed to return documents path");
    
}

- (void)testCachesPath {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
                
    STAssertEqualObjects([paths objectAtIndex:0], [NSFileManager cachesPath], @"Failed to return caches path");
    
}

- (void)testPrefsPath {
    
    NSString *path = [NSString stringWithFormat:@"%@/Preferences",[NSFileManager libraryPath]];
    
    STAssertEqualObjects(path,[NSFileManager preferencesPath], @"Failed to return prefs path");
    
}

- (void)testTmpPath {
    
    STAssertEqualObjects([NSFileManager tmpPath], NSTemporaryDirectory(), @"Failed to return temp directory");
    
}

- (void)testStringBetweenString {
    
    NSString *test = @".test.";
    
    STAssertEqualObjects([NSString stringWithFormat:@"test"], [test stringBetweenString:@"." andString:@"."], @"Failed to get string between string");
    
}

- (void)testURLStringValue {
    
    NSURL *url = [NSURL URLWithString:@"www.google.com"];
    
    STAssertEqualObjects([NSString stringWithFormat:@"www.google.com"], [url stringValue], @"Failed to create string value of URL");
    
}

@end