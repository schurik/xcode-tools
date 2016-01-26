# CODE HIGHLIGHTER

**//TODO:   //FIXME:   //ERROR:**

Simple **//TODO:**'s inside code can be easily overlooked. This script will highlight your **//TODO:**'s or **//FIXME:**'s when the project is build.
**//TODO:** and **//FIXME:** are highlighted yellow and all lines containing **//ERROR:** tags are highlighted red but will not prevent your code from successful compilation.

#### RUN SCRIPT BUILD PHASES

1. Place ___CodeMarkers.swift___ in your project's root directory.

2. Navigate to your project's build phases in Xcode, click on the + sign towards the top left of the window, and then click on "New Run Script Build Phase" in the drop down menu!

3. Paste the following line into the script window: 

  ```
  ${SRCROOT}/CodeHighlighter.swift
  ```

4. Finaly build your project. 


