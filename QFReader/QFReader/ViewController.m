//
//  ViewController.m
//  QFReader
//
//  Created by Àngel Díaz Martí on 17/07/14.
//  Copyright (c) 2014 Àngel Díaz Martí. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) ZXCapture *capture;
@property (nonatomic, weak) IBOutlet UIView *scanRectView;
@property (weak, nonatomic) IBOutlet UIButton *testButton;
@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    self.capture = [[ZXCapture alloc] init];
    self.capture.camera = self.capture.back;
    self.capture.focusMode = AVCaptureFocusModeContinuousAutoFocus;
    self.capture.rotation = 90.0f;
    
    self.capture.layer.frame = self.view.bounds;
    self.scanRectView.layer.cornerRadius = 10;
    [self.view.layer addSublayer:self.capture.layer];
    
    [self.view bringSubviewToFront:self.scanRectView];
    [self.view bringSubviewToFront:self.testButton];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.capture.delegate = self;
    self.capture.layer.frame = self.view.bounds;
    
    CGAffineTransform captureSizeTransform = CGAffineTransformMakeScale(320 / self.view.frame.size.width, 480 / self.view.frame.size.height);
    self.capture.scanRect = CGRectApplyAffineTransform(self.scanRectView.frame, captureSizeTransform);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)testButton:(id)sender {
}

-(void)captureResult:(ZXCapture *)capture result:(ZXResult *)result {
    NSLog(@"Scanned %@\n",result.text);
    if (!result) return;
    NSLog(@"Scanned %@\n",result.text);
    
    // We got a result. Display information about the result onscreen.
   
   // NSString *display = [NSString stringWithFormat:@"Scanned!\n Contents:\n%@",  result.text];
   // [self.decodedLabel performSelectorOnMainThread:@selector(setText:) withObject:display waitUntilDone:YES];
    
    // Vibrate
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}
@end
