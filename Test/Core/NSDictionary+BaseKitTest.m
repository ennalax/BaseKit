//
// Created by Bruno Wernimont on 2012
// Copyright 2012 BaseKit
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

@interface NSDictionaryBaseKitTest : GHTestCase
@end

@implementation NSDictionaryBaseKitTest

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)testShouldReturnIsEmpty {
    NSDictionary *dictionary = [NSDictionary dictionary];
    
    GHAssertTrue([dictionary isEmpty], nil);
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)testShouldReturnIsNotEmpty {
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:@"object" forKey:@"key"];
    
    GHAssertTrue(![dictionary isEmpty], nil);
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)testShouldContainsObjectForKey {
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"object1", @"key1", @"object2", @"key2", nil];
    
    GHAssertTrue([dict containsObjectForKey:@"key1"], nil);
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)testShouldNotContainsObjectForKey {
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"object1", @"key1", @"object2", @"key2", nil];
    
    GHAssertTrue(![dict containsObjectForKey:@"key3"], nil);
}


/*
 
TODO write some test
 
- (id)objectForKey:(id)aKey defaultObject:(id)defaultObject;

- (BOOL)boolValueForKey:(id)aKey defaultValue:(BOOL)defaultValue;

- (BOOL)boolValueForKey:(id)aKey;

- (int)intValueForKey:(id)aKey;

- (float)floatValueForKey:(id)aKey defaultValue:(float)defaultValue;

- (float)floatValueForKey:(id)aKey;

- (NSInteger)integerValueForKey:(id)aKey defaultValue:(NSInteger)defaultValue;

- (NSInteger)integerValueForKey:(id)aKey;

- (double)doubleValueForKey:(id)aKey defaultValue:(NSInteger)defaultValue;

- (double)doubleValueForKey:(id)aKey;

- (NSString *)stringValueForKey:(id)aKey defaultValue:(NSString *)defaultValue;

- (NSString *)stringValueForKey:(id)aKey;

- (NSNumber *)numberValueForKey:(id)aKey defaultValue:(NSNumber *)defaultValue;

- (NSNumber *)numberValueForKey:(id)aKey;
*/

@end
