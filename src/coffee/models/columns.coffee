module.exports = (Columns, App, Backbone) ->
  Columns.Column = Backbone.Model.extend
    defaults:
      title: 'New Column'
      ordinal: 1
    localStorage: new Backbone.LocalStorage 'tyto--column'

  Columns.ColumnList = Backbone.Collection.extend
    model: Columns.Column
    localStorage: new Backbone.LocalStorage 'tyto--column'
