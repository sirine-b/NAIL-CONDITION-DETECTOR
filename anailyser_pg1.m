classdef anailyser_pg1 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure         matlab.ui.Figure
        WelcomeMenu      matlab.ui.container.Menu
        AboutMenu        matlab.ui.container.Menu
        TipsMenu         matlab.ui.container.Menu
        UploadimageMenu  matlab.ui.container.Menu
        NextstepsMenu    matlab.ui.container.Menu
        YSERLabel        matlab.ui.control.Label
        NAILLabel        matlab.ui.control.Label
        ALabel           matlab.ui.control.Label
        Image            matlab.ui.control.Image
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.UIFigure.Color = [1 1 1]
        end

        % Image clicked function: Image
        function ImageClicked(app, event)
           I = imread("C:\Users\mariam\OneDrive\Documents\Nail\anailyser.jpg")
           
        end

        % Menu selected function: AboutMenu
        function AboutMenuSelected(app, event)
            anailyser_pg2;        % this command is to open the new GUI
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create WelcomeMenu
            app.WelcomeMenu = uimenu(app.UIFigure);
            app.WelcomeMenu.Text = 'Welcome';

            % Create AboutMenu
            app.AboutMenu = uimenu(app.UIFigure);
            app.AboutMenu.MenuSelectedFcn = createCallbackFcn(app, @AboutMenuSelected, true);
            app.AboutMenu.Text = 'About';

            % Create TipsMenu
            app.TipsMenu = uimenu(app.UIFigure);
            app.TipsMenu.Text = 'Tips';

            % Create UploadimageMenu
            app.UploadimageMenu = uimenu(app.UIFigure);
            app.UploadimageMenu.Text = 'Upload image';

            % Create NextstepsMenu
            app.NextstepsMenu = uimenu(app.UIFigure);
            app.NextstepsMenu.Text = 'Next steps';

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.ImageClickedFcn = createCallbackFcn(app, @ImageClicked, true);
            app.Image.Position = [120 45 402 312];
            app.Image.ImageSource = 'anailyser.jpg';

            % Create ALabel
            app.ALabel = uilabel(app.UIFigure);
            app.ALabel.FontName = 'Berlin Sans FB Demi';
            app.ALabel.FontSize = 50;
            app.ALabel.FontColor = [0.0235 0.2706 0.5608];
            app.ALabel.Position = [174 356 39 62];
            app.ALabel.Text = 'A';

            % Create NAILLabel
            app.NAILLabel = uilabel(app.UIFigure);
            app.NAILLabel.FontSize = 50;
            app.NAILLabel.FontWeight = 'bold';
            app.NAILLabel.FontColor = [0.0235 0.2706 0.5608];
            app.NAILLabel.Position = [212 356 122 62];
            app.NAILLabel.Text = 'NAIL';

            % Create YSERLabel
            app.YSERLabel = uilabel(app.UIFigure);
            app.YSERLabel.FontName = 'Berlin Sans FB Demi';
            app.YSERLabel.FontSize = 50;
            app.YSERLabel.FontColor = [0.0235 0.2706 0.5608];
            app.YSERLabel.Position = [323 356 142 62];
            app.YSERLabel.Text = 'YSER';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = anailyser_pg1

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end