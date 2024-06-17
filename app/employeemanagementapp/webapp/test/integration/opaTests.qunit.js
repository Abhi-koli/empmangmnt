sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'employeemanagementapp/test/integration/FirstJourney',
		'employeemanagementapp/test/integration/pages/EmployeesList',
		'employeemanagementapp/test/integration/pages/EmployeesObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeesList, EmployeesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('employeemanagementapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeesList: EmployeesList,
					onTheEmployeesObjectPage: EmployeesObjectPage
                }
            },
            opaJourney.run
        );
    }
);