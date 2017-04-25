
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/sweetalert2/6.6.0/sweetalert2.min.js" integrity="sha256-TraduQs3TLZwdHEKEo7dHxTj/oVbSfId809HWfZ64YQ=" crossorigin="anonymous"></script>

<script src="https://use.fontawesome.com/5c6f470c09.js"></script>

<script>


jQuery("#cpf").mask("999.999.999-99");
jQuery("#cpfE").mask("999.999.999-99");
jQuery("#cpfU").mask("999.999.999-99");
jQuery("#cpfD").mask("999.999.999-99");
jQuery("#cpfP").mask("999.999.999-99");

function mostrarDiv(){
	$(".mostrarDiv").css("display", "block")
}

$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});

/*####### CONFIRMAR EXCLUIR CLIENTE ########*/
$(document).ready(function(){
	$('body').on('click','a.removeCliente', function(){
		swal({
			  title: '',
			  text: "Você deseja realmente deletar esse cliente?",
			  type: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Sim, deletar!',
			  cancelButtonText: 'Não, cancelar!',
			  confirmButtonClass: 'btn btn-success',
			  cancelButtonClass: 'btn btn-danger',
			  buttonsStyling: true
			}).then(function () {
			  swal(
			    'Deletado!',
			    'Cliente deletado com sucesso!',
			    'success'
			  )
			}, function (dismiss) {
			  // dismiss can be 'cancel', 'overlay',
			  // 'close', and 'timer'
			  if (dismiss === 'cancel') {
			    swal(
			      'Cancelado',
			      '',
			      'error'
			    )
			  }
			})
	});
});

/*####### CONFIRMAR ATENDER CLIENTE ########*/
$(document).ready(function () {
	$('body').on('click','.certeza',function () { 
		swal({
			  title: '',
			  text: "Você deseja atender esse cliente?",
			  type: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Sim, atender!',
			  cancelButtonText: 'Não, cancelar!',
			  confirmButtonClass: 'btn btn-success',
			  cancelButtonClass: 'btn btn-danger',
			  buttonsStyling: true
			}).then(function () {
			  swal(
			    'Ok!',
			    'Cliente removido da fila com sucesso!',
			    'success'
			  )
			}, function (dismiss) {
			  // dismiss can be 'cancel', 'overlay',
			  // 'close', and 'timer'
			  if (dismiss === 'cancel') {
			    swal(
			      'Cancelado',
			      '',
			      'error'
			    )
			  }
			})
	  });
});

/*####### CONFIRMAR REMOVER CLIENTE AUSENTE CLIENTE ########*/
$(document).ready(function () {
	$('body').on('click','.ausente',function () { 
		swal({
			  title: '',
			  text: "Você deseja realmente remover esse cliente da fila?",
			  type: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Sim, remover!',
			  cancelButtonText: 'Não, cancelar!',
			  confirmButtonClass: 'btn btn-success',
			  cancelButtonClass: 'btn btn-danger',
			  buttonsStyling: true
			}).then(function () {
			  swal(
			    'Ok!',
			    'Cliente removido da fila com sucesso!',
			    'success'
			  )
			}, function (dismiss) {
			  // dismiss can be 'cancel', 'overlay',
			  // 'close', and 'timer'
			  if (dismiss === 'cancel') {
			    swal(
			      'Cancelado',
			      '',
			      'error'
			    )
			  }
			})
	  });
});


/*######################### VALIDAR CPF ##################################*/
 
function validarCPF(cpf) {  
	    cpf = cpf.replace(/[^\d]+/g,'');    
	    if(cpf == '') return false; 
	    // Elimina CPFs invalidos conhecidos    
	    if (cpf.length != 11 || 
	        cpf == "00000000000" || 
	        cpf == "11111111111" || 
	        cpf == "22222222222" || 
	        cpf == "33333333333" || 
	        cpf == "44444444444" || 
	        cpf == "55555555555" || 
	        cpf == "66666666666" || 
	        cpf == "77777777777" || 
	        cpf == "88888888888" || 
	        cpf == "99999999999")
	            return false;       
	    // Valida 1o digito 
	    add = 0;    
	    for (i=0; i < 9; i ++)       
	        add += parseInt(cpf.charAt(i)) * (10 - i);  
	        rev = 11 - (add % 11);  
	        if (rev == 10 || rev == 11)     
	            rev = 0;    
	        if (rev != parseInt(cpf.charAt(9)))     
	            return false;       
	    // Valida 2o digito 
	    add = 0;    
	    for (i = 0; i < 10; i ++)        
	        add += parseInt(cpf.charAt(i)) * (11 - i);  
	    rev = 11 - (add % 11);  
	    if (rev == 10 || rev == 11) 
	        rev = 0;    
	    if (rev != parseInt(cpf.charAt(10)))
	        return false;       
	    return true;   
	}
</script>

</body>
</html>