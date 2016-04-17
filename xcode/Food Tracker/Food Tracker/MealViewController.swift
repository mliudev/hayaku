//
//  MealViewController.swift
//  Food Tracker
//
//  Created by Manwe on 4/10/16.
//  Copyright © 2016 Manwe. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate,
    UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }

    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(textField: UITextField) {
    }

    // MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // The info dictionary contains multiple representations of the image,
        // and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as!
            UIImage
        photoImageView.image = selectedImage
        dismissViewControllerAnimated(true, completion: nil)
    }

    // MARK: Actions
    @IBAction func selectimageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(
            imagePickerController, animated: true, completion: nil)
    }
}

