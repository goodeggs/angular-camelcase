describe 'angular-camelcase', ->
  beforeEach ->
    angular.mock.module('filters.camelcase')
    inject ($filter) ->
      @toCamelCase = $filter('toCamelCase')

  it 'converts an empty string', ->
    expect(@toCamelCase '').to.equal ''

  it 'converts a lower case word', ->
    expect(@toCamelCase 'word').to.equal 'word'

  it 'converts an uppercase word', ->
    expect(@toCamelCase 'WORD').to.equal 'word'

  it 'converts multiple lowercase words', ->
    expect(@toCamelCase 'word word').to.equal 'wordWord'

  it 'converts multiple uppercase words', ->
    expect(@toCamelCase 'WORD WORD').to.equal 'wordWORD'

