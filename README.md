# GUI Layout Toolbox 2
This toolbox provides tools to create sophisticated MATLAB graphical user interfaces that resize gracefully. The classes supplied can be used in combination to produce virtually any user interface layout.

* Arrange MATLAB user interface components horizontally, vertically or in grids
* Mix fixed- and variable-size components
* Resize components interactively by dragging dividers
* Show and hide components using tabs and panels
* Show part of a large component in a scrollable panel

## History
This toolbox was developed by David Sampson and Ben Tordoff from the [Consulting Services](http://www.mathworks.com/services/consulting/) group at MathWorks, and was first released in 2010.

The toolbox is distributed externally on [File Exchange](http://www.mathworks.com/matlabcentral/fileexchange/47982-gui-layout-toolbox).

This version is for MATLAB R2014b and later. For R2014a and earlier, see [version 1](http://www.mathworks.com/matlabcentral/fileexchange/27758-gui-layout-toolbox).

## Structure of the repository
The repository is divided into:

- `/tbx`: the toolbox
  - `/tbx/layout`: the toolbox code
  - `/tbx/layoutdoc`: the toolbox documentation -- generated by DocTools
- `/tests`: the toolbox tests -- written in the MATLAB unit test framework
- `/bash`: a collection of bash tasks
- `/docsrc`: the documentation source files -- to be processed by DocTools
- `/releases`: the archive of previous MATLAB toolbox (.mltbx) releases -- now also presented as GitLab releases