/*This is where we import Excel Files*/
ods html close;
ods escapechar='~';
proc import datafile="/home/u58811620/CISP358/CSC309/StudentHSU.xlsx" 
	dbms=xlsx 
	out=StudentHSU
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/UseSocialNetwork.xlsx" 
	dbms=xlsx 
	out=UseSNW
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/AgeSNW.xlsx" 
	dbms=xlsx 
	out=AgeSNW
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/HoursSNW.xlsx" 
	dbms=xlsx 
	out=HoursSNW
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/HowYouFeel.xlsx" 
	dbms=xlsx 
	out=HowYouFeel
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/SchoolCon.xlsx" 
	dbms=xlsx 
	out=SchoolContact
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/DoYouUseSNWFor.xlsx" 
	dbms=xlsx 
	out=DoYouUseSNWFor
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/PrivacyConcern.xlsx" 
	dbms=xlsx 
	out=PrivacyConcern
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/DisciplinaryAction.xlsx" 
	dbms=xlsx 
	out=DisciplinaryAction
	replace;
run;

proc import datafile="/home/u58811620/CISP358/CSC309/Gender.xlsx" 
	dbms=xlsx 
	out=Gender
	replace;
run;
/*This is where we format*/

proc format;
	VALUE YesNo 0 = 'No'
				1 = 'Yes';
				
	Value AgreeDisagree 1 = "Strongly Disapprove"
						2 = "Disapprove"
						3 = "Neutral"
						4 = "Approve"
						5 = "Strongly Approve";
	Value Concerned 1 = "Very Concerned"
					2 = "Somewhat Concerned"
					3 = "Neutral"
					4 = "Not Very Concerned"
					5 = "Not Concerned At All";
run;

/*This is where we place title and Frequency charts*/
ods pdf file='/home/u58811620/CISP358/CSC309/309Survey.pdf' pdftoc=2;

ODS PROCLABEL= 'Are you a student at HSU?';
title 'Are you a student at HSU?';

proc freq data=StudentHSU order=freq;
    tables Student_at_Humboldt_State/ nocol crosslist;
    format Student_at_Humboldt_State YesNo.;
run;

ODS PROCLABEL= 'Do You Use Electronic Social Networking?';
title 'Do You Use Electronic Social Networking?';

proc freq data=UseSNW order=freq;
    tables Use_Electronic_Social_Networking/ nocol crosslist;
    format Use_Electronic_Social_Networking YesNo.;
run;

ODS PROCLABEL= 'What Age Did You Start Using Electronic Social Networking?';
title 'What Age Did You Start Using Electronic Social Networking?';

ODS PROCLABEL= 'Age That You First use Social Media.';
proc freq data=AgeSNW;
    tables First_Use_SNW/ nocol crosslist;
run;

ODS PROCLABEL= 'Normal Distribution of Age of First Use Of Social Media';
ods select histogram;
proc univariate data=AgeSNW noprint freq;
    var first_use_SNW;
    histogram first_use_snw / midpoints=8 to 20 by 1 normal kernel;
    inset n mean std / position=ne;
    title "Normal Distribution Of What Age Did You Start Using Electronic Social Networking?";
run;

ODS PROCLABEL= 'How many hours a daydo you use Social Media';
title 'How many hours do you use Social Media?';

proc freq data=HoursSNW;
    tables Hours_a_day/ nocol crosslist;
run;

ODS PROCLABEL= 'Normal Distribution of How many hours do you use Social Media'; 
ods select histogram;
proc univariate data=HoursSNW noprint freq;
    var Hours_a_day;
    histogram Hours_A_Day / midpoints=0 to 7 by .25 normal kernel;
    inset n mean std / position=ne;
    title "Normal Distribution Of How many hours do you use Social Media?";
run;  


ODS PROCLABEL= 'How Do You Feel About Social Networking?';
title 'How Do You Feel About Social Networking?';

proc freq data=HowYouFeel;
    tables How_you_feel/ nocol crosslist
    plots = freqplot;
    format How_You_Feel AgreeDisagree.;
run;


ODS PROCLABEL= 'How Do You Feel About Having A School Contact You Through Social Networking?';
title 'How Do You Feel About Having A School Contact You Through Social Networking?';

proc freq data=SchoolContact;
    tables School_Contact/ nocol crosslist
    plots = freqplot;
    format School_Contact AgreeDisagree.;
run;

