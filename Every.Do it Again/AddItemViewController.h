//
//  AddItemViewController.h
//  Every.Do it Again
//
//  Created by carmen cheng on 2016-11-23.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@interface AddItemViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic) NSManagedObjectContext *managedObjectContext;
@end
