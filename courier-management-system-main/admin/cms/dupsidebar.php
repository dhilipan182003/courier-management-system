  <aside class="main-sidebar sidebar-dark-warning elevation-4" style="background-color: #900C3F">
    <div class="dropdown" style="background-color: #900C3F">
   	<a href="" class="brand-link" style="background-color: #900C3F">
      <?php
      $login_type=1;
         if($login_type == 1): ?>
        <h3 class="text-center p-0 m-0"><b>USER</b></h3>
        <?php else: ?>
        <h3 class="text-center p-0 m-0"><b>USER</b></h3>
        <?php endif; ?>

    </a>
      
    </div>
    <div class="sidebar pb-4 mb-4" style="background-color: #900C3F">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-flat" data-widget="treeview" role="menu" data-accordion="false">
          
           <li class="nav-item dropdown">
            <a href="./dup.php?page=track" class="nav-link nav-track">
              <i class="nav-icon fas fa-search"></i>
              <p>
                Track Parcel
              </p>
            </a>
          </li>  
           
      </nav>
    </div>
  </aside>
  