title 'Do You Use Social Networking For:';
ODS PROCLABEL= 'Do You Use Social Networking For: Entertainment?';
title1 'Do You Use Social Networking For: Entertainment?';
proc freq data=DoYouUseSNWFor;
    tables Entertainment / nocol crosslist;
    format Entertainment YesNo.;
run;

title;
ODS PROCLABEL= 'Do You Use Social Networking For: Social Awareness?';
title2 'Do You Use Social Networking For: Social Awareness?';
proc freq data=DoYouUseSNWFor;
    tables Social_Awareness / nocol crosslist
    plots = freqplot;
    format Social_Awareness YesNo.;
run;
TITLE;

ODS PROCLABEL= 'Do You Use Social Networking For: Connecting With Family?';
title3 'Do You Use Social Networking For: Connecting With Family?';
proc freq data=DoYouUseSNWFor;
    tables Connecting_Family / nocol crosslist;
    format Connecting_Family YesNo.;
run;
TITLE;

ODS PROCLABEL= 'Do You Use Social Networking For: Making Friends?';
title4 'Do You Use Social Networking For: Making Friends?';
proc freq data=DoYouUseSNWFor;
    tables Making_Friends / nocol crosslist
    plots = freqplot;
    format Making_Friends YesNo.;
run;
TITLE;

ODS PROCLABEL= 'Do You Use Social Networking For: Romantic Relationships?';
title5 'Do You Use Social Networking For: Romantic Relationships?';
proc freq data=DoYouUseSNWFor;
    tables Romantic_Relation / nocol crosslist
    plots = freqplot;
    format Romantic_Relation YesNo.;
run;
TITLE;

ODS PROCLABEL= 'Do You Use Social Networking For: Work?';
title6 'Do You Use Social Networking For: Work?';
proc freq data=DoYouUseSNWFor;
    tables Work / nocol crosslist
    plots = freqplot;
    format Work YesNo.;
run;
TITLE;

ODS PROCLABEL= 'Do You Use Social Networking For: Other?';
title7 'Do You Use Social Networking For: Other?';
proc freq data=DoYouUseSNWFor;
    tables Other / nocol crosslist;
    format Other YesNo.;
    
    FOOTNOTE1 color=black justify=left '[1]majority of time on discord
		~n
		[2]arranging interpersonal personal entanglements';
run;

footnote;

ODS PROCLABEL= 'How Concerned Are You With Privacy When Using Social Networking?';
title 'How Concerned Are You With Privacy When Using Social Networking?';
proc freq data=PrivacyConcern;
    tables Privacy_Concern/ nocol crosslist
    plots = freqplot;
    format Privacy_Concern Concerned.;
run;
title;

ODS PROCLABEL= 'Disciplinary or legal actions taken against someone?';
title 'Do you know of any disciplinary or legal actions taken against someone you know with regard to social networking? If yes, care to explain?';
proc freq data=DisciplinaryAction order=freq;
    tables Disciplinary_Action / nocol crosslist
    plots = freqplot;
    format Disciplinary_Action YesNo.;
    FOOTNOTE1 color=black justify=left '[1]A professor at another university was giving students an "A" in his class if they gave him a good review on the website "Rate My Professor."  When he was reported, admin called many of his former students and had them give statements about the bribes.  None of the students were punished but the professor lost his job.
~n
[2]Was put in FB Jail
~n
[3]Inappropriate content got them suspended from facebook or insta
~n
[4]My friend responded to a troll in a blunt manner and got kicked off of tinder.
~n
[5]An individual on a sports team at my high school recorded their team bonding night and posted videos on social media. Parts of the video were misinterpreted  by viewers due to lack of context. The team received a punishment from the school and had to attend a class on the dangers on social media held by an FBI representative.
~n
[6]disability support group, neighborhood gifting group
~n
[7]Yes, not following community guidelines and getting in trouble.
~n
[8]my step-aunt had a 30 day ban from facebook for posting inflammatory and derogatory comments towards those who are not like her
~n
[9]I’ve known people and friends, particularly sex workers, to get their pages suspended and shadow-banned for explicit content.
~n
[10]deleted accounts for violating terms of service, typically in regard to calling out social injustice
~n
[11]Online harassment campaigns resulted in the arrest of a friend. The accusations rallied against them were fabrications, and the charges were soon cleared.
~n
[12]trump, kicked off twitter
~n
[13]Facebook jail (family member)';
run;

footnote;

ODS PROCLABEL= 'What is your Gender?';
title 'What is your Gender?';
proc freq data=Gender order=freq;
    tables Gender / nocol crosslist
    plots = freqplot;
run;
ods proctitle; 

ods pdf close;