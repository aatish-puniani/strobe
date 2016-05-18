/* global angular */
(function()  {
  "use strict";
  angular.module("app").controller("angularCtrl", function($scope, $http) {

    $scope.setup = function(city, occupation) {
      console.log(city, occupation);
      $http.get('/api/v1/assistants.json').then(function(response) {
        console.log(response.data);
        $scope.assistants = response.data.filter(function(assistant) {
          var cityMatch = city ? assistant.city.name.toLowerCase() === city.toLowerCase() : true;
          var occupationMatch = occupation ? assistant.occupation.name.toLowerCase() === occupation.toLowerCase() : true;
          return cityMatch && occupationMatch;
        });
      });
    };

    $scope.updateAssistant = function(inputAssistantName, inputAssistantPhoneNumber, inputAssistantAddress, inputAssistantDayRate,inputAssistantWorkedWith,
        inputAssistantUrl, inputAssistantBio, inputAssistantTwitter, inputAssistantInstagram, inputAssistantYearsExp,
        inputAssistantCar, inputAssistantOccupationId, inputAssistantBlog, inputAssistantFacebook, inputAssistantCityId, inputAssistantAvatar) {
      var updateAssistant = {
        name: inputAssistantName,
        phone_number: inputAssistantPhoneNumber,
        address: inputAssistantAddress,
        day_rate: inputAssistantDayRate,
        worked_with: inputAssistantWorkedWith,
        url: inputAssistantUrl,
        bio: inputAssistantBio,
        twitter: inputAssistantTwitter,
        instagram: inputAssistantInstagram,
        years_exp: inputAssistantYearsExp,
        car: inputAssistantCar,
        occupation_id: inputAssistantOccupationId,
        blog: inputAssistantBlog,
        facebook: inputAssistantFacebook,
        city_id: inputAssistantCityId,
        avatar: inputAssistantAvatar
      };
      $http.patch('/api/v1/assistants.json', updateAssistant).then(function(response) {
        console.log(response);
        $scope.assistants.push(updateAssistant);
      }, function(errorResponse) {
        console.log(errorResponse);
        $scope.errors = errorResponse.data.errors;
      });
    };

    $http.get('/api/v1/occupations.json').then(function(response) {
      $scope.occupations = response.data;
    });

    $scope.changeOrderAttribute = function(inputAttribute) {
      if (inputAttribute !== $scope.orderAttribute) {
        $scope.orderDescending = false;
      } else {
        $scope.orderDescending = !$scope.orderDescending;
      }
      $scope.orderAttribute = inputAttribute;
    };

    $scope.selectedProfessions = ["Digital Tech", "First Assistant"];

    $scope.occupationFilter = function(assistant) {
      console.log(assistant);
      if ($scope.selectedProfessions.indexOf(assistant.occupation.name) !== -1 ) {
        return true;
      } else {
        return false;
      }
    };



    window.$scope = $scope;
  });
})();