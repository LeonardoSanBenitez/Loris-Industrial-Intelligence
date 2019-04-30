<template>
  <div>
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>

    <!-- Content Row -->
    <div class="row">

      <!-- Card -->
      <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-md font-weight-bold text-primary mb-1">Ecomomized (this Year)</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800">$489,00</div>
              </div>
              <div class="col-auto">
                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card -->
      <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-md font-weight-bold text-info mb-1">Management Goals</div>
                <div class="row no-gutters align-items-center">
                  <div class="col-auto">
                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">56%</div>
                  </div>
                  <div class="col">
                    <div class="progress progress-sm mr-2">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 56%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-auto">
                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card -->
      <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-md font-weight-bold text-success mb-1">Next ISO audit</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800">29/10/2019</div>
              </div>
              <div class="col-auto">
                <i class="fas fa-calendar fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card -->
      <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-warning shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-md font-weight-bold text-warning mb-1">Production Alerts</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
              </div>
              <div class="col-auto">
                <i class="fas fa-comments fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Content Row -->

    <div class="row">

      <!-- Area Chart -->
      <div class="col-xl-8 col-lg-7">
        <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Energy vs. Production</h6>
            <div class="dropdown no-arrow">
              <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                <div class="dropdown-header">Advanced</div>
                <a class="dropdown-item" href="#">Details</a>
                <a class="dropdown-item" href="#">Other indicators</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">How to improve</a>
              </div>
            </div>
          </div>
          <!-- Card Body -->
          <div class="card-body">
            <div class="chart-area">
              <component v-bind:cardConfig="productionConfig" v-bind:is="productionConfig.type"/>
            </div>
          </div>
        </div>
      </div>

      <!-- Pie Chart -->
      <div class="col-xl-4 col-lg-5">
        <div class="card shadow mb-4" style="height: 492.2px">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Consuption sources</h6>
            <div class="dropdown no-arrow">
              <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                <div class="dropdown-header">Advanced</div>
                <a class="dropdown-item" href="#">Details</a>
                <a class="dropdown-item" href="#">Other sources</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Take an action!</a>
              </div>
            </div>
          </div>
          <!-- Card Body -->
          <div class="card-body">
            <div class="chart-pie pt-4 pb-2">
              <component v-bind:cardConfig="pieConfig" v-bind:is="pieConfig.type"/>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Content Row -->
    <div class="row">

      <!-- Content Column -->
      <div class="col-lg-12 mb-4">

        <!-- Project Card Example -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Key Performance Indicators</h6>
          </div>
          <div class="card-body">
            <h4 class="small font-weight-bold"> Total production <span class="float-right">20 ton</span></h4>
            <div class="progress mb-4">
              <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <h4 class="small font-weight-bold">Eficiency target <span class="float-right">80%</span></h4>
            <div class="progress mb-4">
              <div class="progress-bar bg-warning" role="progressbar" style="width: 80%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <h4 class="small font-weight-bold">Energy per built area <span class="float-right">3 kW.h/m2</span></h4>
            <div class="progress mb-4">
              <div class="progress-bar" role="progressbar" style="width: 65%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <h4 class="small font-weight-bold">Grinder time of working <span class="float-right">12hs</span></h4>
            <div class="progress mb-4">
              <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <h4 class="small font-weight-bold"> Mean power by grinder<span class="float-right">380kW</span></h4>
            <div class="progress">
              <div class="progress-bar bg-success" role="progressbar" style="width: 90%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>


      </div>

      <div class="col-lg-6 mb-4">





      </div>
    </div>

  </div>
</template>

<script>
export default {
  name: 'dashboard',
  data () {
    return {
      msg: 'Welcome to Your dashboard',
      productionConfig: {
          "type": "cardTemporalSimple",
          "title": "Production vs Energy",
          "id": "6",
          "updatePeriod": 600,
          "aggregationTime": 300,
          "series":[
            {
                  "name": "Grinder 1",
                  "variable": "effG1",
                  "data": [222, 230, 225, 230]
              },{
                  "name": "Grinder 2",
                  "variable": "effG2",
                  "data": [212, 220, 210, 215]
              },{
                  "name": "Copper Oven",
                  "variable": "effG3",
                  "data": [202, 225, 205, 200]
              }
        ]
      },
      pieConfig: {
          "type": "cardPie",
          "title": "",
          "id": "7",
          "updatePeriod": 600,
          "series":[{
              minPointSize: 0,
              innerSize: '20%',
              zMin: 0,
              name: 'name',
              data: [{
                  name: 'Grinder',
                  y: 120,
                  z: 0.6
              }, {
                  name: 'Conveyour',
                  y: 60,
                  z: 0.85
              }, {
                  name: 'Ilumination',
                  y: 35.4,
                  z: 0.4
              }]
          }]
      }
    }
  }
}
</script>

<style scoped>
  .card .card-header .dropdown {
    line-height: 1;
  }

  .card .card-header .dropdown .dropdown-menu {
    line-height: 1.5;
  }

  .card .card-header[data-toggle="collapse"] {
    text-decoration: none;
    position: relative;
    padding: 0.75rem 3.25rem 0.75rem 1.25rem;
  }

  .card .card-header[data-toggle="collapse"]::after {
    position: absolute;
    right: 0;
    top: 0;
    padding-right: 1.725rem;
    line-height: 51px;
    font-weight: 900;
    content: '\f107';
    font-family: 'Font Awesome 5 Free';
    color: #d1d3e2;
  }

  .card .card-header[data-toggle="collapse"].collapsed {
    border-radius: 0.35rem;
  }

  .card .card-header[data-toggle="collapse"].collapsed::after {
    content: '\f105';
  }

  .chart-area {
    position: relative;
    height: 400px;
    width: 100%;
  }


  .chart-bar {
    position: relative;
    height: 400px;
    width: 100%;
  }


  .chart-pie {
    position: relative;
    height: 400px;
    width: 100%;
    margin-top:-30px
  }

</style>
