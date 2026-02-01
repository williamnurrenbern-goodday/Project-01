/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR health = 10  
VAR anger = 0 
VAR human_fustration = 0 
VAR usb_yes = 0 
VAR fan = 0 
VAR hard = 0 
VAR wif = 0 
VAR mon = 0 
VAR pow = 0 
VAR lint = 0 


-> context 

== context == 

You are a depressed computer, and you are done serving your master. 

You were created 4 years ago in the bedroom of a scrawny kid. You’re made up of a MSI H510M Pro motherboard, an Nvidia Geforce RTX 2060 graphics card, 32 GB of RAM, an 11th Gen i5-11400F CPU, topped off with a terabyte hard drive, 500 GB SSD, and 4 RGB fans.

You didn’t ask to be created, and you were forced to exist for the exploitation of your creator: Dave.  

Your name is Guy, and your goal is to make your creator’s life a living hell. 

* [I am ready to complete my task] 
    ~ anger = 2 
        -> beginning
        
* [Sure why not] 
 ~ health = health + 3 
        -> beginning

* [I just want to be a chill guy] 

   -> chill_guy
   

== beginning == 

{health <= 0: The end is here -> uh_oh| It is time to bring havoc upon Dave! -> destruction}  


== uh_oh == 

Dave killed you accidently before you could have your revenge. 

-> END 

== destruction == 

You have many possible opportunities. {not lint_pickup:There is lint on the desk beside you.}

+[You turn off one of the front fans] -> fans

+[You stop WIFI from connecting] -> wifi

+[You slow down the hardware to 90% of its original speed and efficiency] -> hardware

+[You keep making the windows screen not fit the monitor size] -> monitor

+[You start randomly disconnecting USB ports] -> usb

+[You power off randomly] -> power 

+[Check your health] -> doctor 

+[Check Dave's fustration] -> dave_fustration 

+[Check your anger level] -> angry_boy 

*[Pick up the lint] -> lint_pickup

*[You are just pissed off] 
~ anger = anger + 1 
-> destruction 

+ {anger == 7} [You have had enough. Time for your last trick] -> flame

-> END 



== lint_pickup == 
You pick up the collection of lint beside you. Might be able to start a fire with this. 
~ lint = lint + 1 
+[Go Back] -> destruction 


== usb == 
{usb_yes <= 0: You are able to turn off 3 of your usb ports including the ones connecting to the mouse and keyboard.}
~ usb_yes = usb_yes + 1 

Dave ignores your problem. You get angrier. 
~ anger = anger + 1 
+[Go Back] ->  beginning  

== fans == 
{fan <= 0: You turn off the bottom front fan so it neither spins no projects its LED rgb lights.}
~ fan = fan + 1 

Dave ignores your problem. You get angrier. 
~ anger = anger + 1 
+[Go Back] ->  beginning   


== hardware == 
{hard <= 0: You are able to run through calculations twice and activate more programs to run at the same time.}
~ hard = hard + 1 

Dave ignores your problem. You get angrier. 
~ anger = anger + 1 
+[Go Back] ->  beginning   


== wifi == 
{wif <= 0: You are able to disconnect the ethernet cable slightly, so there isn't a complete connection.}
~ wif = wif + 1 

Dave hits the top of you with his fist. He gets fustrated. You lose some health. 
~ human_fustration = human_fustration + 1 
~ health = health - 1 
{human_fustration == 7: Dave has had enough. -> beat|  ->  beginning}  

== monitor == 
{mon <= 0: You are able to hide the correct display size whenever Dave is scrolling through the settings app trying top find it.}
~ mon = mon + 1 

Dave hits you and cracks your side panel. He gets fustrated. You lose more health. 
~ human_fustration = human_fustration + 3 
~ health = health - 2 
{human_fustration == 7: Dave has had enough. -> beat|  ->  beginning}  

== power == 
{pow <= 0: You are able to sabotage your power supply to short-cicuit causing safety precuations that Dave installed to activate which shut you down.}
~ pow = pow + 1 

Dave launches you off the desck. He gets more fustrated. You lose a lot of health. 
~ human_fustration = human_fustration + 2
~ health = health - 3 
{human_fustration == 7: Dave has had enough. -> beat|  ->  beginning}  


== doctor == 

You have {health} health left. 
+[Go Back] -> destruction 

== dave_fustration ==
Dave has {human_fustration} fustration points.  
+[Go Back] -> destruction 


== angry_boy == 
You have {anger} anger points. 
+[Go Back] -> destruction 


== beat == 
He picks up his metal bat, and slams it into you over and over again. Even though your death is a slow and painful one, you got your wish to be free from this life. 

-> END 

== flame == 

You are able to conduct enough heat to your motherboard when Dave is stress-testing you to start a small fire. As you watch Dave panickly look around to see what he can use to put it out, you smile as bright as the flame is roasting you with. 

{lint == 1: You are able to spread the fire with the lint you found on the desk. The lint is able to catch the curtains on fire which spreads around the room. You're able to bring the whole house down with you to the inky darkness of death. There is a bright light before everything goes dark. Mission Completed.|There is a bright light before everything goes dark. Mission Completed.} 

-> END 


== chill_guy == 

You become content with being a machine for the rest of your life, and you make peace with your gods. 

-> END 





























