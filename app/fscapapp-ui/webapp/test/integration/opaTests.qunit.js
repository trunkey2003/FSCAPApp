sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/fscapappui/test/integration/FirstJourney',
		'ns/fscapappui/test/integration/pages/RootEntitiesList',
		'ns/fscapappui/test/integration/pages/RootEntitiesObjectPage'
    ],
    function(JourneyRunner, opaJourney, RootEntitiesList, RootEntitiesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/fscapappui') + '/index.html'
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