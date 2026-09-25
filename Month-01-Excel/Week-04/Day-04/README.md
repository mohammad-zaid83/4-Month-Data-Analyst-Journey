WEEK 04 — DAY 04
MULTI-CONDITION ANALYSIS

SUMIFS
→ Adds values based on multiple conditions.

Example:
=SUMIFS(F:F,C:C,"Delhi",D:D,"Electronics")

COUNTIFS
→ Counts records based on multiple conditions.

Example:
=COUNTIFS(C:C,"Delhi",D:D,"Electronics")

AVERAGEIFS
→ Calculates average based on multiple conditions.

Example:
=AVERAGEIFS(F:F,C:C,"Delhi",D:D,"Electronics")

MEMORY:

SUMIFS → Total
COUNTIFS → Number of records
AVERAGEIFS → Average

The "S" means multiple criteria/conditions.

ANALYST WORKFLOW:

Business Question
↓
Identify Conditions
↓
Choose Function
↓
Calculate
↓
Interpret Result

Example:

"Which city-category combination has
the highest sales?"

City + Category → SUMIFS
→ Compare results
→ Highest value = required combination

KEY LEARNING:

Complex business questions can often be
broken into conditions and solved using
multi-criteria functions.

Status: COMPLETED ✅