# Hundley_et_al_Belize_RT_5_year



Clarifying information and column names stored across datasets
**Related to coral**
* `species`: contain either PSTR (*Pseudodiploria strigosa*) or SSID (*Siderastrea siderea*)

**Related to sites**
There were two sites used in this experiment with False Caye designated as the near shore (NS) site and Silk Cayes designated as the off shore (OS) site.

* `collection_site`: where a given coral is originally from
* `transplant_site`: where a given coral was placed for the experimental set up
* `transplant`: **OLD** key incorporating both where the coral is from and where it was placed
  * OS Native: from the offshore, placed in the offshore 
  * OS Transplant: from the nearshore, placed in the offshore
  * NS Native: from the nearshore, placed in the nearshore
  * NS Transplant: from the offshore, placed in the nearshore
 
* `treatment`: **NEW** key incorporating both where the coral is from and where it was placed
  * OS Native: same as OS Native from `transplant` definition
  * Transplant to OS: same as OS Transplant from `transplant` definition
  * NS Native: same as NS Native from `transplant` definition 
  * Tranplant to NS: same as NS Transplant from `transplant` definition

## **List and description of files in the repo**

**mort_RT.csv** : A .csv file containing mortality information spanning the entire experiement (T0-T4). Information for each coral includes species  
Column Key:
* `mort` is a binary column representing if the coral is alive (0) or dead (1) 
* `tod` is "time of death" refering to month post transplant mortality was logged  
