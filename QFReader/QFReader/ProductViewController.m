//
//  ProductViewController.m
//  QFReader
//
//  Created by Àngel Díaz Martí on 17/07/14.
//  Copyright (c) 2014 Àngel Díaz Martí. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@end

@implementation ProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)testAction:(id)sender {
    NSLog(@"swipe");
    [self dismissViewControllerAnimated:YES completion:nil];

}
- (IBAction)swipe:(id)sender {
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
