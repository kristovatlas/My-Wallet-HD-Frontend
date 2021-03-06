walletApp.directive('btcPicker', ($translate, Wallet) ->
  {
    restrict: "E"
    replace: 'false'
    scope: {
      currency: '='
      displayCurrency: '='
    }
    templateUrl: 'templates/btc-picker.jade'
    link: (scope, elem, attrs) ->
      scope.currencies = Wallet.btcCurrencies
            
      scope.didSelect = (item, model) ->
        scope.currency = item
        if Wallet.isBitCurrency(scope.displayCurrency)
          scope.displayCurrency = item
  }
)