sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'capappui/capappui/test/integration/FirstJourney',
		'capappui/capappui/test/integration/pages/RootEntitiesList',
		'capappui/capappui/test/integration/pages/RootEntitiesObjectPage'
    ],
    function(JourneyRunner, opaJourney, RootEntitiesList, RootEntitiesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('capappui/capappui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRootEntitiesList: RootEntitiesList,
					onTheRootEntitiesObjectPage: RootEntitiesObjectPage
                }
            },
            opaJourney.run
        );
    }
);