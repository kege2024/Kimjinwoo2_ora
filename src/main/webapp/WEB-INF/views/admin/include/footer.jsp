<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
      <a href="/logout" type="button" class="btn btn-primary btn-lg btn-block">로그아웃</a>
    </div>
  </aside>
  <!-- /.control-sidebar -->
 <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2014-2020 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->



<script>
$(document).ready(function() {
    var current = location.pathname;
    /* alert(current.split("/",3)[2]);  디버그 */
    var current_split = current.split("/",3)[2];
    $('.nav-treeview li a').each(function(){
        var $this = $(this); 
        if(current=="/admin" || current=="/admin/") {
        	
        }else{
        /* if($this.attr('href').includes(current) == true){ */
        	if($this.attr('href').indexOf(current_split) != -1){
            $this.addClass('active');
        }else{
        	$this.removeClass('active');
        }
        } 
    })
 });
</script>
<!-- Bootstrap 4 -->
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/adminlte.min.js"></script>
</body>
</html>