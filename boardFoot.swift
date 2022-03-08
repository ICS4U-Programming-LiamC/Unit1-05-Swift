//
//  boardFoot.swift
//
//  Created by Liam Csiffary
//  Created on 2022-03-08
//  Version 1.0
//  Copyright (c) 2022 IMH. All rights reserved.
//
// The board foot program calculates the length required for a
// board to have a volume of 144 inches^3 given height and width

import Foundation // import Foundation

// define BoardFoot()
func BoardFoot(Width:Double, Height:Double) -> Double {
  // returns the length according to the followig equation
  return (144 / (Width * Height))
}

// define main()
func main() {
  while (true) {
    // get width and height
    print("Input width in inches");
    let widthString = readLine();
    print("Input width in height");
    let heightString = readLine();

    // cast them into doubles instead of strings
    let widthDouble = Double(widthString!) ?? -1;
    let heightDouble = Double(heightString!) ?? -1;

    // Incase they didn't enter two numbers
    if (widthDouble == -1.0 || heightDouble == -1.0) {
      print("You must input two numbers");

    // makes sure their inputs were positive and non 0
    } else if (widthDouble > 0 && heightDouble > 0) {
      let length = BoardFoot(Width:widthDouble, Height:heightDouble);
      print("The length of your board is \(length) inches");
      break;
    } else {
      print("Your numbers must be positive");
    }
  }
}

// start the main function
main();
