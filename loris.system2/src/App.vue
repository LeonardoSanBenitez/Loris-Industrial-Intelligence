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
        <li class="nav-item">
          <router-link :to="{name: 'dashboard'}" class="nav-link"><i class="fas fa-fw fa-tachometer-alt"></i><span>Dashboard</span></router-link>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
          <router-link :to="{name: 'monitoring'}" class="nav-link"><i class="fas fa-fw fa-chart-line"></i><span>Monitoring</span></router-link>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
          <router-link :to="{name: 'help'}" class="nav-link"><i class="fas fa-fw fa-question-circle"></i><span>Help</span></router-link>
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
        <div id="content">

          <!-- Topbar -->
          <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>

            <!-- Topbar Search -->
            <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
              <div class="input-group">
                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary" type="button">
                    <i class="fas fa-search fa-sm"></i>
                  </button>
                </div>
              </div>
            </form>

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">

              <!-- Nav Item - Search Dropdown (Visible Only XS) -->
              <li class="nav-item dropdown no-arrow d-sm-none">
                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-search fa-fw"></i>
                </a>
                <!-- Dropdown - Messages -->
                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                  <form class="form-inline mr-auto w-100 navbar-search">
                    <div class="input-group">
                      <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                      <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                          <i class="fas fa-search fa-sm"></i>
                        </button>
                      </div>
                    </div>
                  </form>
                </div>
              </li>


              <div class="topbar-divider d-none d-sm-block"></div>

              <!-- Nav Item - User Information -->
              <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="mr-2 d-none d-lg-inline text-gray-600 small">Empresa S.A</span>
                  <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                </a>
                <!-- Dropdown - User Information -->
                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                  <a class="dropdown-item" href="#">
                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                    Profile
                  </a>
                  <a class="dropdown-item" href="#">
                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                    Settings
                  </a>
                  <a class="dropdown-item" href="#">
                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                    Activity Log
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    Logout
                  </a>
                </div>
              </li>

            </ul>

          </nav>
          <!-- End of Topbar -->

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <router-view/>
          </div>
          <!-- /.container-fluid -->

        </div>
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
</style>
