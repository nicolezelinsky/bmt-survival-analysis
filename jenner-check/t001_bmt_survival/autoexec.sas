/* cap input rows for the captured run */
options obs=100;

/* --- Sample BMT data (Group / T / Status) --------------------------------
   sashelp.BMT is the classic bone-marrow-transplant cohort (Klein &
   Moeschberger). This bundle ships a small representative sample with the
   same three variables the script reads (Group char, T num, Status num) so
   the analysis below runs stand-alone. Swap this DATA step for
   `set sashelp.BMT;` on a system where that library member is available. */
data bmt;
  length Group $13;
  input Group $ T Status;
  datalines;
ALL 2081 0
ALL 1602 0
ALL 1496 0
ALL 1462 0
ALL 1433 0
ALL 1377 0
ALL 1330 0
ALL 996 0
ALL 226 0
ALL 1199 0
ALL 1111 0
ALL 530 0
ALL 1182 0
ALL 1167 0
ALL 418 1
ALL 383 1
ALL 276 1
ALL 104 1
ALL 609 1
ALL 172 1
ALL 487 1
ALL 662 1
ALL 194 1
ALL 230 1
ALL 526 1
ALL 122 1
ALL 129 1
ALL 74 1
ALL 122 1
ALL 86 1
ALL 466 1
ALL 192 1
ALL 109 1
ALL 55 1
ALL 1 1
AML-Low_Risk 2569 0
AML-Low_Risk 2506 0
AML-Low_Risk 2409 0
AML-Low_Risk 2218 0
AML-Low_Risk 1857 0
AML-Low_Risk 1829 0
AML-Low_Risk 1562 0
AML-Low_Risk 1470 0
AML-Low_Risk 1363 0
AML-Low_Risk 1030 0
AML-Low_Risk 860 0
AML-Low_Risk 1258 0
AML-Low_Risk 2246 0
AML-Low_Risk 1870 0
AML-Low_Risk 1799 0
AML-Low_Risk 1709 0
AML-Low_Risk 1674 1
AML-Low_Risk 1568 0
AML-Low_Risk 1527 0
AML-Low_Risk 1324 1
AML-Low_Risk 957 0
AML-Low_Risk 932 0
AML-Low_Risk 847 0
AML-Low_Risk 848 0
AML-Low_Risk 1850 0
AML-Low_Risk 1843 0
AML-Low_Risk 1535 0
AML-Low_Risk 1447 0
AML-Low_Risk 1384 0
AML-Low_Risk 414 1
AML-Low_Risk 2204 1
AML-Low_Risk 1063 1
AML-Low_Risk 481 1
AML-Low_Risk 105 1
AML-Low_Risk 641 1
AML-Low_Risk 390 1
AML-Low_Risk 288 1
AML-Low_Risk 421 1
AML-Low_Risk 79 1
AML-Low_Risk 748 1
AML-Low_Risk 486 1
AML-Low_Risk 48 1
AML-Low_Risk 272 1
AML-Low_Risk 1074 1
AML-High_Risk 2640 0
AML-High_Risk 2430 0
AML-High_Risk 2252 0
AML-High_Risk 2140 0
AML-High_Risk 979 0
AML-High_Risk 2133 0
AML-High_Risk 236 0
AML-High_Risk 268 1
AML-High_Risk 552 1
AML-High_Risk 1642 1
AML-High_Risk 122 1
AML-High_Risk 86 1
AML-High_Risk 466 1
AML-High_Risk 192 1
AML-High_Risk 109 1
AML-High_Risk 55 1
AML-High_Risk 1 1
AML-High_Risk 107 1
AML-High_Risk 110 1
AML-High_Risk 332 1
AML-High_Risk 480 1
AML-High_Risk 641 1
AML-High_Risk 288 1
;
run;
