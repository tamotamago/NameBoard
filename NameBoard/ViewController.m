//
//  ViewController.m
//  NameBoard
//
//  Created by koya tamura on 12/01/17.
//  Copyright (c) 2012 tamotamago. All rights reserved.
//

#import "ViewController.h"
#import "SBTickView.h"

@interface ViewController()
@property (nonatomic, strong) NSArray * nameArray;
@property (nonatomic) NSInteger tickTime;
@end

@implementation ViewController

@synthesize nameArray;
@synthesize tickTime;

@synthesize nameTikerView_;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - ButtonAction
-(void)tickWithTime:(NSInteger)time
{
    NSString * name = [self.nameArray objectAtIndex:self.tickTime];
    CFTimeInterval interval = (self.tickTime * 0.2) + 0.3;
    self.tickTime ++;
    
    [self.nameTikerView_ setBackView:[SBTickView tickViewWithTitle:name fontSize:30]];
    [self.nameTikerView_ setDuration:interval];
    [self.nameTikerView_ tick:SBTickerViewTickDirectionDown animated:YES completion:nil];
}

-(IBAction)tick:(UIButton*)sender
{
    [self tickWithTime:self.tickTime];
}

-(void)reset:(UIButton *)sender
{
    [self.nameTikerView_ setBackView:[SBTickView tickViewWithTitle:@"Hi!!" fontSize:30]];
    [self.nameTikerView_ tick:SBTickerViewTickDirectionUp animated:YES completion:nil];
    self.tickTime = 0;
}

#pragma mark - SBTickerViewDelegate Method
-(void)tickerViewDidTicked:(SBTickerView *)tickerView
{
    if([self.nameArray count] > self.tickTime && self.tickTime != 0){
        [self tickWithTime:self.tickTime];
    }
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.nameTikerView_.delegate = self;
	
    [self.nameTikerView_ setFrontView:[SBTickView tickViewWithTitle:@"Hi!!" fontSize:30]];
    
    self.nameArray = [NSArray arrayWithObjects:
                      @"this is",
                      @"consecutive",
                      @"tick animation",
                      @"Bey!!",
                      nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
