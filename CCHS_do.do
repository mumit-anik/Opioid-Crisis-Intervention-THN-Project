
***********Replication Code for MA paper*********

set matsize 10000
clear all
set more off
global data " "
global dir " "


****Cleaning CCHS 2001 Data****
import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\cchs-82M0013-E-2001-c1-1-general-file\cchs-82M0013-E-2001-c1-1-general-file_F1.csv

keep geoagprv dhhagage dhha_sex dhhagms gena_01 twda_5 hcua_01 ccca_151 ccca_121 ccca_12a drga_1e ccca_071 eduadr04 lbfa_31a sdcafimm 
sdcagrac incaghh cmha_01k


rename cmha_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geoagprv Province
label var Province "Province"
rename dhhagage Age
label var Age "Age"
rename dhha_sex Gender
label var Gender "Gender"
rename dhhagms Marital
label var Marital "Marital Status"
rename gena_01 Self_Health
label var Self_Health "Self Perceived Health"
rename twda_5 Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename hcua_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccca_071 High_BP
label var High_BP "Has high blood pressure"
rename ccca_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccca_12a Heart_Attack
label var Heart_Attack "Had heart attack"
rename ccca_151 Stroke
label var Stroke "Had stroke"
rename drga_1e Opioid
label var Opioid "Took Opioid"
rename sdcafimm Immigrant
label var Immigrant "Immigration Status"
rename sdcagrac Cultural
label var Cultural "Cultural Origin"
rename eduadr04 Education
label var Education "Education"
rename lbfa_31a Occupation
label var Occupation "Occupation"
rename incaghh Income
label var Income "Hosehold Income"


gen Refyear=2001
label var Refyear "Reference Year"

save "C:\Users\Mumitul\Desktop\cchs-2001.dta"

******Cleaning CCHS 2003******

import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\cchs-82M0013-E-2003-c2-1-GeneralFile\cchs-82M0013-E-2003-c2-1-GeneralFile_F1.csv

keep geocgprv dhhcgage dhhc_sex dhhcgms genc_01 hcuc_1aa hcuc_01 cccc_12a cccc_121 cccc_151 medc_1e hcuc_09b cccc_071 sdccfimm sdccgrac 
educdr04 inccghh cmhc_01k idgcfycm dpscdwk lbfcdwss swlc_03

