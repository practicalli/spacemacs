# iedit example - multiple find and replace

If you have text you want to edit in multiple places at the same time, rather than the traditional find/replace, you can select all the regions and use multiple cusors to edit all regions simultaneously.

* Put the cursor over the word you want to replace
* `v` to enter visual (select) mode
* `SPC v` to select word or region
    * `v` increases the selected region
    * `V` to reduce selected region
* `e` for iedit state
* `C-;` to edit selection
    * `n` jump to next matching selected region
    * `p` jump to previous matching selected region
    * `M-j` deselect current region
    * `S` substitute text in all regions
    * `D` delete all selected regions


`SPC s e` matches all instances of a region under the cursor (iedit state)
