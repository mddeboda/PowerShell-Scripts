# Author: Mike DeBoda
# Contact: mike@mdeboda.net
# Description: Block Abuse Drivers to comply with Microsoft Secure Score

Add-MpPreference -AttackSurfaceReductionRules_Ids 56a863a9-875e-4185-98a7-b882c64b5ce5 -AttackSurfaceReductionRules_Actions Enabled
