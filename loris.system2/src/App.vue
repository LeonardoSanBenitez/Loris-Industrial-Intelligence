<template>
  <div id="app">
    <!-- Page Wrapper -->
    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
          <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
          </div>
          <div class="sidebar-brand-text mx-3">Lóris</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
          <a class="nav-link" href="index.html"><i class="fas fa-fw fa-tachometer-alt"></i><span>Dashboard</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
          <a class="nav-link" href="charts.html"><i class="fas fa-fw fa-chart-line "></i><span>Monitoring</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
          <a class="nav-link" href=""><i class="fas fa-fw fa-question-circle"></i><span>Help</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

      </ul>
      <!-- End of Sidebar -->

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <router-view/>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>&copy; Lóris Industrial Intelligence 2019</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->

      </div>
      <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'app',
  data() {
    return {
      pageConfig: [{
        	"type": "cardTemporalSimple",
        	"title": "Tensão por fase (KV)",
        	"id": "0",
        	"updatePeriod": 600,
        	"aggregationTime": 300,
        	"series": [{
        		"name": "Fase A",
        		"variable": "ta",
        		"data": [222, 230, 225, 230]
        	}, {
        		"name": "Fase B",
        		"variable": "tb",
        		"data": [212, 220, 210, 215]
        	}, {
        		"name": "Fase C",
        		"variable": "tc",
        		"data": [202, 225, 205, 200]
        	}]
        }, {
        	"type": "cardTemporalSimple",
        	"title": "Corrente por fase (A)",
        	"updatePeriod": 600,
        	"id": "1",
        	"aggregationTime": 300,
        	"series": [{
        		"name": "Fase A",
        		"variable": "ca",
        		"data": [4, 4.2, 4.1, 4]
        	}, {
        		"name": "Fase B",
        		"variable": "cb",
        		"data": [3, 3.2, 3.1, 3]
        	}, {
        		"name": "Fase C",
        		"variable": "cc",
        		"data": [2, 2.2, 2.1, 2]
        	}]
        }, {
        	"type": "cardTemporalSimple",
        	"title": "Potência aparente trifásica (KVA) - Média 5 minutos",
        	"id": "2",
        	"updatePeriod": 600,
        	"aggregationTime": 300,
        	"series": [{
        		"name": "Potência aparente trifásica",
        		"variable": "st",
        		"data": [75, 60, 40, 45]
        	}]
        }, {
        	"type": "cardTemporalSimple",
        	"title": "Potência aparente trifásica (KVA) - Média 15 minutos",
        	"id": "3",
        	"updatePeriod": 600,
        	"aggregationTime": 900,
        	"series": [{
        		"name": "Potência aparente trifásica",
        		"variable": "st",
        		"data": [60, 65, 45, 40]
        	}]
        }, {
        	"type": "cardTemporalSimple",
        	"title": "Potência aparente por fase (kVA)",
        	"id": "4",
        	"updatePeriod": 600,
        	"aggregationTime": 300,
        	"series": [{
        		"name": "Fase A",
        		"variable": "ta",
        		"data": [30, 25, 25, 35]
        	}, {
        		"name": "Fase B",
        		"variable": "tb",
        		"data": [25, 20, 20, 30]
        	}, {
        		"name": "Fase C",
        		"variable": "tc",
        		"data": [20, 15, 15, 25]
        	}]
        }, {
        	"type": "cardTemporalSimple",
        	"title": "Fator de potência - Alta tensão",
        	"id": "5",
        	"updatePeriod": 600,
        	"aggregationTime": 300,
        	"series": [{
        		"name": "Fator de potência",
        		"variable": "fp",
        		"data": [0.95, 0.96, 0.94, 0.92]
        	}]
        }]
    }
  }
}
</script>

<style>
  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    float: right;
    width: 82%;
    margin-top: 5%;
  }
</style>
