//
//  AddViewController.m
//  PJCoreData1
//
//  Created by Mac on 07/11/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import "AddViewController.h"
#import "AppDelegate.h"
@interface AddViewController ()

@end

@implementation AddViewController
-(NSManagedObjectContext *)managedObjectContext {
    
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication]delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        
        context = [delegate managedObjectContext];
        
    }
    return  context;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    if (textField == self.nameTextField) {
        
        [self.modelTextField becomeFirstResponder];
        
    }
    else if (textField == self.modelTextField) {
        [self.companyTextField becomeFirstResponder];
    }
    return YES;
    
}


- (IBAction)saveAction:(id)sender {
    NSString *year = self.nameTextField.text;
    
    NSString *model = self.modelTextField.text;
    
    NSString *price = self.companyTextField.text;
    
    
    if (localSegment.selectedSegmentIndex == 0) {
        
        
        if (year.length > 0) {
            if (model.length > 0) {
                if (price.length > 0) {
                    
                    NSManagedObjectContext *context = [self managedObjectContext];
                    
                    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Device" inManagedObjectContext:context];
                    
                    [newDevice setValue:year forKey:@"year"];
                    [newDevice setValue:model forKey:@"model"];
                    [newDevice setValue:price forKey:@"price"];
                    
                    
                    NSError *error;
                    
                    if ([context save:&error]) {
                        NSLog(@"Saved");
                        
                        [self.navigationController
                         popViewControllerAnimated:YES];
                        
                    }
                    else {
                        NSLog(@"Unbable Saved to save :%@",error.localizedDescription);
                    }
                    
                    
                }
                else {
                    NSLog(@"company not Saved");
                }
            }
            else {
                NSLog(@"Model not Saved");
            }
        }
        else {
            NSLog(@"Name not Saved");
        }
    }
    
    
    else if (localSegment.selectedSegmentIndex == 1) {
        
        //        NSString *year = self.nameTextField.text;
        //
        //        NSString *model = self.modeltextField.text;
        //
        //        NSString *price = self.companyTextField.text;
        //
        
        if (year.length > 0) {
            if (model.length > 0) {
                if (price.length > 0) {
                    
                    NSManagedObjectContext *context = [self managedObjectContext];
                    
                    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Phone" inManagedObjectContext:context];
                    
                    [newDevice setValue:year forKey:@"company"];
                    [newDevice setValue:model forKey:@"name"];
                    [newDevice setValue:price forKey:@"price"];
                    
                    
                    NSError *error;
                    
                    if ([context save:&error]) {
                        NSLog(@"Saved");
                        
                        [self.navigationController
                         popViewControllerAnimated:YES];
                        
                    }
                    else {
                        NSLog(@"Unbable Saved to save :%@",error.localizedDescription);
                    }
                    
                    
                }
                else {
                    NSLog(@"company not Saved");
                }
            }
            else {
                NSLog(@"Model not Saved");
            }
        }
        else {
            NSLog(@"Name not Saved");
        }
        
    }
    else if (localSegment.selectedSegmentIndex == 2) {
        
        // NSString *year = self.nameTextField.text;
        //
        //        NSString *model = self.modeltextField.text;
        //
        //        NSString *price = self.companyTextField.text;
        //
        
        if (model.length > 0) {
            if (price.length > 0) {
                
                NSManagedObjectContext *context = [self managedObjectContext];
                
                NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"AC" inManagedObjectContext:context];
                
                //[newDevice setValue:year forKey:@"year"];
                [newDevice setValue:model forKey:@"model"];
                [newDevice setValue:price forKey:@"price"];
                
                
                NSError *error;
                
                if ([context save:&error]) {
                    NSLog(@"Saved");
                    
                    [self.navigationController
                     popViewControllerAnimated:YES];
                    
                }
                else {
                    NSLog(@"Unbable Saved to save :%@",error.localizedDescription);
                }
                
                
            }
            
            else {
                NSLog(@"Model not Saved");
            }
        }
        else {
            NSLog(@"Name not Saved");
        }
    }
}



- (IBAction)cancelAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)segmentAction:(id)sender {
    localSegment = sender;
    NSInteger i;
    switch (localSegment.selectedSegmentIndex == i) {
        case 0:
            NSLog(@"Items not saved");
            [self saveAction:sender];
            break;
        case 1:
            NSLog(@"Items not saved");
            [self saveAction:sender];
        case 2:
            NSLog(@"Items not saved");
            [self saveAction:sender];
        default:
            break;
    }

}
@end
