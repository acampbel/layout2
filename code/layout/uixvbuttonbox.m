function obj = uixvbuttonbox( varargin )
%uixvbuttonbox  Arrange buttons vertically in a single column
%
%  b = uixvbuttonbox() creates a button box in the current figure.
%
%  b = uixvbuttonbox(p1,v1,p2,v2,...) creates a button box and sets
%  specified property p1 to value v1, etc.
%
%  See also: uixvbox, uixvboxflex, uixhbuttonbox

%  Copyright 2009-2013 The MathWorks, Inc.
%  $Revision$ $Date$

% Check inputs
uix.pvchk( varargin )

% Construct
obj = uix.VButtonBox( varargin{:} );

% Auto-parent
if ~ismember( 'Parent', varargin(1:2:end) )
    obj.Parent = gcf();
end

end % uixvbuttonbox