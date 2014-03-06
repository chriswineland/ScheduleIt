//
//  SIGroupedTableViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/6/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SIGroupedTableViewController.h"

@interface SIGroupedTableViewController ()

@end

@implementation SIGroupedTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

/*
 this is logic to expand and shink a table view based on tap
 //if the label says view more add the extra services to the list
 if ([[[cell textLabel] text] caseInsensitiveCompare: NSLocalizedString(@"MoreServicesLabel",@"")] == NSOrderedSame) {
 
 [[cell textLabel] setText: NSLocalizedString(@"ViewLessLabel",@"")];
 UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"up_chevron.png"]];
 [cell setAccessoryView:imageView];
 [imageView release];
 
 [servicesArray replaceObjectAtIndex:([servicesArray count] - 1) withObject:NSLocalizedString(@"ViewLessLabel",@"")];
 
 NSMutableArray *insertIndexPaths = [[NSMutableArray alloc] initWithCapacity:0];
 
 for (id serviceType in extraServicesArray) {
 
 [servicesArray insertObject:serviceType atIndex: ([servicesArray count] - 1)];
 
 [insertIndexPaths addObject:[NSIndexPath indexPathForRow:[servicesArray indexOfObject:serviceType] inSection:kWhichService_Section]];
 
 
 }
 
 [tableView beginUpdates];
 [tableView insertRowsAtIndexPaths:insertIndexPaths withRowAnimation:UITableViewRowAnimationFade];
 [tableView endUpdates];
 
 [insertIndexPaths release];
 
 } else if ([[[cell textLabel] text] caseInsensitiveCompare: NSLocalizedString(@"ViewLessLabel",@"")] == NSOrderedSame) {
 //if the label says view less remove the extra services to the list
 
 [[cell textLabel] setText: NSLocalizedString(@"MoreServicesLabel",@"")];
 UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"down_chevron.png"]];
 [cell setAccessoryView:imageView];
 [imageView release];
 
 [servicesArray replaceObjectAtIndex:([servicesArray count] - 1) withObject:NSLocalizedString(@"MoreServicesLabel",@"")];
 
 
 NSMutableArray *deleteIndexPaths = [[NSMutableArray alloc] initWithCapacity:0];
 
 
 for (id serviceType in [[extraServicesArray reverseObjectEnumerator] allObjects]) {
 
 [deleteIndexPaths addObject:[NSIndexPath indexPathForRow:[servicesArray indexOfObject:serviceType] inSection:kWhichService_Section]];
 
 [servicesArray removeObject:serviceType];
 
 }
 
 [tableView beginUpdates];
 [tableView deleteRowsAtIndexPaths:deleteIndexPaths withRowAnimation:UITableViewRowAnimationFade];
 [tableView endUpdates];
 
 }
 */

@end
