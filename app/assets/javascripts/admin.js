// require global-admin/jquery.min
// require global-admin/jquery-migrate.min

//= require jquery
//= require jquery_ujs
//= require global-admin/jquery-ui/jquery-ui.min

//= require bootstrap-sprockets

//= require global-admin/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min

//= require global-admin/jquery-slimscroll/jquery.slimscroll.min
//= require global-admin/jquery.blockui.min
//= require global-admin/jquery.cokie.min
//= require global-admin/uniform/jquery.uniform.min
//= require global-admin/bootstrap-switch/js/bootstrap-switch.min

//= require global-admin/bootstrap-fileinput/bootstrap-fileinput
//= require global-admin/jquery.sparkline.min

//= require global-admin/metronic
//= require layout-scripts/layout
//= require layout-scripts/demo
//= require global-admin/pages-scripts/profile

jQuery(document).ready(function() {
   // initiate layout and plugins
  Metronic.init(); // init metronic core components
  Layout.init(); // init current layout
  Demo.init(); // init demo features\
  Profile.init(); // init page demo
});
