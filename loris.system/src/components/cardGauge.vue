<template>
  <section>
    <h2>gauge</h2>
    <div v-bind:id="cardConfig.id" style="height: 100%"></div>
  </section>
</template>

<script>
export default {
  name: 'cardGauge',
  props: {
    cardConfig: Object,
  },
  mounted: function () {
      Highcharts.chart(this.cardConfig.id, {
          chart: {
              type: 'solidgauge'
          },
          title: {
              text: this.cardConfig.title
          },
          pane: {
              center: ['50%', '85%'],
              size: '140%',
              startAngle: -90,
              endAngle: 90,
              background: {
                  backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
                  innerRadius: '60%',
                  outerRadius: '100%',
                  shape: 'arc'
              }
          },
          tooltip: {
              enabled: false
          },
          yAxis: {
              stops: [],
              lineWidth: 0,
              minorTickInterval: 20,
              tickAmount: 2,
              min: this.cardConfig.yMin,
              max: this.cardConfig.yMax,
              title: {
                  text: this.cardConfig.yTitle,
                  y: 30
              },
              labels: {
                  y: 16
              },
              stops: this.cardConfig.colors
          },

          plotOptions: {
              solidgauge: {
                  dataLabels: {
                      y: 5,
                      borderWidth: 0,
                      useHTML: true
                  }
              }
          },
          series: [{
              name: 'Variable',
              data: [this.cardConfig.data],
              dataLabels: {
                  format: '<div style="text-align:center"><span style="font-size:25px;color:' +
                      ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'silver') + '">{y}</span><br/>' +
                         '<span style="font-size:12px;color:silver">Kg/dia</span></div>'
              },
          }]
      });

    }
  }
/*
var config = {
    chart: {
        type: 'solidgauge'
    },
    title: {
        text: 'Titulo'
    },
    pane: {
        center: ['50%', '85%'],
        size: '140%',
        startAngle: -90,
        endAngle: 90,
        background: {
            backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
            innerRadius: '60%',
            outerRadius: '100%',
            shape: 'arc'
        }
    },
    tooltip: {
        enabled: false
    },
    yAxis: {
        stops: [],
        lineWidth: 0,
        minorTickInterval: 20,
        tickAmount: 2,
        title: {
            y: 30
        },
        labels: {
            y: 16
        },
    },

    plotOptions: {
        solidgauge: {
            dataLabels: {
                y: 5,
                borderWidth: 0,
                useHTML: true
            }
        }
    },
    series: [{
        name: 'Variable',
        data: [0],
        dataLabels: {
            format: '<div style="text-align:center"><span style="font-size:25px;color:' +
                ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'silver') + '">{y}</span><br/>' +
                   '<span style="font-size:12px;color:silver">Kg/dia</span></div>'
        },
    }]
};


$.getJSON('../api/cardData2.php?cardId=2', function (response) {

    config.title.text = response.title;
    config.yAxis.title.text = response.yTitle;
    config.yAxis.min = response.yMin;
    config.yAxis.max = response.yMax;
    config.yAxis.stops = response.colors;
    config.series[0].data[0] = response.data;

    // Create the chart
    Highcharts.chart('container', config);
    // update data every x seconds
});*/
</script>