rename swlc_03 Leisure
label var Leisure "Leisure Satisfaction"
gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbfcdwss==1|lbfcdwss==2)
replace Employed=0 if (lbfcdwss==3|lbfcdwss==4|lbfcdwss==5|lbfcdwss==6|lbfcdwss==7|lbfcdwss==8|lbfcdwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbfcdwss==2
replace Absent=0 if lbfcdwss==1
rename dpscdwk Depression 
label var Depression "Felt Depressed"
rename cmhc_01k Mental
label var Mental "Consulted Mental Health Professional"
rename idgcfycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename geocgprv Province
label var Province "Province"
rename dhhcgage Age
label var Age "Age"
rename dhhc_sex Gender
label var Gender "Gender"
rename dhhcgms Marital
label var Marital "Marital Status"
rename genc_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcuc_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename hcuc_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename cccc_071 High_BP
label var High_BP "Has high blood pressure"
rename cccc_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename cccc_12a Heart_Attack
label var Heart_Attack "Had heart attack"
rename cccc_151 Stroke
label var Stroke "Had stroke"
rename medc_1e Opioid
label var Opioid "Took Opioid"
rename sdccfimm Immigrant
label var Immigrant "Immigration Status"
rename sdccgrac Cultural
label var Cultural "Cultural Origin"
rename educdr04 Education
label var Education "Education"
rename inccghh Income
label var Income "Hosehold Income"
rename hcuc_09b ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2003

browse

save "C:\Users\Mumitul\Desktop\cchs-2003.dta"


******Cleaning CCHS 2005*******

import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\cchs-82M0013-E-2005-c3-1-mainfile\cchs-82M0013-E-2005-c3-1-main-file_F


keep geoegprv dhhegage dhhe_sex dhhegms gene_01 hcue_1aa hcue_01 ccce_111 ccce_121 ccce_151 mede_1e hcue_09b ccce_071 sdcefimm sdcegcgt eduedr04 inceghh
cmhe_01k idgefycm dpsedwk lbsedwss swle_03

rename swle_03 Leisure
label var Leisure "Leisure Satisfaction"
gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbsedwss==1|lbsedwss==2)
replace Employed=0 if (lbsedwss==3|lbsedwss==4|lbsedwss==5|lbsedwss==6|lbsedwss==7|lbsedwss==8|lbsedwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbsedwss==2
replace Absent=0 if lbsedwss==1
rename dpsedwk Depression
label var Depression "Felt Depressed" 
rename idgefycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmhe_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geoegprv Province
label var Province "Province"
rename dhhegage Age
label var Age "Age"
rename dhhe_sex Gender
label var Gender "Gender"
rename dhhegms Marital
label var Marital "Marital Status"
rename gene_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcue_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename hcue_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccce_071 High_BP
label var High_BP "Has high blood pressure"
rename ccce_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccce_151 Stroke
label var Stroke "Had stroke"
rename mede_1e Opioid
label var Opioid "Took Opioid"
rename sdcefimm Immigrant
label var Immigrant "Immigration Status"
rename sdcegcgt Cultural
label var Cultural "Cultural Origin"
rename eduedr04 Education
label var Education "Education"
rename inceghh Income
label var Income "Hosehold Income"
rename hcue_09b ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2005

save "C:\Users\Mumitul\Desktop\cchs-2005.dta"

******Cleaning CCHS 2008 Data*******


import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\cchs-E-2007-2008-AnnualComponent\cchs-E-2007-2008-AnnualComponent_F1.csv


keep geogprv dhhgage dhh_sex dhhgms gen_01 hcu_1aa hcu_01 ccc_121 ccc_151 hcu_1a2 ccc_071 sdcfimm sdcgcgt edudr04 incghh cmh_01k
dps_02 idgfycm lbsdwss swl_03

rename swl_03 Leisure
label var Leisure "Leisure Satisfaction"
gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbsdwss==1|lbsdwss==2)
replace Employed=0 if (lbsdwss==3|lbsdwss==4|lbsdwss==5|lbsdwss==6|lbsdwss==7|lbsdwss==8|lbsdwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbsdwss==2
replace Absent=0 if lbsdwss==1
rename dps_02 Depression
label var Depression "Felt Depressed"
rename idgfycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmh_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geogprv Province
label var Province "Province"
rename dhhgage Age
label var Age "Age"
rename dhh_sex Gender
label var Gender "Gender"
rename dhhgms Marital
label var Marital "Marital Status"
rename gen_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcu_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename hcu_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccc_071 High_BP
label var High_BP "Has high blood pressure"
rename ccc_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccc_151 Stroke
label var Stroke "Had stroke"
rename sdcfimm Immigrant
label var Immigrant "Immigration Status"
rename sdcgcgt Cultural
label var Cultural "Cultural Origin"
rename edudr04 Education
label var Education "Education"
rename incghh Income
label var Income "Hosehold Income"
rename hcu_1a2 ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2008

 save "C:\Users\Mumitul\Desktop\cchs-2008.dta"

*******Cleaning CCHS-2009 File*********

import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\CCHS-82M0013-E-2009-2010-Annualcomponent\CCHS-82M0013-E-2009-2010-Annualcomponent_F1.csv


keep geogprv dhhgage dhh_sex dhhgms gen_01 hcu_1aa chp_01 ccc_121 ccc_151 hcu_1a2 ccc_071 sdcfimm sdcgcgt edudr04 incghh cmh_01k
dps_02 idgfyac lbsdwss swl_03

rename swl_03 Leisure
label var Leisure "Leisure Satisfaction"
gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbsdwss==1|lbsdwss==2)
replace Employed=0 if (lbsdwss==3|lbsdwss==4|lbsdwss==5|lbsdwss==6|lbsdwss==7|lbsdwss==8|lbsdwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbsdwss==2
replace Absent=0 if lbsdwss==1
rename dps_02 Depression
label var Depression "Felt Depressed"
rename idgfyac Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmh_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geogprv Province
label var Province "Province"
rename dhhgage Age
label var Age "Age"
rename dhh_sex Gender
label var Gender "Gender"
rename dhhgms Marital
label var Marital "Marital Status"
rename gen_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcu_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename chp_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccc_071 High_BP
label var High_BP "Has high blood pressure"
rename ccc_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccc_151 Stroke
label var Stroke "Had stroke"
rename sdcfimm Immigrant
label var Immigrant "Immigration Status"
rename sdcgcgt Cultural
label var Cultural "Cultural Origin"
rename edudr04 Education
label var Education "Education"
rename incghh Income
label var Income "Hosehold Income"
rename hcu_1a2 ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2009

save "C:\Users\Mumitul\Desktop\cchs-2009.dta"

********CCHS-2010 Cleaning***********

import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\CCHS-82M0013-E-2010-AnnualComponent\CCHS-82M0013-E-2010-AnnualComponent_F1.csv

keep geogprv dhhgage dhh_sex dhhgms gen_01 hcu_1aa chp_01 ccc_121 ccc_151 hcu_1a2 ccc_071 sdcfimm sdcgcgt edudr04 incghh cmh_01k
dps_02 idgfycm lbsdwss swl_03

rename swl_03 Leisure
label var Leisure "Leisure Satisfaction"
gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbsdwss==1|lbsdwss==2)
replace Employed=0 if (lbsdwss==3|lbsdwss==4|lbsdwss==5|lbsdwss==6|lbsdwss==7|lbsdwss==8|lbsdwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbsdwss==2
replace Absent=0 if lbsdwss==1
rename dps_02 Depression
label var Depression "Felt Depressed"
rename idgfycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmh_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geogprv Province
label var Province "Province"
rename dhhgage Age
label var Age "Age"
rename dhh_sex Gender
label var Gender "Gender"
rename dhhgms Marital
label var Marital "Marital Status"
rename gen_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcu_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename chp_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccc_071 High_BP
label var High_BP "Has high blood pressure"
rename ccc_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccc_151 Stroke
label var Stroke "Had stroke"
rename sdcfimm Immigrant
label var Immigrant "Immigration Status"
rename sdcgcgt Cultural
label var Cultural "Cultural Origin"
rename edudr04 Education
label var Education "Education"
rename incghh Income
label var Income "Hosehold Income"
rename hcu_1a2 ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2010

save "C:\Users\Mumitul\Desktop\cchs-2010.dta"

********Cleaning CCHS-2011 File***********

import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\cchs-82M0013-E-2011-2012-Annual-component\cchs-82M0013-E-2011-2012-Annual-component_F1.csv


keep geogprv dhhgage dhh_sex dhhgms gen_01 hcu_1aa chp_01 med_1e ccc_121 ccc_151 hcu_1a2 ccc_071 sdcfimm sdcgcgt edudr04 incghh cmh_01k
dps_02 idgfycm lbsdwss swl_03

rename swl_03 Leisure
label var Leisure "Leisure Satisfaction"
gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbsdwss==1|lbsdwss==2)
replace Employed=0 if (lbsdwss==3|lbsdwss==4|lbsdwss==5|lbsdwss==6|lbsdwss==7|lbsdwss==8|lbsdwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbsdwss==2
replace Absent=0 if lbsdwss==1
rename dps_02 Depression
label var Depression "Felt Depressed"
rename idgfycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmh_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geogprv Province
label var Province "Province"
rename dhhgage Age
label var Age "Age"
rename dhh_sex Gender
label var Gender "Gender"
rename dhhgms Marital
label var Marital "Marital Status"
rename gen_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcu_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename chp_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccc_071 High_BP
label var High_BP "Has high blood pressure"
rename ccc_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccc_151 Stroke
label var Stroke "Had stroke"
rename med_1e Opioid
label var Opioid "Took Opioid"
rename sdcfimm Immigrant
label var Immigrant "Immigration Status"
rename sdcgcgt Cultural
label var Cultural "Cultural Origin"
rename edudr04 Education
label var Education "Education"
rename incghh Income
label var Income "Hosehold Income"
rename hcu_1a2 ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2011

save "C:\Users\Mumitul\Desktop\cchs-2011.dta"

********Cleaning CCHS-2012 File*********

import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\cchs-82M0013-E-2012-Annual-component\cchs-82M0013-E-2012-Annual-component_F1.csv

keep geogprv dhhgage dhh_sex dhhgms gen_01 hcu_1aa chp_01 ccc_121 ccc_151 hcu_1a2 ccc_071 sdcfimm sdcgcgt edudr04 incghh cmh_01k
dps_02 idgfycm lbsdwss swl_03

rename swl_03 Leisure
label var Leisure "Leisure Satisfaction"
gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbsdwss==1|lbsdwss==2)
replace Employed=0 if (lbsdwss==3|lbsdwss==4|lbsdwss==5|lbsdwss==6|lbsdwss==7|lbsdwss==8|lbsdwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbsdwss==2
replace Absent=0 if lbsdwss==1
rename dps_02 Depression
label var Depression "Felt Depressed"
rename idgfycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmh_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geogprv Province
label var Province "Province"
rename dhhgage Age
label var Age "Age"
rename dhh_sex Gender
label var Gender "Gender"
rename dhhgms Marital
label var Marital "Marital Status"
rename gen_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcu_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename chp_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccc_071 High_BP
label var High_BP "Has high blood pressure"
rename ccc_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccc_151 Stroke
label var Stroke "Had stroke" 
rename sdcfimm Immigrant
label var Immigrant "Immigration Status"
rename sdcgcgt Cultural
label var Cultural "Cultural Origin"
rename edudr04 Education
label var Education "Education"
rename incghh Income
label var Income "Hosehold Income"
rename hcu_1a2 ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2012

save "C:\Users\Mumitul\Desktop\cchs-2012.dta"

**********Cleaning CCHS-2013 File************

import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\cchs-82M0013-E-2013-2014-Annual-component\cchs-82M0013-E-2013-2014-Annual-component_F1.csv


keep geogprv dhhgage dhh_sex dhhgms gen_01 hcu_1aa chp_01 ccc_121 ccc_151 hcu_1a2 ccc_071 sdcfimm sdcgcgt edudr04 incghh cmh_01k
dpsdwk idgfycm lbsdwss 

gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbsdwss==1|lbsdwss==2)
replace Employed=0 if (lbsdwss==3|lbsdwss==4|lbsdwss==5|lbsdwss==6|lbsdwss==7|lbsdwss==8|lbsdwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbsdwss==2
replace Absent=0 if lbsdwss==1
rename dpsdwk Depression
label var Depression "Felt Depressed"
rename idgfycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmh_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geogprv Province
label var Province "Province"
rename dhhgage Age
label var Age "Age"
rename dhh_sex Gender
label var Gender "Gender"
rename dhhgms Marital
label var Marital "Marital Status"
rename gen_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcu_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename chp_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccc_071 High_BP
label var High_BP "Has high blood pressure"
rename ccc_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccc_151 Stroke
label var Stroke "Had stroke"
rename sdcfimm Immigrant
label var Immigrant "Immigration Status"
rename sdcgcgt Cultural
label var Cultural "Cultural Origin"
rename edudr04 Education
label var Education "Education"
rename incghh Income
label var Income "Hosehold Income"
rename hcu_1a2 ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2013

 save "C:\Users\Mumitul\Desktop\cchs-2013.dta"

*********Cleaning CCHS-2014 File***********

keep geogprv dhhgage dhh_sex dhhgms gen_01 hcu_1aa chp_01 ccc_121 ccc_151 hcu_1a2 ccc_071 sdcfimm sdcgcgt edudr04 incghh cmh_01k
dpsdwk idgfycm lbsdwss

gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbsdwss==1|lbsdwss==2)
replace Employed=0 if (lbsdwss==3|lbsdwss==4|lbsdwss==5|lbsdwss==6|lbsdwss==7|lbsdwss==8|lbsdwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbsdwss==2
replace Absent=0 if lbsdwss==1
rename dpsdwk Depression
label var Depression "Felt Depressed"
rename idgfycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmh_01k Mental
label var Mental "Consulted Mental Health Professional"
rename geogprv Province
label var Province "Province"
rename dhhgage Age
label var Age "Age"
rename dhh_sex Gender
label var Gender "Gender"
rename dhhgms Marital
label var Marital "Marital Status"
rename gen_01 Self_Health
label var Self_Health "Self Perceived Health"
rename hcu_1aa Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename chp_01 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename ccc_071 High_BP
label var High_BP "Has high blood pressure"
rename ccc_121 Heart_Disease
label var Heart_Disease "Has heart disease"
rename ccc_151 Stroke
label var Stroke "Had stroke"
rename sdcfimm Immigrant
label var Immigrant "Immigration Status"
rename sdcgcgt Cultural
label var Cultural "Cultural Origin"
rename edudr04 Education
label var Education "Education"
rename incghh Income
label var Income "Hosehold Income"
rename hcu_1a2 ED_Visit
label var ED_Visit "Emergency Department Visit"

gen Refyear=2014

save "C:\Users\Mumitul\Desktop\cchs-2014.dta"

********Cleaning CCHS-2015 File********

import delimited C:\Users\Mumitul\Desktop\CCHS-DATA\cchs-82M0013-E-2015-2016-Annual-component\cchs-82M0013-E-2015-2016-Annual-component_F1.csv


keep geo_prv dhhgage dhh_sex dhhgms gen_005 phc_020 med_015 sdcdvimm ehg2dvr3 incdghh cmh_005 chp_025
ccc_195 drgdvycm lbfdvwss swl_010

rename swl_010 Leisure
label var Leisure "Leisure Satisfaction"
gen Employed=0 
label var Employed "Employed"
replace Employed=1 if (lbfdvwss==1|lbfdvwss==2)
replace Employed=0 if (lbfdvwss==3|lbfdvwss==4|lbfdvwss==5|lbfdvwss==6|lbfdvwss==7|lbfdvwss==8|lbfdvwss==9)
gen Absent=.
label var Absent "Absenteeism"
replace Absent=1 if lbfdvwss==2
replace Absent=0 if lbfdvwss==1
rename ccc_195 Depression
label var Depression "Felt Depressed"
rename drgdvycm Cannabis
label var Cannabis "Used Cannabis more than once"
rename cmh_005 Mental
label var Mental "Consulted Mental Health Professional"
rename geo_prv Province
label var Province "Province"
rename dhhgage Age
label var Age "Age"
rename dhh_sex Gender
label var Gender "Gender"
rename dhhgms Marital
label var Marital "Marital Status"
rename gen_005 Self_Health
label var Self_Health "Self Perceived Health"
rename phc_020 Reg_Med_Doc
label var Reg_Med_Doc "Has a Regular medical doctor"
rename chp_025 Over_Med_Pat
label var Over_Med_Pat "Over night Medical Patient"
rename med_015 Opioid
label var Opioid "Took Opioid"
rename sdcdvimm Immigrant
label var Immigrant "Immigration Status"
rename ehg2dvr3 Education
label var Education "Education"
rename incdghh Income
label var Income "Household Income"


gen Refyear=2015

save "C:\Users\Mumitul\Desktop\cchs-2015.dta"

******Append all the CCHS************

use "C:\Users\Mumitul\Desktop\cchs-2001 - Copy.dta", clear

append using "C:\Users\Mumitul\Desktop\cchs-2003.dta" "C:\Users\Mumitul\Desktop\cchs-2005.dta" "C:\Users\Mumitul\Desktop\cchs-2008.dta" //
"C:\Users\Mumitul\Desktop\cchs-2009.dta" "C:\Users\Mumitul\Desktop\cchs-2010.dta" "C:\Users\Mumitul\Desktop\cchs-2011.dta" //
"C:\Users\Mumitul\Desktop\cchs-2012.dta" "C:\Users\Mumitul\Desktop\cchs-2013.dta" "C:\Users\Mumitul\Desktop\cchs-2014.dta" //
"C:\Users\Mumitul\Desktop\cchs-2015.dta"


browse

*********Creating New String Variable for Province******

gen Prov_Name="."
replace Prov_Name= "Ontario" if Province==35
replace Prov_Name= "Newfoundland" if Province==10
replace Prov_Name= "Prince Edward Island" if Province==11
replace Prov_Name= "Nova Scotia" if Province==12
replace Prov_Name= "New Brunswick" if Province==13
replace Prov_Name= "Quebec" if Province==24
replace Prov_Name= "Manitoba" if Province==46
replace Prov_Name= "Saskatchewan" if Province==47
replace Prov_Name= "Alberta" if Province==48
replace Prov_Name= "British Columbia" if Province==59
replace Prov_Name= "YNNWT" if Province==60

by Prov_Name Refyear, sort : summarize Opioid
/*I need to create dummies and align the variables"*/

******Creating Dummies and Making Charts*******

*****ED_Visit_Dummy****

gen ED_Visit_Dummy=0
replace ED_Visit_Dummy=1 if ED_Visit==1 & (Refyear==2003|Refyear==2005)
replace ED_Visit_Dummy=1 if ED_Visit==6 & (Refyear==2008|Refyear==2009|Refyear==2010|Refyear==2011|Refyear==2012|Refyear==2013|Refyear==2014)

by Prov_Name Refyear, sort : summarize ED_Visit_Dummy
tab ED_Visit_Dummy

preserve
collapse ED_Visit_Dummy, by(Refyear Province)

drop in 1/11

twoway (line ED_Visit_Dummy Refyear if Province==10, lwidth("medthick")) (line ED_Visit_Dummy Refyear if Province==11, lwidth("medthick")) //
(line ED_Visit_Dummy Refyear if Province==12, lwidth("medthick")) (line ED_Visit_Dummy Refyear if Province==13, lwidth("medthick")) //
(line ED_Visit_Dummy Refyear if Province==24, lwidth("medthick")) (line ED_Visit_Dummy Refyear if Province==35, lwidth("medthick")) //
(line ED_Visit_Dummy Refyear if Province==46, lwidth("medthick")) (line ED_Visit_Dummy Refyear if Province==47, lwidth("medthick")) //
(line ED_Visit_Dummy Refyear if Province==48, lwidth("medthick")) (line ED_Visit_Dummy Refyear if Province==59, lwidth("medthick")) //
(line ED_Visit_Dummy Refyear if Province==60, lwidth("medthick")), //
legend pos(6) ring(3) row(3) order(1 "NFL" 2 "PEI" 3 "NS" 4 "NB" 5 "QC" 6 "ON" 7 "MB" 8 "SK" 9 "AB" 10 "BC" 11 "YNNWT")) 
xtitle("Reference Year")  ytitle("Mean of Emergency Department Visit") title("Pre-treatment Trends in CA Provinces")//
plotregion(fcolor(white)) graphregion(fcolor(white))

