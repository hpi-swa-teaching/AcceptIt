# SWT16-Project-07 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-07.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-07)



# Installation  

1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed in your image.

2. AcceptIt can be acquired by running following code in the workspace:

```smalltalk
Metacello new
  baseline: 'AcceptIt';
  repository: 'github://HPI-SWA-Teaching/SWT16-Project-07/packages';
  get;
  load
```

# Usage

1.	Choose a class to test like for example "MySuperCalculator" 

2.	Create a user story by running the following code in the workspace:  
```
ACUserStory userStoryNamed: 'ACCalculatorUserStory' 

story: 
AC Calculator User Story
In order to test my sophisticated calculator class
As a developer
I want to do some complicated calculations'

withCategory: 'acceptitTest-calculator'

fullText: 
'AC Calculator User Story
In order to test my sophisticated calculator class
As a developer
I want to do some complicated calculations'.
```

3.	Create a library by running the following code in the workspace:   
```
ACLibrary generateNewLibrary: MySuooerCalculator
``` 

4. Add a 'libraries' message to your user story class and make it return '^{MySuperCalculatorLibrary}'

5.	write the test scenario in your user story
```
Given A is 5
And B is 6
When I add A and B
Then I expect 11
```

6. Add needed methods to the library like
```
(given) A is :aNumber

  self first: aNumber
```

7.	run the Test-Runner
```ACTestRunner open```

