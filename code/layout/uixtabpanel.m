function obj = uixtabpanel( varargin )
%uixtabpanel  Arrange elements in a panel with tabs for selecting which is visible

%  Copyright 2009-2013 The MathWorks, Inc.
%  $Revision: 380 $ $Date: 2013-02-27 10:29:08 +0000 (Wed, 27 Feb 2013) $

% Check inputs
uix.pvchk( varargin )

% Construct
obj = uix.TabPanel( varargin{:} );

% Auto-parent
if ~ismember( 'Parent', varargin(1:2:end) )
    obj.Parent = gcf();
end

end % uixtabpanel