restore

graph save Graph "C:\Users\Mumitul\Desktop\CCHS-Graph-0001.gph"

/* Do the same for Opioid, Regular Doctor, Overnight Stay*/

******Opioid_Dummy******

gen Opioid_Dummy=0
replace Opioid_Dummy=1 if Opioid==1 & (Refyear==2001|Refyear==2003|Refyear==2005|Refyear==2011|Refyear==2015)

by Province Refyear, sort: summarize Opioid_Dummy
tab Opioid_Dummy

preserve
collapse Opioid_Dummy, by(Refyear Province)

drop in 34/66

twoway (line Opioid_Dummy Refyear if Province==10, lwidth("medthick")) (line Opioid_Dummy Refyear if Province==11, lwidth("medthick")) //
(line Opioid_Dummy Refyear if Province==12, lwidth("medthick")) (line Opioid_Dummy Refyear if Province==13, lwidth("medthick")) //
(line Opioid_Dummy Refyear if Province==24, lwidth("medthick")) (line Opioid_Dummy Refyear if Province==35, lwidth("medthick")) //
(line Opioid_Dummy Refyear if Province==46, lwidth("medthick")) (line Opioid_Dummy Refyear if Province==47, lwidth("medthick")) //
(line Opioid_Dummy Refyear if Province==48, lwidth("medthick")) (line Opioid_Dummy Refyear if Province==59, lwidth("medthick")) //
(line Opioid_Dummy Refyear if Province==60, lwidth("medthick")), //
legend (pos(6) ring(3) row(3)order(1 "NFL" 2 "PEI" 3 "NS" 4 "NB" 5 "QC" 6 "ON" 7 "MB" 8 "SK" 9 "AB" 10 "BC" 11 "YNNWT"))//
xtitle("Reference Year")  ytitle("Mean of Opioid Intake Last Month") title("Pre-treatment Trends in CA Provinces") //
plotregion(fcolor(white)) graphregion(fcolor(white))

