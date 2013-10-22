classdef VButtonBox < uix.ButtonBox
    
    methods
        
        function obj = VButtonBox( varargin )
            
            % Call superclass constructor
            obj@uix.ButtonBox( varargin{:} );
            
        end % constructor
        
    end % structors
    
    methods( Access = protected )
        
        function redraw( obj )
            
            % Compute positions
            bounds = hgconvertunits( ancestor( obj, 'figure' ), ...
                obj.Position, obj.Units, 'pixels', obj.Parent );
            buttonSize = obj.ButtonSize_;
            padding = obj.Padding_;
            spacing = obj.Spacing_;
            r = numel( obj.Contents_ );
            xSizes = repmat( buttonSize(1), [r 1] );
            switch obj.HorizontalAlignment
                case 'left'
                    xPositions = [repmat( padding, [r 1] ) + 1, xSizes];
                case 'center'
                    xPositions = [(bounds(3) - xSizes) / 2 + 1, xSizes];
                case 'right'
                    xPositions = [bounds(3) - xSizes - padding + 1, xSizes];
            end
            ySizes = repmat( buttonSize(2), [r 1] );
            switch obj.VerticalAlignment
                case 'top'
                    yPositions = [cumsum( [0; ySizes(1:r-1,:)] ) + ...
                        spacing * transpose( 0:r-1 ) + bounds(3) - ...
                        buttonSize(1) * r - spacing * (r-1) - padding + 1, ...
                        ySizes];
                case 'middle'
                    yPositions = [cumsum( [0; ySizes(1:r-1,:)] ) + ...
                        spacing * transpose( 0:r-1 ) + bounds(3) / 2 - ...
                        buttonSize(1) * r / 2 - spacing * (r-1) / 2 + 1, ...
                        ySizes];
                case 'bottom'
                    yPositions = [cumsum( [0; ySizes(1:r-1,:)] ) + ...
                        padding + spacing * transpose( 0:r-1 ) + 1, ySizes];
            end
            positions = [xPositions(:,1), yPositions(:,1), ...
                xPositions(:,2), yPositions(:,2)];
            
            % Set positions
            children = obj.Contents_;
            for ii = 1:numel( children )
                child = children(ii);
                child.Units = 'pixels';
                if isa( child, 'matlab.graphics.axis.Axes' )
                    child.( child.ActivePositionProperty ) = positions(ii,:);
                else
                    child.Position = positions(ii,:);
                end
            end
            
        end % redraw
        
    end % template methods
    
end % classdef