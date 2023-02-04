classdef anailyser_pg2 < matlab.apps.AppBase

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
        Label2           matlab.ui.control.Label
        Label            matlab.ui.control.Label
        ABOUTLabel       matlab.ui.control.Label
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

        % Menu selected function: TipsMenu
        function TipsMenuSelected(app, event)
            anailyser_pg3;        % this command is to open the new GUI
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
            app.AboutMenu.Text = 'About';

            % Create TipsMenu
            app.TipsMenu = uimenu(app.UIFigure);
            app.TipsMenu.MenuSelectedFcn = createCallbackFcn(app, @TipsMenuSelected, true);
            app.TipsMenu.Text = 'Tips';

            % Create UploadimageMenu
            app.UploadimageMenu = uimenu(app.UIFigure);
            app.UploadimageMenu.Text = 'Upload image';

            % Create NextstepsMenu
            app.NextstepsMenu = uimenu(app.UIFigure);
            app.NextstepsMenu.Text = 'Next steps';

            % Create ABOUTLabel
            app.ABOUTLabel = uilabel(app.UIFigure);
            app.ABOUTLabel.FontName = 'Berlin Sans FB Demi';
            app.ABOUTLabel.FontSize = 30;
            app.ABOUTLabel.FontColor = [0.0235 0.2706 0.5608];
            app.ABOUTLabel.Position = [41 406 116 37];
            app.ABOUTLabel.Text = 'ABOUT ';

            % Create Label
            app.Label = uilabel(app.UIFigure);
            app.Label.WordWrap = 'on';
            app.Label.FontName = 'Berlin Sans FB Demi';
            app.Label.FontSize = 20;
            app.Label.FontWeight = 'bold';
            app.Label.FontAngle = 'italic';
            app.Label.FontColor = [0.0235 0.2706 0.5608];
            app.Label.Position = [41 344 456 45];
            app.Label.Text = 'Just like the eyes are the window to the soul, your nails are a window to your health. ';

            % Create Label2
            app.Label2 = uilabel(app.UIFigure);
            app.Label2.WordWrap = 'on';
            app.Label2.FontName = 'Berlin Sans FB Demi';
            app.Label2.FontSize = 20;
            app.Label2.Position = [41 1 496 374];
            app.Label2.Text = {'As a nail is unique to every person, its texture and color can be used to determine symptoms of even fatal diseases, affecting main body organs such as the liver and lungs.'; ''; 'Terry''s nails, beau''s lines or onycholysis, can be detected using ANAILYSER.  After uploading an image or taking a live image of the nail, the trained digital image processing algorithms are able to analyse the user''s nail and can classify if the user has any of the above conditions or have healthy nails.'; ''};

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.ImageClickedFcn = createCallbackFcn(app, @ImageClicked, true);
            app.Image.Position = [478 344 155 137];
            app.Image.ImageSource = 'IMG_0423.JPG';

            % Create ALabel
            app.ALabel = uilabel(app.UIFigure);
            app.ALabel.FontName = 'Berlin Sans FB Demi';
            app.ALabel.FontSize = 30;
            app.ALabel.FontColor = [0.0235 0.2706 0.5608];
            app.ALabel.Position = [153 406 26 37];
            app.ALabel.Text = 'A';

            % Create NAILLabel
            app.NAILLabel = uilabel(app.UIFigure);
            app.NAILLabel.FontName = 'Berlin Sans FB Demi';
            app.NAILLabel.FontSize = 30;
            app.NAILLabel.FontWeight = 'bold';
            app.NAILLabel.FontColor = [0.0235 0.2706 0.5608];
            app.NAILLabel.Position = [173 406 75 37];
            app.NAILLabel.Text = 'NAIL';

            % Create YSERLabel
            app.YSERLabel = uilabel(app.UIFigure);
            app.YSERLabel.FontName = 'Berlin Sans FB Demi';
            app.YSERLabel.FontSize = 30;
            app.YSERLabel.FontColor = [0.0235 0.2706 0.5608];
            app.YSERLabel.Position = [240 406 87 37];
            app.YSERLabel.Text = 'YSER';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = anailyser_pg2

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