<template>
  <section>
     <div v-bind:id="cardConfig.id"></div>
  </section>
</template>

<script>
/*
Card configuration example:
{
    "type": "cardTemporalSimple",
    "title": "Tensão por fase (KV)",
    "id": "0",
    "updatePeriod": 600,
    "aggregationTime": 300,
    "series":[
      {
            "name": "Fase A",
            "variable": "ta",
            "data": [222, 230, 225, 230]
        },{
            "name": "Fase B",
            "variable": "tb",
            "data": [212, 220, 210, 215]
        },{
            "name": "Fase C",
            "variable": "tc",
            "data": [202, 225, 205, 200]
        }
  ]
}
*/
export default {
  name: 'cardTemporalSimple',
  props: {
    cardConfig: Object,
  },
  mounted: function () {

      Highcharts.chart(this.cardConfig.id, {
          title: {
              text: this.cardConfig.title
          },
        yAxis: {
          title: {
            text: ''
          }
        },
          plotOptions: {
              series: {
                  label: {
                      connectorAllowed: false
                  },
                  pointStart: 2010
              }
          },
          series: this.cardConfig.series
      });
  }
}
</script>
