//
//  ViewController.m
//  DictionaryPractice
//
//  Created by Алексей on 12.04.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create NSDictionary using literal declaratio
    NSDictionary *newDictionary = @{@"E": @"Value1",
                                    @"C": @"Value2",
                                    @"A": @"Value3",
                                    @"B": @"Value4",
                                    @"D": @"Value5",
                                    };
    
    // Make it mutable
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithDictionary:newDictionary];
    
    // Check is it mutable
    if ([mutableDict isKindOfClass:[NSMutableDictionary class]]) {
        NSLog(@"Mutable");
    } else {
        NSLog(@"Immutable");
    }
    
    // Add several entries
    [mutableDict setObject:@"Value9" forKey:@"Z"];
    [mutableDict setObject:@"Value7" forKey:@"F"];
    
    NSLog(@"%@", [mutableDict description]);
    
    if ([mutableDict objectForKey:@"F"]) {
        NSLog(@"Object for key F was found");
    } else {
        NSLog(@"Object for key F wasn't found");
    }
    
    NSLog(@"%@", [mutableDict allKeys]);
    
    // Sort it in an ascending order by keys
    NSArray *ascendingOrderKeys = [[mutableDict allKeys] sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    
    for (NSString *str in ascendingOrderKeys) {
        NSLog(@"%@: %@", str, mutableDict[str]);
    }
    
    // Sort it in an descending order by keys
    NSArray *descendingOrderKeys = [[mutableDict allKeys] sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj2 compare:obj1];
    }];
    
    for (NSString *str in descendingOrderKeys) {
        NSLog(@"%@: %@", str, mutableDict[str]);
    }
    
    // Sort it in an ascending order by values
    NSArray *keysByAscendingOrderValues = [mutableDict keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    
    for (NSString *str in keysByAscendingOrderValues) {
        NSLog(@"%@: %@", str, mutableDict[str]);
    }
    
    // Sort it in an descending order by values
    NSArray *keysByDescendingOrderValues = [mutableDict keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj2 compare:obj1];
    }];
    
    for (NSString *str in keysByDescendingOrderValues) {
        NSLog(@"%@: %@", str, mutableDict[str]);
    }

    // Check whether required value is contained in the dictionary
    NSString *requiredValue = @"Value1";
    if ([[mutableDict allValues] containsObject:requiredValue]) {
        NSLog(@"Value was found");
    } else {
        NSLog(@"Value wasn't found");
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
