# SWEmptyPlaceHolderView

## About The Project
This project is built to simplify the placeholder for empty collectionView and tableView

## Screenshot
<img src="https://github.com/seanwohc/SWEmptyPlaceHolderView/blob/master/Screenshot.png" width="250">

## Getting Started

Copy the SWEmptyPlaceHolderView.swift from SWEmptyPlaceHolderView/Source into your project

## Usage
```Swift
//Declare a global variable
var swEmptyPlaceHolderView: SWEmptyPlaceHolderView!

//Setup in viewDidLoad
self.swEmptyPlaceHolderView = SWEmptyPlaceHolderView()
self.view.addFullscreenView(swEmptyPlaceHolderView, bottom: 48)
self.swEmptyPlaceHolderView.configureView(image: UIImage(named: "binoculars"),
                                                  text: "SWEmptyPlaceHolderView")
                                                  
//Handle show/hide of the swEmptyPlaceHolderView depends on array size
self.swEmptyPlaceHolderView.isHidden = !self.array.isEmpty                                                  
```

## License
Distributed under the MIT License. See `LICENSE` for more information.

## Acknowledgements
[Binoculars free icon](https://www.flaticon.com/free-icon/binoculars_3904074)
