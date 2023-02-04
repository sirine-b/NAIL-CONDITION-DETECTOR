classdef anailyser_pg4 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure           matlab.ui.Figure
        WelcomeMenu        matlab.ui.container.Menu
        AboutMenu          matlab.ui.container.Menu
        TipsMenu           matlab.ui.container.Menu
        UploadimageMenu    matlab.ui.container.Menu
        NextstepsMenu      matlab.ui.container.Menu
        ChooseanexistingphotofromyourcamerarollLabel  matlab.ui.control.Label
        TakenewphotoLabel  matlab.ui.control.Label
        takephotoButton    matlab.ui.control.Button
        uploadButton       matlab.ui.control.Button
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.UIFigure.Color = [1 1 1]
        end

        % Menu selected function: NextstepsMenu
        function NextstepsMenuSelected(app, event)
            anailyser_pg5;        % this command is to open the new GUI
        end

        % Button pushed function: takephotoButton
        function takephotoButtonPushed(app, event)
            code_take1()
        end

        % Button pushed function: uploadButton
        function uploadButtonPushed(app, event)
            code_upload()
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
            app.UploadimageMenu.Text = 'Upload image';

            % Create NextstepsMenu
            app.NextstepsMenu = uimenu(app.UIFigure);
            app.NextstepsMenu.MenuSelectedFcn = createCallbackFcn(app, @NextstepsMenuSelected, true);
            app.NextstepsMenu.Text = 'Next steps';

            % Create uploadButton
            app.uploadButton = uibutton(app.UIFigure, 'push');
            app.uploadButton.ButtonPushedFcn = createCallbackFcn(app, @uploadButtonPushed, true);
            app.uploadButton.Icon = '129-1297987_this-free-icons-png-design-of-upload-icon.png';
            app.uploadButton.IconAlignment = 'center';
            app.uploadButton.Position = [204 271 269 117];
            app.uploadButton.Text = '';

            % Create takephotoButton
            app.takephotoButton = uibutton(app.UIFigure, 'push');
            app.takephotoButton.ButtonPushedFcn = createCallbackFcn(app, @takephotoButtonPushed, true);
            app.takephotoButton.Icon = '568122.png';
            app.takephotoButton.IconAlignment = 'center';
            app.takephotoButton.Position = [202 82 269 123];
            app.takephotoButton.Text = '';

            % Create TakenewphotoLabel
            app.TakenewphotoLabel = uilabel(app.UIFigure);
            app.TakenewphotoLabel.HorizontalAlignment = 'center';
            app.TakenewphotoLabel.FontName = 'Berlin Sans FB Demi';
            app.TakenewphotoLabel.FontSize = 20;
            app.TakenewphotoLabel.FontWeight = 'bold';
            app.TakenewphotoLabel.FontColor = [0.0235 0.2706 0.5608];
            app.TakenewphotoLabel.Position = [245 34 188 50];
            app.TakenewphotoLabel.Text = 'Take new photo';

            % Create ChooseanexistingphotofromyourcamerarollLabel
            app.ChooseanexistingphotofromyourcamerarollLabel = uilabel(app.UIFigure);
            app.ChooseanexistingphotofromyourcamerarollLabel.HorizontalAlignment = 'center';
            app.ChooseanexistingphotofromyourcamerarollLabel.WordWrap = 'on';
            app.ChooseanexistingphotofromyourcamerarollLabel.FontName = 'Berlin Sans FB Demi';
            app.ChooseanexistingphotofromyourcamerarollLabel.FontSize = 20;
            app.ChooseanexistingphotofromyourcamerarollLabel.FontWeight = 'bold';
            app.ChooseanexistingphotofromyourcamerarollLabel.FontColor = [0.0235 0.2706 0.5608];
            app.ChooseanexistingphotofromyourcamerarollLabel.Position = [205 195 268 94];
            app.ChooseanexistingphotofromyourcamerarollLabel.Text = 'Choose an existing photo from your camera roll';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = anailyser_pg4

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