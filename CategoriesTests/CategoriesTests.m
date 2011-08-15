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

@end
