//
//  ViewController.h
//  PJCoreData1
//
//  Created by Mac on 07/11/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AddViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *devicesTV;
    NSMutableArray *mobiles;
    NSMutableArray *ac;
    UISegmentedControl *localSegment;
    
    
}


- (IBAction)addButtonAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)segmentAction:(id)sender;

@end

