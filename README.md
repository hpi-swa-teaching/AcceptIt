# AcceptIt 

Branch  | Travis CI  | Code Coverage |
------- | ---------- | ------------- |
master  | [![Build Status](https://travis-ci.org/hpi-swa-teaching/AcceptIt.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/AcceptIt) | |
develop | [![Build Status](https://travis-ci.org/hpi-swa-teaching/AcceptIt.svg?branch=develop)](https://travis-ci.org/hpi-swa-teaching/AcceptIt) | [![Coverage Status](http://coveralls.io/repos/github/hpi-swa-teaching/AcceptIt/badge.svg?branch=develop)](https://coveralls.io/github/hpi-swa-teaching/AcceptIt) |

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
minimal viable user story

Given A is true
When I do nothing
Then I expect A to be true
```

6. Add needed methods to the library like
```smalltalk
(given) A is :aBool
  self class a: aBool
  
(when) I do nothing

(then) I expect A to be :aBool
  assert: [self class a = aBool]
```
7. Add the according methods on class side (also add an instance variable `a` on class side):
```smalltalk
a: aBool
  a := aBool.
  
a
  ^a
```

8. Run the Test-Runner
```smalltalk
ACTestRunner open
```

