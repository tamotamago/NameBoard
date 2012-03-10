//
//  ViewController.h
//  NameBoard
//
//  Created by koya tamura on 12/01/17.
//  Copyright (c) 2012 tamotamago. All rights reserved.
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
