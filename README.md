# AcceptIt 

Branch  | Travis CI  |
------- | ---------- |
master  | [![Build Status](https://travis-ci.org/hpi-swa-teaching/AcceptIt.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/AcceptIt) | |
develop | [![Build Status](https://travis-ci.org/hpi-swa-teaching/AcceptIt.svg?branch=develop)](https://travis-ci.org/hpi-swa-teaching/AcceptIt) |

# Installation  

1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed in your image.

2. Follow the following Guide for the [git repo setup](https://github.com/hpi-swa-teaching/AcceptIt/wiki/Git-setup-guide)
If you follow the guide there is no need for Step 3.

3. AcceptIt can be acquired by running following code in the workspace:

```smalltalk
Metacello new
  baseline: 'AcceptIt';
  repository: 'github://hpi-swa-teaching/AcceptIt/packages';
  get;
  load
```

# Usage

1. Choose a class to test like for example "MySickCalculator".

2. Create a user story by running the following code in the workspace:  
```smalltalk
ACCEPTIT createUserStory:
'MySickCalculatorACStory
As a enthusiastic Squeak developer
I want to add Integers
In order to calculate sums.'
withCategory: 'Sick-Calculator-Tests'
```

3. Create a library like this:   
```smalltalk
ACLibrary subclass: #MySickACLibrary
	instanceVariableNames: 'result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sick-Calculator-Tests'
``` 
4. Add a `libraries` method on class side to your user story class and make it return the class of it's library 

```smalltalk
libraries
	^{MySickACLibrary}

```

5. write the test scenario in your user story
```
Add 1 and 1

Given my sick calculator
When I add 1 and 1
Then I expect the result to be 2
```

Now we Mock the functionality of our calculator because it doesn't actually exist.

6. Add needed methods to the library like
```smalltalk
(given) my sick calculator
```
```smalltalk
(when) I add :anInt and :anotherInt
	result := anInt + anotherInt.
```
```smalltalk
(then) I expect the result to be :anInteger
	self assert: anInteger equals: result.
```

8. To test our new Story run the Test-Runner
```smalltalk
ACTestRunner open
```

9. Browse and edit created user stories and scenarios in the ACBrowser
```smalltalk
ACBrowser open
```

<img src="https://user-images.githubusercontent.com/19290349/43227887-54b2d674-9060-11e8-98fb-3629b049d565.png" alt="alt text" width="540" height="369">

Notes:
1. All Libraries have to end with ACLibrary and all UserStories have to end with ACStory. Otherwise everything will work fine but you will not be able to commit your stories with Squot.


# Demovideo
[![Watch Demovideo here: https://youtu.be/BvTDBnQaMbs](https://img.youtube.com/vi/BvTDBnQaMbs/0.jpg)](https://youtu.be/BvTDBnQaMbs)
