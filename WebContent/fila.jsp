<%@include file="head.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="sidebar-wrapper" class="col-md-2 menuLateral"
	style="margin: 0; padding: 0; min-height: 613px; margin-top: -20px;">
	<ul class="sidebar-nav" style="list-style-type: none;">
		<li><s:form action="dashboard" method="post">
				<input name="senhaPreferencial" value="${senhaPreferencial}"
					type="hidden">
				<input name="senhaNormal" value="${senhaNormal}" type="hidden">
				<input name="totalAtendido" value="${totalAtendido}" type="hidden">
				<input name="totalFila" value="${totalFila}" type="hidden">
				<i class="fa fa-tachometer" style="color: white;" aria-hidden="true"><input
					type="submit" value="Dashboard"
					style="background-color: transparent; border-color: transparent; color: white;"></i>&nbsp;</s:form>
		</li>
		<li><s:form action="clienteLista" method="post">
				<i class="fa fa-user" style="color: white;" aria-hidden="true"><input
					type="submit" value="Cliente"
					style="background-color: transparent; border-color: transparent; color: white;"></i>&nbsp;</s:form></li>
		<li><s:form action="fila" method="post">
				<i class="fa fa-users" style="color: white;" aria-hidden="true"><input
					type="submit" value="Fila"
					style="background-color: transparent; border-color: transparent; color: white;"></i>&nbsp;</s:form></li>
		<li><s:form action="pesquisarCliente" method="post">
				<i class="fa fa-search" style="color: white;" aria-hidden="true"><input
					type="submit" value="Relatório"
					style="background-color: transparent; border-color: transparent; color: white;"></i>&nbsp;</s:form></li>
	</ul>
</div>

<div id="conteudo" class="col-md-10">

	
  <s:form action="excluirCliente" method="post">
	<div class="col-md-2">
		<input type="text" name="nome" class="form-control" placeholder="Informe a senha">
	</div>
	<div class="col-md-6">
		<input type="submit" style="font-weight: bold;"
			value="Excluir da fila"
			class="btn btn-danger submit" />
	</div>
	</s:form>
	<div class="col-md-4">
	   <s:form action="atender" method="post">
		<input style="font-weight: bold;" type="submit"
			value="Atender próximo da fila"
			class="btn btn-warning pull-right submit" />
		</s:form>
	</div>
	
	<table id="ordenar" class="table table-hover">
		<thead>
			<tr>
				<th>Ordem</th>
				<th>Nome</th>
				<th>Senha</th>
				<th>Tipo</th>
				<th>Status</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="x" varStatus="loop">
				<tr>
					<td>${loop.index+1}</td>
					<td>${x[0]}</td>
					<td>${x[2]}</td>
					<td>${x[4]}</td>
					<td>${x[3]}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</div>
<!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- MODAIS -->
<!-- ####################################### ADICIONAR CLIENTE ######################################## -->
<div class="modal fade ola" id="addCliente" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Adicionar Cliente</h4>
			</div>
			<s:form name="formAddCliente">
				<div class="modal-body">


					<div class="input-group col-md-offset-4">
						<input type="text" class="form-control" name="cpfP" id="cpfP"
							placeholder="Informe o CPF" /> <span class="input-group-btn"
							style="width: 50%">
							<button class="btn btn-default" type="button"
								onclick="mostrarDiv()">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
					<!-- /input-group -->
					<div class="mostrarDiv" style="display: none;">
						<div class="">
							<label>Nome:</label> <span>Anacláudia</span>
						</div>
						<div class="">
							<label>CPF:</label> <span>848.848.848-34</span>
						</div>
						<div class="">
							<label>RG:</label> <span>9583909</span>
						</div>
						<div class="">
							<label>Endereço:</label> <span>Brasília-DF - Sobradinho -
								CEP: 73005-101</span>
						</div>
					</div>
					<hr>
					<label>Preferencial?</label> <br /> <label class="radio-inline">
						<input type="radio" name="sePreferenciaP" id="sim" value="sim">
						Sim
					</label> <label class="radio-inline"> <input type="radio"
						name="sePreferenciaP" id="nao" value="nao"> Não
					</label>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<b>Cancelar</b>
					</button>
					<button type="button" class="btn btn-primary"
						onclick="validacaoAddCliente()">
						<b>Adicionar</b>
					</button>
				</div>
			</s:form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->






<script type="text/javascript">
	function carregar(pagina) {
		$("#conteudo").load(pagina);
	}

	function listar() {
		$('#ordenar tr td:first-child').html(function(index) {
			return index + 1;
		});
	}

	/*############ VALIDAR FORM ADICIONAR CLIENTE A FILA #########################*/
	function validacaoAddCliente() {
		var cpf = $("#cpfP").val();

		if (cpf == '') {
			swal('', 'Preencha o CPF!', 'warning');
		} else if (document.formAddCliente.sePreferenciaP[0].checked == false
				&& document.formAddCliente.sePreferenciaP[1].checked == false) {
			swal('', 'Preencha o tipo de senha a ser gerada!', 'warning');

		} else if (!validarCPF(cpf)) {
			swal('', 'Número de CPF inválido!', 'error');
		}
	}
</script>

<!-- Menu Toggle Script -->



<%@include file="footer.jsp"%>