graph save Graph "C:\Users\Mumitul\Desktop\CCHS-Graph-0002.gph"

restore

******Regular Medical Doctor Dummy****

gen Reg_Med_Dummy=0
replace Reg_Med_Dummy=1 if Reg_Med_Doc==1 & (Refyear==2001|Refyear==2003|Refyear==2005|Refyear==2008|Refyear==2009|Refyear==2010|Refyear==2011|Refyear==2012|Refyear==2013|Refyear==2014|Refyear==2015)

by Province Refyear, sort: summarize Reg_Med_Dummy
tab Reg_Med_Dummy

preserve 
collapse Reg_Med_Dummy, by (Refyear Province)

twoway (line Reg_Med_Dummy Refyear if Province==10, lwidth("medthick")) (line Reg_Med_Dummy Refyear if Province==11, lwidth("medthick")) //
 (line Reg_Med_Dummy Refyear if Province==12, lwidth("medthick")) (line Reg_Med_Dummy Refyear if Province==13, lwidth("medthick"))//
 (line Reg_Med_Dummy Refyear if Province==24, lwidth("medthick")) (line Reg_Med_Dummy Refyear if Province==35, lwidth("medthick"))//
 (line Reg_Med_Dummy Refyear if Province==46, lwidth("medthick")) (line Reg_Med_Dummy Refyear if Province==47, lwidth("medthick"))//
 (line Reg_Med_Dummy Refyear if Province==48, lwidth("medthick")) (line Reg_Med_Dummy Refyear if Province==59, lwidth("medthick"))//
 (line Reg_Med_Dummy Refyear if Province==60, lwidth("medthick")), //
 legend (pos(6) ring(3) row(3)order(1 "NFL" 2 "PEI" 3 "NS" 4 "NB" 5 "QC" 6 "ON" 7 "MB" 8 "SK" 9 "AB" 10 "BC" 11 "YNNWT")) //
 xtitle("Reference Year")  ytitle("Mean of Regular Medical Doctor") title("Pre-treatment Trends in CA Provinces") //
 plotregion(fcolor(white)) graphregion(fcolor(white))

 graph save Graph "C:\Users\Mumitul\Desktop\CCHS-Graph-0003.gph"
 
 restore
 

******Overnight Patient Dummy********

gen Over_Pat_Dummy=0
replace Over_Pat_Dummy=1 if Over_Med_Pat==1 & (Refyear==2001|Refyear==2003|Refyear==2005|Refyear==2008|Refyear==2009|Refyear==2010|Refyear==2011|Refyear==2012|Refyear==2013|Refyear==2014|Refyear==2015)

by Province Refyear , sort:summarize Over_Pat_Dummy
tab Over_Pat_Dummy

preserve
collapse Over_Pat_Dummy, by (Refyear Province)

drop in 67/77

twoway (line Over_Pat_Dummy Refyear if Province==10, lwidth("medthick")) (line Over_Pat_Dummy Refyear if Province==11, lwidth("medthick"))//
 (line Over_Pat_Dummy Refyear if Province==12, lwidth("medthick")) (line Over_Pat_Dummy Refyear if Province==13, lwidth("medthick"))//
 (line Over_Pat_Dummy Refyear if Province==24, lwidth("medthick")) (line Over_Pat_Dummy Refyear if Province==35, lwidth("medthick")) //
 (line Over_Pat_Dummy Refyear if Province==46, lwidth("medthick")) (line Over_Pat_Dummy Refyear if Province==47, lwidth("medthick"))//
 (line Over_Pat_Dummy Refyear if Province==48, lwidth("medthick")) (line Over_Pat_Dummy Refyear if Province==59, lwidth("medthick"))//
 (line Over_Pat_Dummy Refyear if Province==60, lwidth("medthick")),//
 legend (pos(6) ring(3) row(3)order(1 "NFL" 2 "PEI" 3 "NS" 4 "NB" 5 "QC" 6 "ON" 7 "MB" 8 "SK" 9 "AB" 10 "BC" 11 "YNNWT")) //
 xtitle("Reference Year")  ytitle("Mean of Overnight Patients in last 12 months") title("Pre-treatment Trends in CA Provinces") //
 plotregion(fcolor(white)) graphregion(fcolor(white))
 
graph save Graph "C:\Users\Mumitul\Desktop\CCHS-Graph-0004.gph"

restore

******Heart Disease Dummy*********

gen Heart_Disease_Dummy=0
replace Heart_Disease_Dummy=1 if Heart_Disease==1 & (Refyear==2001|Refyear==2003|Refyear==2005|Refyear==2008|Refyear==2009|Refyear==2010|Refyear==2011)

by Province Refyear , sort:summarize Heart_Disease_Dummy
tab Heart_Disease_Dummy

preserve
collapse Heart_Disease_Dummy, by (Refyear Province)

