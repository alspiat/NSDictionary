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
    
    
    NSDictionary *newDictionary = @{@"E": @"Value1",
                                    @"C": @"Value2",
                                    @"A": @"Value3",
                                    @"B": @"Value4",
                                    @"D": @"Value5",
                                    };
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithDictionary:newDictionary];
    
    if ([mutableDict isKindOfClass:[NSMutableDictionary class]]) {
        NSLog(@"Mutable");
    } else {
        NSLog(@"Immutable");
    }
    
    if ([mutableDict objectForKey:@"F"]) {
        NSLog(@"Object for key F was found");
    } else {
        NSLog(@"Object for key F wasn't found");
    }
    
    [mutableDict setObject:@"Value99" forKey:@"F"];
    
    if ([mutableDict objectForKey:@"F"]) {
        NSLog(@"Object for key F was found");
    } else {
        NSLog(@"Object for key F wasn't found");
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
