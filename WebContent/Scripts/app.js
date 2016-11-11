

var myApp = angular.module('myApp',['ngRoute','chart.js']);

myApp.controller("BarCtrl", function ($scope,$http) {
	var dataDit=[];
	var tabAHF=[];
	var tabCyclo=[];
	var tabca=[];
	var tabce=[];
	var tabRFC=[];
	var tababs=[];
	var tabLOC=[];
	var tabCLOC=[];
	var tabNOM=[];
	var i=0;
	$scope.labels = [];
	$http.get('heritage').success(function(data){
		$scope.heritages=data;
		angular.forEach(data, function(value, key){
			dataDit.push(value.dit);
			tabAHF.push(value.AHF);
			tabCyclo.push(value.Cyclo);
			tabca.push(value.ca);
			tabce.push(value.ce);
			tabRFC.push(value.RFC);
			tababs.push(value.abs);
			tabLOC.push(value.LOC);
			tabCLOC.push(value.CLOC);
			tabNOM.push(value.NOM);
			$scope.labels.push("test "+i);
			i++;
		});
	});
	$scope.title = "Graphes";
	
	$scope.series = [''];
	$scope.seriesRFC = ['ca','ce','RFC'];
	$scope.seriesCLOC = ['Cyclo','LOC','CLOC','NOM'];

	$scope.data = [];
	$scope.data.push(dataDit);
	$scope.dataAHF = [];
	$scope.dataAHF.push(tabAHF);
	$scope.dataCyclo = [];
	$scope.dataCyclo.push(tabCyclo);
	$scope.dataRFC = [];
	$scope.dataRFC.push(tabca);
	$scope.dataRFC.push(tabce);
	$scope.dataRFC.push(tabRFC);
	$scope.dataabs = [];
	$scope.dataabs.push(tababs);
	$scope.dataCLOC = [];
	$scope.dataCLOC.push(tabCyclo);
	$scope.dataCLOC.push(tabLOC);
	$scope.dataCLOC.push(tabCLOC);
	$scope.dataCLOC.push(tabNOM);
});

myApp.controller("DoughnutCtrl", function ($scope) {
	
	$scope.labels = ["Download Sales", "In-Store Sales", "Mail-Order Sales"];
	$scope.data = [300, 500, 100];
});

myApp.controller('ProjetsCtrl',function($scope,$http,$rootScope){
	$rootScope.title = "Tableau de Bord";
	$http.get('listerProjetsTab').success(function(data){
		$scope.projets=data;
	});
	
	});
myApp.controller('MainCtrl', function($scope,$http,$rootScope){
    //code
	$http.get('sessions').success(function(data){
		$scope.session=data;
	});
	$http.get('affectationProjetsGetUsers').success(function(data){
		$scope.users=data;
	});
});

myApp.controller('AccueilCtrl', function($rootScope){
    $rootScope.title = "Accueil";
    
    
});

/*myApp.controller('ProjetsCtrl', function($rootScope){
    $rootScope.title = "Tableau de Bord";
    
});*/

myApp.controller('AjoutCtrl', function($rootScope){
    $rootScope.title = "Import de Projet";
    
});
myApp.controller('paramCtrl', function($rootScope){
    
    
});

myApp.controller('AfficheCtrl', function($rootScope,$scope,$http,$routeParams){
	$rootScope.Id=$routeParams.projetId;
    $rootScope.title = "projet "+$scope.Id;
    $scope.Id=$rootScope.Id;
    $http.get('folder?id='+$scope.Id).success(function(data){
		$scope.reports=data;
	});
    $http.get('packages?id='+$scope.Id).success(function(data){
		$scope.packages=data;
	});
    $scope.data = [];
	
    $http.get('graphe_histo?id='+$scope.Id).success(function(data){
		$scope.result=data;
		$scope.data.push($scope.result.LOC);
		$scope.data.push($scope.result.CLOC);
	});
    
    
    $http.get('stats?id='+$scope.Id).success(function(data){
		$scope.oldResult=data;
	});
    $scope.dataStat = [];
    $http.get('methodes').success(function(data){
		$scope.stat=data;
		$scope.dataStat.push($scope.stat.nbMSF);
		$scope.dataStat.push($scope.stat.nbNPM);
		$scope.dataStat.push($scope.stat.nbMHF);
		$scope.dataStat.push($scope.stat.nbMPF);
	});
    
    $http.get('oldmethodes').success(function(data){
		$scope.oldStat=data;
	});
    
    $scope.labels = ["LOC", "CLOC"];
    $scope.labelsStat = ["static", "public","private","protected"];
	
   
	//angular.forEach($scope.heritages, function(value, key){alert(key + ': ' + value);});
    	$scope.test="0";
    	$scope.valeur=0;
});

myApp.config( function( $routeProvider ) {
	$routeProvider
	.when('/', {
                templateUrl : 'accueil.html',
                controller  : 'AccueilCtrl'
    })
	.when('/projets', {
						templateUrl : 'projets.html',
                		controller  : 'ProjetsCtrl'

	})
	.when('/projets/ajout', {
						templateUrl : 'projets_ajout.html',
                		controller  : 'AjoutCtrl'

	}).when('/projets/:projetId', {
		templateUrl : 'project/afficheProjet.html',
		controller  : 'AfficheCtrl'

}).when('/projets/:projetId/charts', {
	templateUrl : 'project/graphes.html',
	controller  : 'BarCtrl'

}).when('/projets/:projetId/stats', {
	templateUrl : 'project/statistiques.html',
	controller  : 'AfficheCtrl'

}).when('/projets/:projetId/params', {
	templateUrl : 'project/parametrage.html',
	controller  : 'paramCtrl'

})

	.when('/profil', {
						templateUrl : 'profil.html',
                		controller  : 'ProjetsCtrl'

	}).when('/gra', {
        templateUrl : 'graphe1.html',
        controller  : 'BarCtrl'
})
.when('/gra/2', {
		templateUrl : 'graphe2.html',
		controller  : 'DoughnutCtrl'
})
	.otherwise({redirectTo: '/'});
});