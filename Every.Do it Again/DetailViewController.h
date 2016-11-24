//
//  DetailViewController.h
//  Every.Do it Again
//
//  Created by carmen cheng on 2016-11-23.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Every_Do_it_Again+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDoItem *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

