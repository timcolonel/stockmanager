# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https:#github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require_tree .
$(document).ready () ->
  google.load("visualization", "1", {packages: ["corechart"], callback: load_charts});


load_charts = ()->
  $('.chart_container').each () ->
    console.log('pji')
    data = new google.visualization.DataTable()
    data.addColumn('datetime', 'Time')
    data.addColumn('number', 'Price')

    options = {
      title: 'Company Performance'
      hAxis: {minValue: time(9, 30, 0), maxValue: time(16, 0, 0)}
    };

    chart = new google.visualization.LineChart($(this)[0]);
    chart.draw(data, options);

    i = 0
    refreshIntervalId = setInterval((
      () ->
        if i >= 2100
          clearInterval(refreshIntervalId);
        data.addRow([time(10, i, 0), Math.floor(500 * Math.random())])
        chart.draw(data, options)
        i++)
    , 1000)


time = (h, m, s) ->
  t = new Date()
  t.setHours(h)
  t.setMinutes(m)
  t.setSeconds(s)
  return t
