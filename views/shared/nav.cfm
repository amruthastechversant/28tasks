  <cfoutput>
      <!-- Inject application.baseURL into a data attribute (to access in js file)-->
    <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
    <div class="sidebar sidebar-dark sidebar-fixed border-end" id="sidebar">
      <div class="sidebar-header border-bottom">
        <div class="sidebar-brand">
          28 TASKS
        </div>
        <button class="btn-close d-lg-none" type="button" data-coreui-theme="dark" aria-label="Close" onclick="coreui.Sidebar.getInstance(document.querySelector(&quot;##sidebar&quot;)).toggle()"></button>
      </div>
      <ul>
        <li class="nav-item"><a class="nav-link" href="#application.baseURL#?page=users-all">
          <svg class="nav-icon">
            <use xlink:href="assets/coreui/node_modules/@coreui/icons/sprites/free.svg##cil-puzzle"></use>
          </svg> TASK1</a>
        </li>
        <li class="nav-item"><a class="nav-link"  href="#application.baseURL#?page=category-all">
          <svg class="nav-icon">
            <use xlink:href="assets/coreui/node_modules/@coreui/icons/sprites/free.svg##cil-layers"></use>
          </svg> TASK2</a>
        </li>
         
        <li class="nav-item"><a class="nav-link" href="#application.baseURL#?page=tag-all">
          <svg class="nav-icon">
            <use xlink:href="assets/coreui/node_modules/@coreui/icons/sprites/free.svg##cil-cursor"></use>
          </svg> TASK3</a>
        </li>
        <li class="nav-item"><a class="nav-link" href="#application.baseURL#?page=audit-Log">
          <svg class="nav-icon">
            <use xlink:href="assets/coreui/node_modules/@coreui/icons/sprites/free.svg##cil-cursor"></use>
          </svg> TASK4</a>
        </li>
      </ul>
      <div class="sidebar-footer border-top d-none d-md-flex">     
        <button class="sidebar-toggler" type="button" data-coreui-toggle="unfoldable"></button>
      </div>
    </div>
  </cfoutput>