twoway (line Heart_Disease_Dummy Refyear if Province==10, lwidth("medthick")) (line Heart_Disease_Dummy Refyear if Province==11, lwidth("medthick"))//
 (line Heart_Disease_Dummy Refyear if Province==12, lwidth("medthick")) (line Heart_Disease_Dummy Refyear if Province==13, lwidth("medthick"))//
 (line Heart_Disease_Dummy Refyear if Province==24, lwidth("medthick")) (line Heart_Disease_Dummy Refyear if Province==35, lwidth("medthick"))//
 (line Heart_Disease_Dummy Refyear if Province==46, lwidth("medthick")) (line Heart_Disease_Dummy Refyear if Province==47, lwidth("medthick"))//
 (line Heart_Disease_Dummy Refyear if Province==48, lwidth("medthick")) (line Heart_Disease_Dummy Refyear if Province==59, lwidth("medthick"))//
 (line Heart_Disease_Dummy Refyear if Province==60, lwidth("medthick")),//
 legend (pos(6) ring(3) row(3) order(1 "NFL" 2 "PEI" 3 "NS" 4 "NB" 5 "QC" 6 "ON" 7 "MB" 8 "SK" 9 "AB" 10 "BC" 11 "YNNWT")) //
 xtitle("Reference Year")  ytitle("Mean Heart Disease") title("Pre-treatment Trends in CA Provinces")//
 plotregion(fcolor(white)) graphregion(fcolor(white))

graph save Graph "C:\Users\Mumitul\Desktop\CCHS-Graph-006.gph"

restore
 
******High Blood Pressure Dummy****

gen High_BP_Dummy=0
replace High_BP_Dummy=1 if High_BP==1 & (Refyear==2001|Refyear==2003|Refyear==2005|Refyear==2008|Refyear==2009|Refyear==2010|Refyear==2011)


by Province Refyear , sort:summarize High_BP_Dummy
tab Heart_Disease_Dummy

preserve
collapse High_BP_Dummy, by (Refyear Province)

twoway (line High_BP_Dummy Refyear if Province==10, lwidth("medthick")) (line High_BP_Dummy Refyear if Province==11, lwidth("medthick"))//
 (line High_BP_Dummy Refyear if Province==12, lwidth("medthick")) (line High_BP_Dummy Refyear if Province==13, lwidth("medthick"))//
 (line High_BP_Dummy Refyear if Province==24, lwidth("medthick")) (line High_BP_Dummy Refyear if Province==35, lwidth("medthick"))//
 (line High_BP_Dummy Refyear if Province==46, lwidth("medthick")) (line High_BP_Dummy Refyear if Province==47, lwidth("medthick"))//
 (line High_BP_Dummy Refyear if Province==48, lwidth("medthick")) (line High_BP_Dummy Refyear if Province==59, lwidth("medthick"))//
 (line High_BP_Dummy Refyear if Province==60, lwidth("medthick")),//
 legend (pos(6) ring(3) row(3) order(1 "NFL" 2 "PEI" 3 "NS" 4 "NB" 5 "QC" 6 "ON" 7 "MB" 8 "SK" 9 "AB" 10 "BC" 11 "YNNWT")) //
 xtitle("Reference Year")  ytitle("Mean High Blood Pressure") title("Pre-treatment Trends in CA Provinces")//
 plotregion(fcolor(white)) graphregion(fcolor(white))

 graph save Graph "C:\Users\Mumitul\Desktop\CCHS-Graph-007.gph"
 
 restore
 
 ********Depression Dummy*********
 
 gen Depression_Dummy=0
 replace Depression_Dummy=1 if Depression==1 & (Refyear==2008|Refyear==2009|Refyear==2010|Refyear==2011|Refyear==2012|Refyear==2015)
 replace Depression_Dummy=1 if Depression<=90 & (Refyear==2003|Refyear==2005|Refyear==2013|Refyear==2014)
 
by Province Refyear , sort:summarize Depression_Dummy
tab Depression_Dummy
 
 ********Cannabis Dummy***********
 
gen Cannabis_Dummy=0
replace Cannabis_Dummy=1 if Cannabis==1 & (Refyear==2001|Refyear==2003|Refyear==2005|Refyear==2008|Refyear==2009|Refyear==2010|Refyear==2011|Refyear==2012|Refyear==2013|Refyear==2014|Refyear==2015)


by Province Refyear , sort:summarize Cannabis_Dummy
tab Cannabis_Dummy

 ********Mental Health Dummy******
 
gen Mental_Dummy=0
replace Mental_Dummy=1 if Mental==1 & (Refyear==2001|Refyear==2003|Refyear==2005|Refyear==2008|Refyear==2009|Refyear==2010|Refyear==2011|Refyear==2012|Refyear==2013|Refyear==2014|Refyear==2015)


by Province Refyear , sort:summarize Mental_Dummy
tab Mental_Dummy

 ********Self Perceived Health Ordinal******
 
gen Self_Health_Ord=.

replace Self_Health_Ord=1 if Self_Health==1
replace Self_Health_Ord=2 if Self_Health==2
replace Self_Health_Ord=3 if Self_Health==3
replace Self_Health_Ord=4 if Self_Health==4
replace Self_Health_Ord=5 if Self_Health==5

by Province Refyear , sort:summarize Self_Health_Ord
tab Self_Health_Ord

 *******Leisure Ordinal*****
 
gen Leisure_Ord=. 

replace Leisure_Ord=1 if Leisure==1
replace Leisure_Ord=2 if Leisure==2
replace Leisure_Ord=3 if Leisure==3
replace Leisure_Ord=4 if Leisure==4
replace Leisure_Ord=5 if Leisure==5

by Province Refyear , sort:summarize Leisure_Ord
tab Leisure_Ord
 
 
 *********Creating Interaction Dummies*********
 
 gen THN=0
 replace THN=1 if (Province==35|Province==59) & (Refyear==2014|Refyear==2015)
 
 gen Male_dummy=0
 replace Male_dummy=1 if Gender==1
 
 gen after_pol=0
 replace after_pol=1 if (Refyear==2014|Refyear==2015)
 
 gen Treatment=0
 replace Treatment=1 if (Province==35|Province==59)
 
 gen Time_Trend=Refyear

 
******************************
**Load cchs-all & Start Here**
******************************
 
********Diff-in-Diff Graphs********
preserve
collapse (mean) ED_Visit_Dummy, by (Treatment Refyear)
reshape wide ED_Visit_Dummy, i(Refyear) j(Treatment)
drop if (Refyear==2005|Refyear==2015)
graph twoway line ED_Visit_Dummy0 ED_Visit_Dummy1 Refyear, ytitle(Mean ED Visits)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Opioid_Dummy, by (Treatment Refyear)
reshape wide Opioid_Dummy, i(Refyear) j(Treatment)
graph twoway line Opioid_Dummy0 Opioid_Dummy1 Refyear, ytitle(Mean Opioid)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Cannabis_Dummy, by (Treatment Refyear)
reshape wide Cannabis_Dummy, i(Refyear) j(Treatment)
drop if (Refyear==2005)
graph twoway line Cannabis_Dummy0 Cannabis_Dummy1 Refyear, ytitle(Mean Cannabis)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Mental_Dummy, by (Treatment Refyear)
reshape wide Mental_Dummy, i(Refyear) j(Treatment)
graph twoway line Mental_Dummy0 Mental_Dummy1 Refyear, ytitle(Mean Mental Health)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Over_Pat_Dummy, by (Treatment Refyear)
reshape wide Over_Pat_Dummy, i(Refyear) j(Treatment)
drop if (Refyear==2011|Refyear==2015)
graph twoway line Over_Pat_Dummy0 Over_Pat_Dummy1 Refyear, ytitle(Mean Overnight Patient)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Reg_Med_Dummy, by (Treatment Refyear)
reshape wide Reg_Med_Dummy, i(Refyear) j(Treatment)
graph twoway line Reg_Med_Dummy0 Reg_Med_Dummy1 Refyear, ytitle(Mean Regular Doctor)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Self_Health_Ord, by (Treatment Refyear)
reshape wide Self_Health_Ord, i(Refyear) j(Treatment)
drop if Refyear==2015
graph twoway line Self_Health_Ord0 Self_Health_Ord1 Refyear, ytitle(Mean Self Perceived Health)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Leisure_Ord, by (Treatment Refyear)
reshape wide Leisure_Ord, i(Refyear) j(Treatment)
graph twoway line Leisure_Ord0 Leisure_Ord1 Refyear, ytitle(Mean Leisure)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Employed, by (Treatment Refyear)
reshape wide Employed, i(Refyear) j(Treatment)
graph twoway line Employed0 Employed1 Refyear, ytitle(Mean Employment)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Absent, by (Treatment Refyear)
reshape wide Absent, i(Refyear) j(Treatment)
graph twoway line Absent0 Absent1 Refyear, ytitle(Mean Absenteeism)  xtitle(Year) xline(2012) sort
restore

