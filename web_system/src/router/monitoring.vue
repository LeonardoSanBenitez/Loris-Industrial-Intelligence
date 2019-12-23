<template>
  <div>
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">Monitoring</h1>
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>

    <section v-for="cardConfig in pageConfig" class="divGrafico">
      <component v-bind:cardConfig="cardConfig" v-bind:is="cardConfig.type"/>
    </section>
  </div>
</template>

<script>

export default {
  name: 'app',
  data() {
    return {
      pageConfig: [{
          "type": "cardGauge",
          "title": "teste",
          "id": "10",
          "title": "Cumprimento à meta",
          "yTitle": "Produtividade",
          "yMin": 0,
          "yMax": 200,
          "colors": [
              [0.1, "#DF5353"],
              [0.5, "#DDDF0D"],
              [0.9, "#55BF3B"]
          ],
          "data": 81.5
      },{
        "type": "cardTemporalWindow",
        "title": "AC central",
        "yTitle": "Corrente (A)",
        "id": "09",
        "series": [{
          "title": "Fase B",
          "data": [
                [
                    1550154600000,
                    170.8
                ],
                [
                    1550241000000,
                    170.42
                ],
                [
                    1550586600000,
                    170.93
                ],
                [
                    1550673000000,
                    172.03
                ],
                [
                    1550759400000,
                    171.06
                ],
                [
                    1550845800000,
                    172.97
                ],
                [
                    1551105000000,
                    174.23
                ],
                [
                    1551191400000,
                    174.33
                ],
                [
                    1551277800000,
                    174.87
                ],
                [
                    1551364200000,
                    173.15
                ],
                [
                    1551450600000,
                    174.97
                ],
                [
                    1551709800000,
                    175.85
                ],
                [
                    1551796200000,
                    175.53
                ],
                [
                    1551882600000,
                    174.52
                ],
                [
                    1551969000000,
                    172.5
                ],
                [
                    1552055400000,
                    172.91
                ],
                [
                    1552311000000,
                    178.9
                ],
                [
                    1552397400000,
                    180.91
                ],
                [
                    1552483800000,
                    181.71
                ],
                [
                    1552570200000,
                    183.73
                ],
                [
                    1552656600000,
                    186.12
                ],
                [
                    1552924190000,
                    187.52
                ]
            ]},
            {
              "title": "Fase A",
              "data": [
                    [
                        1543933800000,
                        176.69
                    ],
                    [
                        1544106600000,
                        174.72
                    ],
                    [
                        1544193000000,
                        168.49
                    ],
                    [
                        1544452200000,
                        169.6
                    ],
                    [
                        1544538600000,
                        168.63
                    ],
                    [
                        1544625000000,
                        169.1
                    ],
                    [
                        1544711400000,
                        170.95
                    ],
                    [
                        1544797800000,
                        165.48
                    ],
                    [
                        1545057000000,
                        163.94
                    ],
                    [
                        1545143400000,
                        166.07
                    ],
                    [
                        1545229800000,
                        160.89
                    ],
                    [
                        1545316200000,
                        156.83
                    ],
                    [
                        1545402600000,
                        150.73
                    ],
                    [
                        1545661800000,
                        146.83
                    ],
                    [
                        1545834600000,
                        157.17
                    ],
                    [
                        1545921000000,
                        156.15
                    ],
                    [
                        1546007400000,
                        156.23
                    ],
                    [
                        1546266600000,
                        157.74
                    ],
                    [
                        1546439400000,
                        157.92
                    ],
                    [
                        1546525800000,
                        142.19
                    ],
                    [
                        1546612200000,
                        148.26
                    ],
                    [
                        1546871400000,
                        147.93
                    ],
                    [
                        1546957800000,
                        150.75
                    ],
                    [
                        1547044200000,
                        153.31
                    ],
                    [
                        1547130600000,
                        153.8
                    ],
                    [
                        1547217000000,
                        152.29
                    ],
                    [
                        1547476200000,
                        150
                    ],
                    [
                        1547562600000,
                        153.07
                    ],
                    [
                        1547649000000,
                        154.94
                    ],
                    [
                        1547735400000,
                        155.86
                    ],
                    [
                        1547821800000,
                        156.82
                    ],
                    [
                        1548167400000,
                        153.3
                    ],
                    [
                        1548253800000,
                        153.92
                    ],
                    [
                        1548340200000,
                        152.7
                    ],
                    [
                        1548426600000,
                        157.76
                    ],
                    [
                        1548685800000,
                        156.3
                    ],
                    [
                        1548772200000,
                        154.68
                    ],
                    [
                        1548858600000,
                        165.25
                    ],
                    [
                        1548945000000,
                        166.44
                    ],
                    [
                        1549031400000,
                        126.52
                    ],
                    [
                        1549290600000,
                        115.25
                    ],
                    [
                        1549377000000,
                        124.18
                    ],
                    [
                        1549463400000,
                        104.24
                    ],
                    [
                        1549549800000,
                        100.94
                    ],
                    [
                        1549636200000,
                        150.41
                    ],
                    [
                        1549895400000,
                        109.43
                    ],
                    [
                        1549981800000,
                        110.89
                    ],
                    [
                        1550068200000,
                        120.18
                    ],
                    [
                        1550154600000,
                        110.8
                    ],
                    [
                        1550241000000,
                        120.42
                    ],
                    [
                        1550586600000,
                        110.93
                    ],
                    [
                        1550673000000,
                        122.03
                    ],
                    [
                        1550759400000,
                        111.06
                    ],
                    [
                        1550845800000,
                        132.97
                    ],
                    [
                        1551105000000,
                        134.23
                    ],
                    [
                        1551191400000,
                        124.33
                    ],
                    [
                        1551277800000,
                        134.87
                    ],
                    [
                        1551364200000,
                        133.15
                    ],
                    [
                        1551450600000,
                        124.97
                    ],
                    [
                        1551709800000,
                        125.85
                    ],
                    [
                        1551796200000,
                        135.53
                    ],
                    [
                        1551882600000,
                        124.52
                    ],
                    [
                        1551969000000,
                        122.5
                    ],
                    [
                        1552055400000,
                        122.91
                    ],
                    [
                        1552311000000,
                        128.9
                    ],
                    [
                        1552397400000,
                        130.91
                    ],
                    [
                        1552483800000,
                        111.71
                    ],
                    [
                        1552570200000,
                        143.73
                    ],
                    [
                        1552656600000,
                        116.12
                    ],
                    [
                        1552856600000,
                        137.52
                    ]
                ]}
        ]
      },{
          "type": "cardTable",
          "title": "Monitored equipments",
          "id": "08",
          "series": [{
          	"Equipamento": "Osciloscópio",
          	"Potência ativa (W)": "40,1",
          	"THD (%)": "21%",
          	"Horário": "11:39:10"
          },{
          	"Equipamento": "Osciloscópio",
          	"Potência ativa (W)": "40,2",
          	"THD (%)": "21%",
          	"Horário": "11:39:09"
          },{
          	"Equipamento": "Osciloscópio",
          	"Potência ativa (W)": "40,5",
          	"THD (%)": "21%",
          	"Horário": "11:39:08"
          },{
          	"Equipamento": "Osciloscópio",
          	"Potência ativa (W)": "40,1",
          	"THD (%)": "21%",
          	"Horário": "11:39:07"
          },{
          	"Equipamento": "Osciloscópio",
          	"Potência ativa (W)": "40,2",
          	"THD (%)": "21%",
          	"Horário": "11:39:06"
          },{
          	"Equipamento": "Osciloscópio",
          	"Potência ativa (W)": "40,5",
          	"THD (%)": "21%",
          	"Horário": "11:39:05"
          }]
      },{
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
      },{
          "type": "cardTemporalSimple",
          "title": "Corrente por fase (A)",
          "updatePeriod": 600,
          "id": "1",
          "aggregationTime": 300,
          "series":[
          	{
                  "name": "Fase A",
                  "variable": "ca",
                  "data": [4, 4.2, 4.1, 4]
              },{
                  "name": "Fase B",
                  "variable": "cb",
                  "data": [3, 3.2, 3.1, 3]
              },{
                  "name": "Fase C",
                  "variable": "cc",
                  "data": [2, 2.2, 2.1, 2]
              }
      	]
      },{
          "type": "cardTemporalSimple",
          "title": "Potência aparente trifásica (KVA) - Média 5 minutos",
          "id": "2",
          "updatePeriod": 600,
          "aggregationTime": 300,
          "series":[
          	{
                  "name": "Potência aparente trifásica",
                  "variable": "st",
                  "data": [75, 60, 40, 45]
              }
      	]
      },{
          "type": "cardTemporalSimple",
          "title": "Potência aparente trifásica (KVA) - Média 15 minutos",
          "id": "3",
          "updatePeriod": 600,
          "aggregationTime": 900,
          "series":[
              {
                  "name": "Potência aparente trifásica",
                  "variable": "st",
                  "data": [60, 65, 45, 40]
              }
      	]
      },{
          "type": "cardTemporalSimple",
          "title": "Potência aparente por fase (kVA)",
          "id": "4",
          "updatePeriod": 600,
          "aggregationTime": 300,
          "series":[
          	{
                  "name": "Fase A",
                  "variable": "ta",
                  "data": [30, 25, 25, 35]
              },{
                  "name": "Fase B",
                  "variable": "tb",
                  "data": [25, 20, 20, 30]
              },{
                  "name": "Fase C",
                  "variable": "tc",
                  "data": [20, 15, 15, 25]
              }
      	]
      },{
          "type": "cardTemporalSimple",
          "title": "Fator de potência - Alta tensão",
          "id": "5",
          "updatePeriod": 600,
          "aggregationTime": 300,
          "series":[
          	{
                  "name": "Fator de potência",
                  "variable": "fp",
                  "data": [0.95, 0.96, 0.94, 0.92]
              }
      	]
      }]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .divGrafico {
    position: relative;
    width: 45%;
    height: 400px;
    overflow: hidden;
    border-radius: 10px;
    float: left;
    margin: 2%;
    box-shadow: 0 1px 10px 0 rgba(0,0,0,1);
    background-color: white;
  }

  @media (max-width: 1024px) {
    .divGrafico {
      width: 90%;
    }
  }
</style>
