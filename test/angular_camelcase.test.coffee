describe 'angular-camelcase', ->
  beforeEach ->
    angular.mock.module('filters.camelcase')
    inject ($filter) ->
      @toCamelCase = $filter('toCamelCase')
      @titleFromCamelCase = $filter('titleFromCamelCase')
      @capitalizeFirstLetter = $filter('capitalizeFirstLetter')

  describe 'toCamelCase filter', ->
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

  describe 'titleFromCamelCase filter', ->
    it 'converts an empty string', ->
      expect(@titleFromCamelCase '').to.equal ''

    it 'converts a single lower case word', ->
      expect(@titleFromCamelCase 'word').to.equal 'Word'

    it 'converts an single upper case word', ->
      expect(@titleFromCamelCase 'WORD').to.equal 'WORD'

    it 'converts a simple camelcase string', ->
      expect(@titleFromCamelCase 'wordWord').to.equal 'Word Word'

    it 'converts a camelcase string with consecutive capital letters', ->
      expect(@titleFromCamelCase 'wordWORD').to.equal 'Word WORD'

  describe 'capitalizeFirstLetter filter', ->
    it 'converts an empty string', ->
      expect(@titleFromCamelCase '').to.equal ''

    it 'capitalizes first letter', ->
      expect(@capitalizeFirstLetter 'abc').to.equal 'Abc'
