//
//  ViewController.h
//  NameBoard
//
//  Created by 田村 航弥 on 12/01/17.
//  Copyright (c) 2012年 ミクシィ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBTickerView.h"

@interface ViewController : UIViewController<SBTickerViewControllerDelegate>
{
    
}

@property (nonatomic, strong) IBOutlet SBTickerView *nameTikerView_;

-(IBAction)tick:(UIButton*)sender;
-(IBAction)reset:(UIButton*)sender;

@end
