/* global angular */
(function()  {
  "use strict";
  angular.module("app").controller("angularCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/assistants.json').then(function(response) {
        console.log(response.data);
        $scope.assistants = response.data;
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

    $scope.changeOrderAttribute = function(inputAttribute) {
      if (inputAttribute !== $scope.orderAttribute) {
        $scope.orderDescending = false;
      } else {
        $scope.orderDescending = !$scope.orderDescending;
      }
      $scope.orderAttribute = inputAttribute;
    };

    window.$scope = $scope;
  });
})();