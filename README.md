# AcceptIt 

Branch  | Travis CI  | Code Coverage |
------- | ---------- | ------------- |
master  | [![Build Status](https://travis-ci.org/hpi-swa-teaching/AcceptIt.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/AcceptIt) | |
develop | [![Build Status](https://travis-ci.org/hpi-swa-teaching/AcceptIt.svg?branch=develop)](https://travis-ci.org/hpi-swa-teaching/AcceptIt) | [![Coverage Status](http://coveralls.io/repos/github/hpi-swa-teaching/AcceptIt/badge.svg?branch=develop&service=github)](https://coveralls.io/github/hpi-swa-teaching/AcceptIt) |

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

1. Choose a class to test like for example "MySuperCalculator" 

2. Create a user story by running the following code in the workspace:  
```smalltalk
ACUserStory userStoryNamed: 'ACCalculatorUserStory' 

story: 
'AC Calculator User Story
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

3. Create a library by running the following code in the workspace:   
```smalltalk
ACLibrary generateNewLibrary: #MySuperCalculator
``` 
4. Add a `libraries` method on class side to your user story class and make it return the class of it's library 

```
libraries

  ^ {MySuperCalculatorLibrary}

```

5. write the test scenario in your user story
```
mvus

Given A is true
When I do nothing
Then I expect A to be trtrue
```
AND YES THE `trtrue` IS INTENTIONAL AND JUST A WEIRD WORKAROUND THE THEN-PARSER IS BUGGED ATM see issue #39

6. Add needed methods to the library like
```smalltalk
(given) A is :aBool
  MySuperCalculatorLibrary a: aBool.
```
  
```smalltalk
(when) I do nothing

```
```smalltalk
(then) I expect A to be :aBool
	self assert: [MySuperCalculatorLibrary a = aBool].
```
7. Add the according methods on class side (also add an instance variable `a` on class side):
```smalltalk
a: aBool
  a := aBool.
```
```smalltalk
a
  ^a
```

8. Run the Test-Runner
```smalltalk
ACTestRunner open
```