preserve
collapse (mean) Depression_Dummy, by (Treatment Refyear)
reshape wide Depression_Dummy, i(Refyear) j(Treatment)
graph twoway line Depression_Dummy0 Depression_Dummy1 Refyear, ytitle(Mean Depression)  xtitle(Year) xline(2012) sort
restore

 **********Propensity Score Matching for Outcome Variables**********
 
 ssc install psmatch2, replace /*Leuven & Sianesi (2003)*/
 ssc install nnmatch, replace /*Abadie et. al (2004)*/
 
 *********Create Unemployment & Trend var***********
 
 
 gen Unemp=0
 
 replace Unemp=16.0 if Refyear==2001 & Province==10
 replace Unemp=16.5 if Refyear==2003 & Province==10
 replace Unemp=15.2 if Refyear==2005 & Province==10
 replace Unemp=13.3 if Refyear==2008 & Province==10
 replace Unemp=15.5 if Refyear==2009 & Province==10
 replace Unemp=14.7 if Refyear==2010 & Province==10
 replace Unemp=12.6 if Refyear==2011 & Province==10
 replace Unemp=12.3 if Refyear==2012 & Province==10
 replace Unemp=11.6 if Refyear==2013 & Province==10
 replace Unemp=11.9 if Refyear==2014 & Province==10
 replace Unemp=12.8 if Refyear==2015 & Province==10
 replace Unemp=11.9 if Refyear==2001 & Province==11
 replace Unemp=10.9 if Refyear==2003 & Province==11
 replace Unemp=10.9 if Refyear==2005 & Province==11
 replace Unemp=10.9 if Refyear==2008 & Province==11
 replace Unemp=11.9 if Refyear==2009 & Province==11
 replace Unemp=11.4 if Refyear==2010 & Province==11
 replace Unemp=11.0 if Refyear==2011 & Province==11
 replace Unemp=11.2 if Refyear==2012 & Province==11
 replace Unemp=11.6 if Refyear==2013 & Province==11
 replace Unemp=10.6 if Refyear==2014 & Province==11
 replace Unemp=10.4 if Refyear==2015 & Province==11
 replace Unemp=9.70 if Refyear==2001 & Province==12
 replace Unemp=9.10 if Refyear==2003 & Province==12
 replace Unemp=8.40 if Refyear==2005 & Province==12
 replace Unemp=7.60 if Refyear==2008 & Province==12
 replace Unemp=9.20 if Refyear==2009 & Province==12
 replace Unemp=9.60 if Refyear==2010 & Province==12
 replace Unemp=9.00 if Refyear==2011 & Province==12
 replace Unemp=9.10 if Refyear==2012 & Province==12
 replace Unemp=9.10 if Refyear==2013 & Province==12
 replace Unemp=9.00 if Refyear==2014 & Province==12
 replace Unemp=8.60 if Refyear==2015 & Province==12
 replace Unemp=11.1 if Refyear==2001 & Province==13
 replace Unemp=10.2 if Refyear==2003 & Province==13
 replace Unemp=9.70 if Refyear==2005 & Province==13
 replace Unemp=8.50 if Refyear==2008 & Province==13
 replace Unemp=8.70 if Refyear==2009 & Province==13
 replace Unemp=9.20 if Refyear==2010 & Province==13
 replace Unemp=9.50 if Refyear==2011 & Province==13
 replace Unemp=10.2 if Refyear==2012 & Province==13
 replace Unemp=10.3 if Refyear==2013 & Province==13
 replace Unemp=9.90 if Refyear==2014 & Province==13
 replace Unemp=9.80 if Refyear==2015 & Province==13
 replace Unemp=8.80 if Refyear==2001 & Province==24
 replace Unemp=9.10 if Refyear==2003 & Province==24
 replace Unemp=8.20 if Refyear==2005 & Province==24
 replace Unemp=7.20 if Refyear==2008 & Province==24
 replace Unemp=8.60 if Refyear==2009 & Province==24
 replace Unemp=8.00 if Refyear==2010 & Province==24
 replace Unemp=7.90 if Refyear==2011 & Province==24
 replace Unemp=7.70 if Refyear==2012 & Province==24
 replace Unemp=7.60 if Refyear==2013 & Province==24
 replace Unemp=7.70 if Refyear==2014 & Province==24
 replace Unemp=7.60 if Refyear==2015 & Province==24
 replace Unemp=6.30 if Refyear==2001 & Province==35
 replace Unemp=6.90 if Refyear==2003 & Province==35
 replace Unemp=6.60 if Refyear==2005 & Province==35
 replace Unemp=6.60 if Refyear==2008 & Province==35
 replace Unemp=9.10 if Refyear==2009 & Province==35
 replace Unemp=8.70 if Refyear==2010 & Province==35
 replace Unemp=7.90 if Refyear==2011 & Province==35
 replace Unemp=7.90 if Refyear==2012 & Province==35
 replace Unemp=7.60 if Refyear==2013 & Province==35
 replace Unemp=7.30 if Refyear==2014 & Province==35
 replace Unemp=6.80 if Refyear==2015 & Province==35
 replace Unemp=5.00 if Refyear==2001 & Province==46
 replace Unemp=4.90 if Refyear==2003 & Province==46
 replace Unemp=4.70 if Refyear==2005 & Province==46
 replace Unemp=4.20 if Refyear==2008 & Province==46
 replace Unemp=5.20 if Refyear==2009 & Province==46
 replace Unemp=5.40 if Refyear==2010 & Province==46
 replace Unemp=5.50 if Refyear==2011 & Province==46
 replace Unemp=5.30 if Refyear==2012 & Province==46
 replace Unemp=5.40 if Refyear==2013 & Province==46
 replace Unemp=5.40 if Refyear==2014 & Province==46
 replace Unemp=5.60 if Refyear==2015 & Province==46
 replace Unemp=5.80 if Refyear==2001 & Province==47
 replace Unemp=5.60 if Refyear==2003 & Province==47
 replace Unemp=5.10 if Refyear==2005 & Province==47
 replace Unemp=4.00 if Refyear==2008 & Province==47
 replace Unemp=4.90 if Refyear==2009 & Province==47
 replace Unemp=5.20 if Refyear==2010 & Province==47
 replace Unemp=4.90 if Refyear==2011 & Province==47
 replace Unemp=4.70 if Refyear==2012 & Province==47
 replace Unemp=4.10 if Refyear==2013 & Province==47
 replace Unemp=3.80 if Refyear==2014 & Province==47
 replace Unemp=5.00 if Refyear==2015 & Province==47
 replace Unemp=4.70 if Refyear==2001 & Province==48
 replace Unemp=5.10 if Refyear==2003 & Province==48
 replace Unemp=4.00 if Refyear==2005 & Province==48
 replace Unemp=3.60 if Refyear==2008 & Province==48
 replace Unemp=6.50 if Refyear==2009 & Province==48
 replace Unemp=6.60 if Refyear==2010 & Province==48
 replace Unemp=5.40 if Refyear==2011 & Province==48
 replace Unemp=4.60 if Refyear==2012 & Province==48
 replace Unemp=4.60 if Refyear==2013 & Province==48
 replace Unemp=4.70 if Refyear==2014 & Province==48
 replace Unemp=6.00 if Refyear==2015 & Province==48
 replace Unemp=7.7 if Refyear==2001 & Province==59
 replace Unemp=8.0 if Refyear==2003 & Province==59
 replace Unemp=5.9 if Refyear==2005 & Province==59
 replace Unemp=4.6 if Refyear==2008 & Province==59
 replace Unemp=7.7 if Refyear==2009 & Province==59
 replace Unemp=7.6 if Refyear==2010 & Province==59
 replace Unemp=7.5 if Refyear==2011 & Province==59
 replace Unemp=6.8 if Refyear==2012 & Province==59
 replace Unemp=6.6 if Refyear==2013 & Province==59
 replace Unemp=6.1 if Refyear==2014 & Province==59
 replace Unemp=6.2 if Refyear==2015 & Province==59
 
 
 ******Recode some variables********
 
 gen NAge=0
 replace NAge=13 if Age==1
 replace NAge=16 if Age==2
 replace NAge=19 if Age==3
 replace NAge=22 if Age==4
 replace NAge=27 if Age==5
 replace NAge=32 if Age==6
 replace NAge=37 if Age==7
 replace NAge=42 if Age==8
 replace NAge=47 if Age==9
 replace NAge=52 if Age==10
 replace NAge=57 if Age==11
 replace NAge=62 if Age==12
 replace NAge=67 if Age==13
 replace NAge=72 if Age==14
 replace NAge=77 if Age==15
 replace NAge=85 if Age==16
 
 gen NIncome=0
 replace NIncome=15000 if Income==1
 replace NIncome=30000 if Income==2
 replace NIncome=50000 if Income==3
 replace NIncome=70000 if Income==4
 replace NIncome=90000 if Income==5
 
 

 gen NEducation=.
 replace NEducation=1 if Education==1
 replace NEducation=2 if Education==2
 replace NEducation=3 if Education==3
 replace NEducation=4 if Education==4
 
 
 
 gen Immigration_Dummy=0
 replace Immigration_Dummy=1 if Immigrant==1
 
 
 gen NMarital=.
 replace NMarital=1 if Marital==1
 replace NMarital=2 if Marital==2
 replace NMarital=3 if Marital==3
 replace NMarital=4 if Marital==4
 
 gen Marital_Dummy=0
 replace Marital_Dummy=1 if (NMarital==1|NMarital==2)
 
 
 *********Descriptive Stats of the Variables*********
 *****Pre-Policy-Treatment
 
 sum NAge if (Refyear<2012) & (Province==35|Province==59)
 sum Male_dummy if (Refyear<2012) &(Province==35|Province==59)
 sum NIncome if (Refyear<2012) &(Province==35|Province==59)
 sum Mental_Dummy if(Refyear<2012) &(Province==35|Province==59)
 sum Depression_Dummy if (Refyear<2012) &(Province==35|Province==59)
 sum Cannabis_Dummy if (Refyear<2012) &(Province==35|Province==59)
 sum Marital_Dummy if (Refyear<2012) &(Province==35|Province==59)
 sum Self_Health_Ord if (Refyear<2012) &(Province==35|Province==59)
 sum Reg_Med_Dummy if (Refyear<2012)&(Province==35|Province==59)
 sum Over_Pat_Dummy if (Refyear<2012)&(Province==35|Province==59)
 sum NEducation if (Refyear<2012)&(Province==35|Province==59)
 sum NIncome if (Refyear<2012)&(Province==35|Province==59)
 sum ED_Visit_Dummy if (Refyear<2012)&(Province==35|Province==59)
 sum Opioid_Dummy if (Refyear<2012)&(Province==35|Province==59)
 sum Immigration_Dummy if (Refyear<2012)&(Province==35|Province==59)
 sum Employed if (Refyear<2012)&(Province==35|Province==59)
 sum Absent if (Refyear<2012)&(Province==35|Province==59)
 sum Leisure_Ord if (Refyear<2012)&(Province==35|Province==59)
 
  *****Pre-Policy-Control
 
 sum NAge if (Refyear<2012) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Male_dummy if (Refyear<2012) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum NIncome if (Refyear<2012) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Mental_Dummy if(Refyear<2012) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Depression_Dummy if (Refyear<2012) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Cannabis_Dummy if (Refyear<2012) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Marital_Dummy if (Refyear<2012) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Self_Health_Ord if (Refyear<2012) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Reg_Med_Dummy if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Over_Pat_Dummy if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum NEducation if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum NIncome if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum ED_Visit_Dummy if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Opioid_Dummy if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Immigration_Dummy if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Employed if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Absent if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Leisure_Ord if (Refyear<2012)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 
 ********Post-Policy-Treatment
 
 sum NAge if (Refyear>2013) &(Province==35|Province==59)
 sum Male_dummy if (Refyear>2013) &(Province==35|Province==59)
 sum NIncome if (Refyear>2013)&(Province==35|Province==59)
 sum Mental_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum Depression_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum Cannabis_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum Marital_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum Self_Health_Ord if (Refyear>2013)&(Province==35|Province==59)
 sum Reg_Med_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum Over_Pat_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum NEducation if (Refyear>2013)&(Province==35|Province==59)
 sum NIncome if (Refyear>2013)&(Province==35|Province==59)
 sum ED_Visit_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum Opioid_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum Immigration_Dummy if (Refyear>2013)&(Province==35|Province==59)
 sum Employed if (Refyear>2013)&(Province==35|Province==59)
 sum Absent if (Refyear>2013)&(Province==35|Province==59)
 sum Leisure_Ord if (Refyear>2013)&(Province==35|Province==59)
 
 **********Post-Policy-Control
 
 sum NAge if (Refyear>2013) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Male_dummy if (Refyear>2013) & (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum NIncome if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Mental_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Depression_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Cannabis_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Marital_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Self_Health_Ord if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Reg_Med_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Over_Pat_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum NEducation if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum NIncome if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum ED_Visit_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Opioid_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Immigration_Dummy if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Employed if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Absent if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 sum Leisure_Ord if (Refyear>2013)& (Province==10|Province==11|Province==12|Province==13|Province==24|Province==46|Province==47|Province==48)
 
 **********DiD Regressions***************
 ssc install estout, replace
 
 preserve 
 
 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust) iter(20)
	}
	eststo clear 
	
