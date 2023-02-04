classdef anailyser_pg3 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure         matlab.ui.Figure
        WelcomeMenu      matlab.ui.container.Menu
        AboutMenu        matlab.ui.container.Menu
        TipsMenu         matlab.ui.container.Menu
        UploadimageMenu  matlab.ui.container.Menu
        NextstepsMenu    matlab.ui.container.Menu
        Label2_3         matlab.ui.control.Label
        Image_4          matlab.ui.control.Image
        Image_3          matlab.ui.control.Image
        Image_2          matlab.ui.control.Image
        Image            matlab.ui.control.Image
        Label2_2         matlab.ui.control.Label
        Label2           matlab.ui.control.Label
        TIPSLabel        matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.UIFigure.Color = [1 1 1]

        end

        % Image clicked function: Image_4
        function Image_4Clicked(app, event)
            I4 = imread("C:\Users\mariam\OneDrive\Documents\Nail\nail4.jpg")
        end

        % Image clicked function: Image
        function ImageClicked(app, event)
              I1 = imread("C:\Users\mariam\OneDrive\Documents\Nail\nail1.jpg")
        end

        % Image clicked function: Image_2
        function Image_2Clicked(app, event)
              I2 = imread("C:\Users\mariam\OneDrive\Documents\Nail\nail2.jpg")

        end

        % Image clicked function: Image_3
        function Image_3Clicked(app, event)
              I3 = imread("C:\Users\mariam\OneDrive\Documents\Nail\nail3.jpg")

        end

        % Menu selected function: UploadimageMenu
        function UploadimageMenuSelected(app, event)
            anailyser_pg4;        % this command is to open the new GUI
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
            app.TipsMenu.Text = 'Tips';

            % Create UploadimageMenu
            app.UploadimageMenu = uimenu(app.UIFigure);
            app.UploadimageMenu.MenuSelectedFcn = createCallbackFcn(app, @UploadimageMenuSelected, true);
            app.UploadimageMenu.Text = 'Upload image';

            % Create NextstepsMenu
            app.NextstepsMenu = uimenu(app.UIFigure);
            app.NextstepsMenu.Text = 'Next steps';

            % Create TIPSLabel
            app.TIPSLabel = uilabel(app.UIFigure);
            app.TIPSLabel.FontName = 'Berlin Sans FB Demi';
            app.TIPSLabel.FontSize = 30;
            app.TIPSLabel.FontWeight = 'bold';
            app.TIPSLabel.FontColor = [0.0235 0.2706 0.5608];
            app.TIPSLabel.Position = [31 404 72 37];
            app.TIPSLabel.Text = 'TIPS';

            % Create Label2
            app.Label2 = uilabel(app.UIFigure);
            app.Label2.FontSize = 20;
            app.Label2.Position = [31 264 517 91];
            app.Label2.Text = {''; '- Have a plain background with no other objects showing'; '- Have good, natural lighting'; '- Ensure all edges of your nail are showing'; ''};

            % Create Label2_2
            app.Label2_2 = uilabel(app.UIFigure);
            app.Label2_2.FontSize = 20;
            app.Label2_2.FontWeight = 'bold';
            app.Label2_2.FontAngle = 'italic';
            app.Label2_2.FontColor = [0.0235 0.2706 0.5608];
            app.Label2_2.Position = [31 220 526 45];
            app.Label2_2.Text = {''; 'Here are some examples of good images for analysis:'};

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.ImageClickedFcn = createCallbackFcn(app, @ImageClicked, true);
            app.Image.Position = [57 89 100 100];
            app.Image.ImageSource = 'nail1.jpg';

            % Create Image_2
            app.Image_2 = uiimage(app.UIFigure);
            app.Image_2.ImageClickedFcn = createCallbackFcn(app, @Image_2Clicked, true);
            app.Image_2.Position = [191 89 100 100];
            app.Image_2.ImageSource = 'nail2.jpg';

            % Create Image_3
            app.Image_3 = uiimage(app.UIFigure);
            app.Image_3.ImageClickedFcn = createCallbackFcn(app, @Image_3Clicked, true);
            app.Image_3.Position = [324 89 100 100];
            app.Image_3.ImageSource = 'nail3.jpg';

            % Create Image_4
            app.Image_4 = uiimage(app.UIFigure);
            app.Image_4.ImageClickedFcn = createCallbackFcn(app, @Image_4Clicked, true);
            app.Image_4.Position = [456 89 100 100];
            app.Image_4.ImageSource = 'nail4.jpg';

            % Create Label2_3
            app.Label2_3 = uilabel(app.UIFigure);
            app.Label2_3.FontSize = 20;
            app.Label2_3.FontWeight = 'bold';
            app.Label2_3.FontAngle = 'italic';
            app.Label2_3.FontColor = [0.0235 0.2706 0.5608];
            app.Label2_3.Position = [31 354 522 24];
            app.Label2_3.Text = {'To get a more accurate analysis, here are some tips...'; ''};

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = anailyser_pg3

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