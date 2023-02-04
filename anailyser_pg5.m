classdef anailyser_pg5 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        WelcomeMenu                     matlab.ui.container.Menu
        AboutMenu                       matlab.ui.container.Menu
        TipsMenu                        matlab.ui.container.Menu
        UploadimageMenu                 matlab.ui.container.Menu
        NextstepsMenu                   matlab.ui.container.Menu
        contactsofprofessionalsLabel    matlab.ui.control.Label
        GethelpwithsomethingelseButton  matlab.ui.control.Button
        ReportanaccessibilityproblemButton  matlab.ui.control.Button
        GivefeedbackormakeacomplaintButton  matlab.ui.control.Button
        FindcontactdetailedforGPshospitalsandotherservicesButton  matlab.ui.control.Button
        BookcancelorchangeappointmentButton  matlab.ui.control.Button
        GetmedicalhelpButton            matlab.ui.control.Button
        OrviewLabel                     matlab.ui.control.Label
        CONTACTTHELabel                 matlab.ui.control.Label
        Image                           matlab.ui.control.Image
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
            app.NextstepsMenu.Text = 'Next steps';

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.Position = [244 398 87 79];
            app.Image.ImageSource = 'NHS-Logo.jpg';

            % Create CONTACTTHELabel
            app.CONTACTTHELabel = uilabel(app.UIFigure);
            app.CONTACTTHELabel.WordWrap = 'on';
            app.CONTACTTHELabel.FontName = 'Berlin Sans FB Demi';
            app.CONTACTTHELabel.FontSize = 30;
            app.CONTACTTHELabel.FontWeight = 'bold';
            app.CONTACTTHELabel.FontColor = [0.0235 0.2706 0.5608];
            app.CONTACTTHELabel.Position = [26 419 228 37];
            app.CONTACTTHELabel.Text = 'CONTACT THE ';

            % Create OrviewLabel
            app.OrviewLabel = uilabel(app.UIFigure);
            app.OrviewLabel.Position = [135 17 46 37];
            app.OrviewLabel.Text = 'Or view';

            % Create GetmedicalhelpButton
            app.GetmedicalhelpButton = uibutton(app.UIFigure, 'push');
            app.GetmedicalhelpButton.FontWeight = 'bold';
            app.GetmedicalhelpButton.Position = [135 353 355 46];
            app.GetmedicalhelpButton.Text = 'Get medical help';

            % Create BookcancelorchangeappointmentButton
            app.BookcancelorchangeappointmentButton = uibutton(app.UIFigure, 'push');
            app.BookcancelorchangeappointmentButton.FontWeight = 'bold';
            app.BookcancelorchangeappointmentButton.Position = [135 294 355 46];
            app.BookcancelorchangeappointmentButton.Text = 'Book, cancel or change appointment';

            % Create FindcontactdetailedforGPshospitalsandotherservicesButton
            app.FindcontactdetailedforGPshospitalsandotherservicesButton = uibutton(app.UIFigure, 'push');
            app.FindcontactdetailedforGPshospitalsandotherservicesButton.FontWeight = 'bold';
            app.FindcontactdetailedforGPshospitalsandotherservicesButton.Position = [135 238 356 46];
            app.FindcontactdetailedforGPshospitalsandotherservicesButton.Text = 'Find contact detailed for GPs, hospitals and other services';

            % Create GivefeedbackormakeacomplaintButton
            app.GivefeedbackormakeacomplaintButton = uibutton(app.UIFigure, 'push');
            app.GivefeedbackormakeacomplaintButton.FontWeight = 'bold';
            app.GivefeedbackormakeacomplaintButton.Position = [135 179 355 46];
            app.GivefeedbackormakeacomplaintButton.Text = 'Give feedback or make a complaint';

            % Create ReportanaccessibilityproblemButton
            app.ReportanaccessibilityproblemButton = uibutton(app.UIFigure, 'push');
            app.ReportanaccessibilityproblemButton.FontWeight = 'bold';
            app.ReportanaccessibilityproblemButton.Position = [135 123 355 46];
            app.ReportanaccessibilityproblemButton.Text = 'Report an accessibility problem';

            % Create GethelpwithsomethingelseButton
            app.GethelpwithsomethingelseButton = uibutton(app.UIFigure, 'push');
            app.GethelpwithsomethingelseButton.FontWeight = 'bold';
            app.GethelpwithsomethingelseButton.Position = [135 62 355 46];
            app.GethelpwithsomethingelseButton.Text = 'Get help with something else';

            % Create contactsofprofessionalsLabel
            app.contactsofprofessionalsLabel = uilabel(app.UIFigure);
            app.contactsofprofessionalsLabel.FontWeight = 'bold';
            app.contactsofprofessionalsLabel.FontColor = [0.0235 0.2706 0.5608];
            app.contactsofprofessionalsLabel.Position = [180 17 151 37];
            app.contactsofprofessionalsLabel.Text = 'contacts of professionals';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = anailyser_pg5

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

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