restore

 ******DiD for Male Vs. Female*******
 ****** For Male**********
preserve
 
 keep if Male_dummy==1 
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 
	
 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 	
	
restore 
********For Female*********

preserve 

keep if Male_dummy==0

  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 
	
 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 

restore
 ******DiD by Age Groups Male Vs. Female********
 
 ******Male by Age******
 
preserve 
 
 keep if (Age==1|Age==2|Age==3)& Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
**************************************

preserve 
keep if (Age==4|Age==5) & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
***************************************
preserve
keep if (Age==6|Age==7) & Male_dummy==1

  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore	
****************************************
preserve

keep if (Age==8|Age==9) & Male_dummy==1

  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
*****************************************
preserve

keep if (Age==10|Age==11) & Male_dummy==1

  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
 ****************************************
preserve
 keep if (Age==12|Age==13)& Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
 ******************************
 preserve
 keep if (Age==14|Age==15)& Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
 *****************************
 preserve
 keep if Age==16 & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
************************************
*****Female by Age****** 
preserve 
 
 keep if (Age==1|Age==2|Age==3)& Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
**************************************

preserve 
keep if (Age==4|Age==5) & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
***************************************
preserve
keep if (Age==6|Age==7) & Male_dummy==0

  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore	
****************************************
preserve

keep if (Age==8|Age==9) & Male_dummy==0

  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
