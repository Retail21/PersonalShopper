//
//  StaticVC.swift
//  PersonalShopper
//
//  Created by Joao Pedro Brandao on 5/11/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class StaticVC: UIViewController, UISearchBarDelegate, UIPopoverPresentationControllerDelegate
{
    var header:HeaderView!
    var colors:Color!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        colors = Color()
        self.tabBarController?.tabBar.tintColor = colors.Store
        
        header = HeaderView(frame: self.navigationController!.navigationBar.frame)
        self.navigationController?.navigationBar.addSubview(header)
        header.searchBar.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar)
    {
        println(searchBar.text)
        
        header.buttonCancel.setTitle("Cancel", forState: UIControlState.Normal)
        header.buttonCancel.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        header.buttonCancel.titleLabel?.font = UIFont(name: "HelveticaNeue-Normal", size: 18)
        header.buttonCancel.addTarget(self, action: "searchBarTextDidEndEditing:", forControlEvents: UIControlEvents.TouchUpInside)
        
        UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.LayoutSubviews, animations:
            {
                
                self.header.buttonCancel.frame = CGRectMake(920 , -5, 60, 18)
                self.header.searchBar.frame = CGRectMake(139, -10, 757, 28)
                
            }, completion: nil)
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar)
    {
        println("sssss")
    }
    
    var showAutoComplete = true
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
    {
        //println("\(searchText)")
        
        if count(searchText) >= 3
        {
            if showAutoComplete
            {
                showAutoComplete = false
                self.header.popovercontent = AutoCompletePopverController()
                self.header.popovercontent.modalPresentationStyle = UIModalPresentationStyle.Popover
                self.header.popovercontent.preferredContentSize = CGSizeMake(header.searchBar.frame.width, 300)
                
                
                self.header.popovercontent.popoverPresentationController?.delegate = self
                self.header.popovercontent.popoverPresentationController?.sourceView = self.view
                self.header.popovercontent.popoverPresentationController?.sourceRect = CGRectMake(520, self.navigationController!.navigationBar.frame.height + 225, 0, 0)
                
                self.header.popovercontent.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.allZeros
                
                //self.header.popovercontent.popoverPresentationController?.containerView.alpha = 0.5
                
                println("\(self.header.popovercontent.popoverPresentationController?.sourceRect)")
                
                self.presentViewController(self.header.popovercontent, animated: true, completion: nil)
                
            }
        }
        else if !showAutoComplete
        {
            self.header.popovercontent.dismissViewControllerAnimated(false, completion: nil)
            showAutoComplete = true
            //dismiss autocomplete
        }
    }
    
    func searchBarTextDidEndEditing(searchBar: UISearchBar)
    {
        println("ddddd")
        header.buttonCancel.removeTarget(nil, action: nil, forControlEvents: UIControlEvents.AllEvents)
        self.header.endEditing(true)
        
        UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.LayoutSubviews, animations:
            {
                
                self.header.buttonCancel.frame = CGRectMake(920 , -5, 260, 18)
                self.header.searchBar.frame = CGRectMake(139, -10, 861, 28)
                
            }, completion: nil)
    }
    
    func popoverPresentationControllerShouldDismissPopover(popoverPresentationController: UIPopoverPresentationController) -> Bool
    {
        showAutoComplete = true
        return true;
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
