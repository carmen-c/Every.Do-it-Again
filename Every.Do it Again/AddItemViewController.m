//
//  AddItemViewController.m
//  Every.Do it Again
//
//  Created by carmen cheng on 2016-11-23.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *priorityTextField;
@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)tapGesture:(id)sender {
    [self.titleTextField resignFirstResponder];
    [self.descriptionTextField resignFirstResponder];
    [self.priorityTextField resignFirstResponder];
}

- (IBAction)doneButton:(id)sender {
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"ToDoItem" inManagedObjectContext:self.managedObjectContext];
    NSManagedObject *record = [[NSManagedObject alloc]initWithEntity:entity insertIntoManagedObjectContext:self.managedObjectContext];
    
    [record setValue:self.titleTextField.text forKey:@"toDoTitle"];
    [record setValue:self.descriptionTextField.text forKey:@"details"];
    //[record setValue:self.priorityTextField.text forKey:@"priority"];
    
    NSError *error = nil;
    if ([self.managedObjectContext save:&error]) {
      [self.navigationController popToRootViewControllerAnimated:YES];
    
    }else{
        if (error) {
            NSLog(@"save error: %@, %@", error, error.localizedDescription);
        }
    }
}


@end
