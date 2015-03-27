capitalizeFirstLetter = (str) ->
  return '' if str.length is 0
  "#{str.substr(0, 1).toUpperCase()}#{str.substr(1)}"

module.exports = angular.module 'filters.camelcase', []

.filter 'toCamelCase', ->
  # Convert a space delimited string of tokens into camelCase.
  (string) ->
    tokens = string.split(" ")
    return '' if tokens.length is 0

    firstToken = tokens[0]
    otherTokens = tokens[1..]

    "#{firstToken.toLowerCase()}#{otherTokens.map(capitalizeFirstLetter).join('')}"
