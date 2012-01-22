//
//  ViewController.m
//  NameBoard
//
//  Created by 田村 航弥 on 12/01/17.
//  Copyright (c) 2012年 ミクシィ. All rights reserved.
//

#import "ViewController.h"
#import "SBTickView.h"

@implementation ViewController

@synthesize nameTikerView_;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - ButtonAction
-(void)secondTick
{
    [self.nameTikerView_ setBackView:[SBTickView tickViewWithTitle:@"アザッス" fontSize:30]];
    [self.nameTikerView_ setDuration:0.5];
    [self.nameTikerView_ tick:SBTickerViewTickDirectionDown animated:YES completion:nil];
}


-(void)tick:(UIButton*)sender
{
    if(sender.tag == 0){
        [self.nameTikerView_ setBackView:[SBTickView tickViewWithTitle:@"びちくそ" fontSize:30]];
        [self.nameTikerView_ setDuration:0.2];
        [self.nameTikerView_ tick:SBTickerViewTickDirectionDown animated:YES completion:nil];
    }else if(sender.tag == 1){
        [self.nameTikerView_ setBackView:[SBTickView tickViewWithTitle:@"アザッス" fontSize:30]];
        [self.nameTikerView_ setDuration:0.5];
        [self.nameTikerView_ tick:SBTickerViewTickDirectionDown animated:YES completion:nil];
    }
    
    /*
    [self.nameTikerView_ setBackView:[SBTickView tickViewWithTitle:@"アザッス" fontSize:30]];
    [self.nameTikerView_ setDuration:0.5];
    [self.nameTikerView_ tick:SBTickerViewTickDirectionDown animated:YES completion:nil];

    [self.nameTikerView_ setBackView:[SBTickView tickViewWithTitle:@"田村航弥" fontSize:30]];
    [self.nameTikerView_ setDuration:0.8];
    [self.nameTikerView_ tick:SBTickerViewTickDirectionDown animated:YES completion:nil];
     */
    
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self.nameTikerView_ setFrontView:[SBTickView tickViewWithTitle:@"よしひこ" fontSize:30]];
    
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
