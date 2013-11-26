function obj = uixvbox( varargin )
%uixvbox  Arrange elements vertically in a single column
%
%  b = uixvbox() creates a box in the current figure.
%
%  b = uixvbox(p1,v1,p2,v2,...) creates a box and sets specified property
%  p1 to value v1, etc.
%
%  See also: uixvboxflex, uixvbuttonbox, uixhbox, uixgridbox

%  Copyright 2009-2013 The MathWorks, Inc.
%  $Revision$ $Date$

% Check inputs
uix.pvchk( varargin )

% Construct
obj = uix.VBox( varargin{:} );

% Auto-parent
if ~ismember( 'Parent', varargin(1:2:end) )
    obj.Parent = gcf();
end

end % uixvbox