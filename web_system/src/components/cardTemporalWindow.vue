<template>
  <section>
    <div v-bind:id="cardConfig.id" style="height: 100%"></div>
  </section>
</template>


<script>

export default {
  name: 'cardTemporalWindow',
  props: {
    cardConfig: Object,
  },
  mounted: function () {
      Highcharts.stockChart(this.cardConfig.id, {
          chart: {
          zoomType: 'x'
          },
          rangeSelector: {
              selected: 1
          },
          title: {
              text: this.cardConfig.title
          },
          yAxis: {
              title: {
                  text: this.cardConfig.yTitle
              },
              opposite: false,
          },
          series: this.cardConfig.series
      });
  }
}

/*
var config = {
    chart: {
    zoomType: 'x'
    },
    rangeSelector: {
        selected: 1
    },
    title: {
        text: 'Titulo'
    },
    yAxis: {
        title: {
            text: 'Variavel'
        },
        opposite: false,
    },
    series: []
};



$.getJSON('api/cardData.php?cardId=1', function (response) {

    config.title.text = response.title;
    config.yAxis.title.text = response.yTitle;
    for (i in response.series) {
        config["series"][i] = {
            name: response.series[i].title,
            data: response.series[i].data
        }
    };

    // Create the chart
    Highcharts.stockChart('container', config);
    // update data every x seconds
});


*/

</script>