*****************************************
preserve

keep if (Age==10|Age==11) & Male_dummy==0

  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
 ****************************************
preserve
 keep if (Age==12|Age==13)& Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
 ******************************
 preserve
 keep if (Age==14|Age==15)& Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore
 *****************************
 preserve
 keep if Age==16 & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord  {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear
	
restore


*********************
******DiD for by Education Male Vs. Female******
 
******Male by Education*****

 preserve
 keep if NEducation==1 & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore 	
*******************
preserve
 keep if NEducation==2 & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
	
 restore
 ***************
 preserve
 keep if (NEducation==3|NEducation==4) & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
	
restore	


**************************
*****Female by Education**

 preserve
 keep if NEducation==1 & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore 	
*******************
preserve
 keep if NEducation==2 & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
	
 restore
 ***************
 preserve
 keep if (NEducation==3|NEducation==4) & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
	
restore	



*************************************
*******DiD for Different Income******
 
*****Male by Income********

 preserve
 
 keep if Income==1 & Male_dummy==1

 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore
****************************
 preserve
 
 keep if Income==2 & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore
*****************************
preserve
keep if Income==3 & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear  
 restore
 ******************************
 preserve
 keep if Income==4 & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore
*****************************
preserve
keep if Income==5 & Male_dummy==1
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
	
restore

*******Female by Income********

 preserve
 
 keep if Income==1 & Male_dummy==0

 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore
****************************
 preserve
 
 keep if Income==2 & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore
*****************************
preserve
keep if Income==3 & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear  
 restore
 ******************************
 preserve
 keep if Income==4 & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore
*****************************
preserve
keep if Income==5 & Male_dummy==0
 
  foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Self_Health_Ord Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent Leisure_Ord   {
eststo:  reg `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
	
restore

***********************
 *****Logits*******
preserve
 
foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  logit `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent  {
eststo:  logit `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  logit `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  logit `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  logit `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust) iter(20)
	}
	eststo clear 
	
restore 
	
 *****Ordered Logits****
preserve 
 
 foreach yvar in  Self_Health_Ord Leisure_Ord  {
eststo:  ologit `yvar'  THN after_pol Treatment Unemp, vce (robust)
	}
	eststo clear 

 foreach yvar in  Self_Health_Ord Leisure_Ord  {
eststo:  ologit `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
	}
	eststo clear 

 foreach yvar in  Self_Health_Ord Leisure_Ord  {
eststo:  ologit `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Self_Health_Ord Leisure_Ord  {
eststo:  ologit `yvar'  THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear 

 foreach yvar in  Self_Health_Ord Leisure_Ord  {
eststo:  ologit `yvar'  THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
	}
	eststo clear 
restore
	
 *****AME Logits****
preserve
 
 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent  {
eststo:  logit `yvar'  i.THN after_pol Treatment Unemp, vce (robust)
 margins, dydx(THN)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  logit `yvar'  i.THN after_pol Treatment Unemp i.Refyear i.Province, vce (robust)
 margins, dydx(THN)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  logit `yvar'  i.THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy, vce (robust)
 margins, dydx(THN)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  logit `yvar'  i.THN after_pol Treatment Unemp i.Refyear i.Province i.Marital_Dummy i.Immigration_Dummy, vce (robust)
 margins, dydx(THN)
	}
	eststo clear 

 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  logit `yvar'  i.THN after_pol Treatment Unemp i.Marital_Dummy i.Immigration_Dummy c.Time_Trend##Province i.Refyear i.Province, vce (robust)
 margins, dydx(THN)
	}
	eststo clear 
 
restore 
 
 



**********Robustness Checks- Event Study***********

gen Lag0=0
replace Lag0=1 if Refyear==2012

gen Lag1=0
replace Lag1=1 if Refyear==2013

gen Lag2=0
replace Lag2=1 if Refyear==2014

gen Lag3=0
replace Lag3=1 if Refyear==2015

gen Lead1=0
replace Lag1=1 if Refyear==2011

gen Lead2=0
replace Lead2=1 if Refyear==2010

gen Lead3=0
replace Lead3=1 if Refyear==2009

gen Lead4=0
replace Lead4=1 if (Refyear==2008)

gen Lead5=0
replace Lead5=1 if (Refyear==2005)


/*
 foreach yvar in  Mental_Dummy Depression_Dummy Cannabis_Dummy Opioid_Dummy ED_Visit_Dummy Reg_Med_Dummy Over_Pat_Dummy Employed Absent   {
eststo:  reg `yvar' after_pol Lead4 Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy, vce (robust)
	}
	eststo clear */

ssc install coefplot, replace

***Cannabis
reg Cannabis_Dummy THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store Cannabis

coefplot Cannabis, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical

***Employed
reg Employed THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store Employ

coefplot Employ, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical

***Absent
reg Absent THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store Abs

coefplot Abs, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical

****ED_Visit
reg ED_Visit_Dummy THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store ED

coefplot ED, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical

***Overnight Patient
reg Over_Pat_Dummy THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store OP

coefplot OP, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical

***Regular Medical Doctor
reg Reg_Med_Dummy THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store RMD

coefplot RMD, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical

***Mental
reg Mental_Dummy THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store Mental

coefplot Mental, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical

***Depression
reg Depression_Dummy THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store Dep

coefplot Dep, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical

***Self_Health
reg Self_Health_Ord THN Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3 Unemp i.Marital_Dummy i.Immigration_Dummy i.Refyear i.Province c.Time_Trend##Province, vce (robust)
estimates store Self

coefplot Self, keep(Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag3) xline (4) //
rename(Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2" Lag3="3") vertical


******Bar Graphs*****

*Age*
graph bar NAge if (Province==10|Province==11|Province==12|Province==13|Province==24|Province==35|Province==46|Province==47|Province==48|Province==59), over (Province)
graph bar NAge, over (Refyear)

*Education*
graph bar NEducation if (Province==10|Province==11|Province==12|Province==13|Province==24|Province==35|Province==46|Province==47|Province==48|Province==59), over (Province)
graph bar NEducation, over (Refyear)

*Income*
graph bar NIncome if (Province==10|Province==11|Province==12|Province==13|Province==24|Province==35|Province==46|Province==47|Province==48|Province==59), over (Province)
graph bar NIncome, over (Refyear)





coefplot Cannabis, keep(Lead4 Lead3 Lead2 Lead1 Lag0 Lag1 Lag2 Lag 3) yline (0) rename (Lead4="4",Lead3="-3" Lead2="-2" Lead1="-1" Lag0="0" Lag1="1" Lag2="2") vertical

*****Histogram Graphs

histogram NEducation, by (Treatment)
histogram NAge, by (Treatment)
histogram NIncome, by (Treatment)


