## Project Overview     

Describe your program/game in 2–3 sentences: A small idle game, focused on collecting resources and establishing space trade routes. Users can collect resources from planets, then use that to create buildings to passively gain those resources. Some late-game buildings will provide special resources used for permanent or powerful upgrades, such as developing new travel technologies.

Purpose:
	The purpose of my program is to be a simple idle game, designed as a quick distraction or as second-screen entertainment

Target Audience:
	Age group: Any
	Interests: Idle games and sci fi
	Platform: Mobile, Desktop, or Web?

Core Loop (What the user repeatedly does):  Users can collect resources, then use them to create buildings to passively gain them. They can unlock upgrades to increase the efficiency of their buildings. They can unlock new planets, which allow for the gaining of new resources.
## Requirements & Specifications 

|                           |                                                                        |                                                                                                                                                                                                                                                                                                              |
| ------------------------- | ---------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Requirement/Specification | Define it                                                              | Describe it in context                                                                                                                                                                                                                                                                                       |
| Requirement               | Create a system that manages resource gain and tracks amounts owned    | I will create a series of functions and data structures that work to manage resource gain and track the amount owned of each resource. Other objects will be able to call these scripts to add resource gain modifiers, or change the base amount of resources gained due to more buildings being purchased. |
| Requirement               | Create a system that allows users to purchase buildings and upgrades   |                                                                                                                                                                                                                                                                                                              |
| Requirement               | Create a system that tracks time and returns a tick 20 times a second. |                                                                                                                                                                                                                                                                                                              |
| Specification             | Make prices for repeatable purchases scale. <br><br>                   | Prices increase by an additional 10% cost each time a user buys said upgrade by default, with some upgrades costing more.<br>default cost formula:<br>price = baseprice x 1.1^amountowned x modifiers                                                                                                        |
| Specification             | Have at least 5 purchasable buildings/upgrade                          | Create at least 5 buildings/upgrades that the user can purchase, that overall increase gain of resources                                                                                                                                                                                                     |
|                           |                                                                        |                                                                                                                                                                                                                                                                                                              |

Game-Specific Requirements – describe briefly 

|                  |                   |                            |                                                  |
| ---------------- | ----------------- | -------------------------- | ------------------------------------------------ |
| Win condition:   | Lose condition:   | Scoring system:            | Difficulty increases by:                         |
| No win available | No loss available | Amount of resources gained | Prices increase as more buildings are purchased. |
## Planning & Design  

#### Variables/Constants I Will Use (add rows as needed): 

|                   |      |                                                                             |
| ----------------- | ---- | --------------------------------------------------------------------------- |
| Variable Name     | Type | Purpose                                                                     |
| ticks_this_second | int  | tracks how many ticks have elapsed since the last second signal was emitted |
| save_slot         | int  | parsed into the save/load functions to tell them which slot to use          |
|                   |      |                                                                             |
|                   |      |                                                                             |
|                   |      |                                                                             |

#### Collection(s) I Will Use: 

|                 |                        |                                                            |
| --------------- | ---------------------- | ---------------------------------------------------------- |
| Collection Name | Type (List/Dictionary) | What it stores                                             |
| resource1       | dict                   | info about resource 1(amount owned, amount per click, etc) |
|                 |                        |                                                            |
| unlocks         | dict                   | unlocks (planets, etc.)                                    |
| upgrades        | dict                   | upgrade levels, costs, and effects                         |

### Key Algorithms / Important Logic 

Program Code 

Insert full program via md code snippets. Include summary explaining major sections. 

### Debugging and Testing 


#### Debugging Evidence – add your main problems below; include snippets of code/terminal output 

|   |   |   |   |
|---|---|---|---|
|Snapshot of Code|Snapshot of error|Snapshot of Fixed Code|Explanation of Fix|
|||||
|||||
|||||
|||||
|||||

#### Planned Test Cases (add more rows as needed) - this table needs to be comprehensive for a high grade 

|   |   |   |   |   |
|---|---|---|---|---|
|Test Case|Type (Normal-Expected Input Cases/Boundary-Edge Cases/Invalid-Unusual-Unexpected Cases)|Expected Outcome|Actual Outcome|Fix Needed?|
||||||
||||||
||||||
||||||
||||||
||||||
||||||
||||||
||||||

Paste your link to your short testing screencast showing running and testing your computer program with the input from the test cases above. 

### Improvements During Development and Version Log 

Take a Snapshot of your development folder showing component program files and versions of your final game. 

Describe improvements made after testing/end-user feedback and why they improved the program. 

### Flexibility & Robustness (Excellence Evidence) 
    

Explain how your program is flexible (e.g., loops instead of repeated code, constants instead of hardcoded numbers, input validation, removal of literals). 

### Reflection 

How well does your program meet its purpose? 

What works well? 

What would you improve with more time? 

What did you learn about programming?