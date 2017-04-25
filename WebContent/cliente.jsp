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
	<button class="btn btn-primary" data-toggle="modal"
		data-target="#cadastroCliente">
		<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;<b>Novo Cliente</b>
	</button>

	<table class="table table-hover">
		<thead>
			<tr>
				<th>Nome</th>
				<th>CPF</th>
				<th>Senha</th>
				<th>Tipo da senha</th>
				<th>Status</th>
				<th>Endereço</th>
				<th>Cidade</th>
				<th>UF</th>
				<th>CEP</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="x">
				<tr>
					<td>${x[0]}</td>
					<td>${x[1]}</td>
					<td>${x[2]}</td>
					<td>${x[4]}</td>
					<td>${x[3]}</td>
					<td>${x[5]}</td>
					<td>${x[6]}</td>
					<td>${x[7]}</td>
					<td>${x[8]}</td>
				</tr>
			</c:forEach>

		</tbody>

	</table>
</div>


</div>


<!-- MODAIS -->
<!-- ####################################### CADASTRO CLIENTE ######################################## -->
<div class="modal fade" id="cadastroCliente" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Cadastrar Cliente</h4>
			</div>
			<s:form action="clienteCadastro" name="formCadastroCliente">
				<div class="modal-body">

					<div class="form-group col-md-12">
						<label for="nome">Nome <span class="obrigatorio">*</span></label>
						<input type="text" class="form-control" id="nome" name="nome">
					</div>
					<div class="form-group col-md-6">
						<label for="cpf">CPF <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="cpf" name="cpf">
					</div>
					<div class="form-group col-md-6">
						<label for="rg">RG <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="rg" name="rg">
					</div>
					<hr />
					<div class="form-group col-md-6">
						<label for="cep">CEP <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="cep" name="cep">
					</div>
					<div class="form-group col-md-6">
						<label for="uf">UF <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="uf" name="uf">
					</div>
					<div class="form-group col-md-12">
						<label for="rua">Rua <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="rua" name="bairro">
					</div>
					<div class="form-group col-md-6">
						<label for="cidade">Cidade <span class="obrigatorio">*</span></label>
						<input type="text" class="form-control" id="cidade" name="cidade">
					</div>
					<div class="form-group col-md-6">
						<label for="bairro">Bairro <span class="obrigatorio">*</span></label>
						<input type="text" class="form-control" id="bairro" name="bairro">
					</div>

					<br />
					<div class="form-group" style="margin-left: 4%">
						<label>Preferencial? <span class="obrigatorio">*</span></label> <br />
						<label class="radio-inline"> <input type="radio"
							class="sePreferencia" name="tipoSenha" id="sim"
							value="PREFERENCIAL"> Sim
						</label> <label class="radio-inline"> <input type="radio"
							class="sePreferencia" name="tipoSenha" id="nao" value="NORMAL">
							Não
						</label>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<b>Cancelar</b>
					</button>
					<button type="submit" class="btn btn-primary"
						onclick="validacaoCadastroCliente();">
						<b>Cadastrar</b>
					</button>
				</div>
				<input name="senhaPreferencial" value="${senhaPreferencial}"
					type="hidden">
				<input name="senhaNormal" value="${senhaNormal}" type="hidden">
				<input name="totalAtendido" value="${totalAtendido}" type="hidden">
				<input name="totalFila" value="${totalFila}" type="hidden">
			</s:form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- ####################################### EDITAR CLIENTE ######################################## -->
<div class="modal fade" id="editarCliente" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Editar Cliente</h4>
			</div>
			<s:form name="formEditarCliente">
				<div class="modal-body">

					<div class="form-group col-md-12">
						<label for="nome">Nome <span class="obrigatorio">*</span></label>
						<input type="text" class="form-control" id="nomeE" name="nomeE">
					</div>
					<div class="form-group col-md-6">
						<label for="cpf">CPF <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="cpfE" name="cpfE">
					</div>
					<div class="form-group col-md-6">
						<label for="rg">RG <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="rgE" name="rgE">
					</div>
					<hr />
					<div class="form-group col-md-6">
						<label for="cep">CEP <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="cepE" name="cepE">
					</div>
					<div class="form-group col-md-6">
						<label for="uf">UF <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="ufE" name="ufE">
					</div>
					<div class="form-group col-md-12">
						<label for="rua">Rua <span class="obrigatorio">*</span></label> <input
							type="text" class="form-control" id="rua" name="bairro">
					</div>
					<div class="form-group col-md-6">
						<label for="cidade">Cidade <span class="obrigatorio">*</span></label>
						<input type="text" class="form-control" id="cidadeE"
							name="cidadeE">
					</div>
					<div class="form-group col-md-6">
						<label for="bairro">Bairro <span class="obrigatorio">*</span></label>
						<input type="text" class="form-control" id="bairroE"
							name="bairroE">
					</div>
					<br />
					<div class="form-group" style="margin-left: 4%">
						<label>Preferencial? <span class="obrigatorio">*</span></label> <br />
						<label class="radio-inline"> <input type="radio"
							name="sePreferenciaE" id="simE" value="sim"> Sim
						</label> <label class="radio-inline"> <input type="radio"
							name="sePreferenciaE" id="naoE" value="nao"> Não
						</label>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<b>Cancelar</b>
					</button>
					<button type="submit" class="btn btn-primary"
						onclick="validacaoEditarCliente()">
						<b>Salvar</b>
					</button>
				</div>
			</s:form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<!-- Menu Toggle Script -->
<script>
	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
	});
</script>

<script type="text/javascript">
	/*####################  CONSULTA CEP CLIENTE ###########################*/
	$(document).ready(
			function() {

				function limpa_formulario_cep() {
					// Limpa valores do formulário de cep.
					$("#rua").val("");
					$("#bairro").val("");
					$("#cidade").val("");
					$("#uf").val("");

				}

				//Quando o campo cep perde o foco.
				$("#cep").blur(
						function() {

							//Nova variável "cep" somente com dígitos.
							var cep = $(this).val().replace(/\D/g, '');

							//Verifica se campo cep possui valor informado.
							if (cep != "") {

								//Expressão regular para validar o CEP.
								var validacep = /^[0-9]{8}$/;

								//Valida o formato do CEP.
								if (validacep.test(cep)) {

									//Preenche os campos com "..." enquanto consulta webservice.
									$("#rua").val("...");
									$("#bairro").val("...");
									$("#cidade").val("...");
									$("#uf").val("...");

									//Consulta o webservice viacep.com.br/
									$.getJSON("//viacep.com.br/ws/" + cep
											+ "/json/?callback=?", function(
											dados) {

										if (!("erro" in dados)) {
											//Atualiza os campos com os valores da consulta.
											$("#rua").val(dados.logradouro);
											$("#bairro").val(dados.bairro);
											$("#cidade").val(dados.localidade);
											$("#uf").val(dados.uf);
											$("#ibge").val(dados.ibge);
										} //end if.
										else {
											//CEP pesquisado não foi encontrado.
											limpa_formulario_cep();
											swal('', 'CEP não encontrado!',
													'warning');
										}
									});
								} //end if.
								else {
									//cep é inválido.
									limpa_formulario_cep();
									swal('', 'CEP inválido!', 'error');
								}
							} //end if.
							else {
								//cep sem valor, limpa formulário.
								limpa_formulario_cep();
							}
						});
			});

	/*####################  VALIDAR CAMPOS E CPF CADASTRO CLIENTE ###########################*/
	function validacaoCadastroCliente() {
		var nome = $("#nome").val();
		var cpf = $("#cpf").val();
		var rg = $("#rg").val();
		var cidade = $("#cidade").val();
		var bairro = $("#bairro").val();
		var estado = $("#estado").val();
		var cep = $("#cep").val();
		var rua = $("#rua").val();
		//var prefe = $(".sePreferencia").checked;

		if (nome == '' || cpf == '' || rg == '' || cidade == '' || bairro == ''
				|| estado == '' || cep == '' || rua == '') {

			swal('', 'Preencha todos os campos!', 'warning');

		} else if (document.formCadastroCliente.sePreferencia[0].checked == false
				&& document.formCadastroCliente.sePreferencia[1].checked == false) {
			swal('', 'Preencha o tipo de senha a ser gerada!', 'warning');

		} else if (!validarCPF(cpf)) {
			swal('', 'Número de CPF inválido!', 'error');
		}
	}

	/*####################  VALIDAR CAMPOS E CPF EDITAR CLIENTE ###########################*/
	function validacaoEditarCliente() {
		var nome = $("#nomeE").val();
		var cpf = $("#cpfE").val();
		var rg = $("#rgE").val();
		var cidade = $("#cidadeE").val();
		var bairro = $("#bairroE").val();
		var estado = $("#estadoE").val();
		var cep = $("#cepE").val();
		var rua = $("#ruaE").val();
		//var prefe = $(".sePreferencia").checked;

		if (nome == '' || cpf == '' || rg == '' || cidade == '' || bairro == ''
				|| estado == '' || cep == '' || rua == '') {

			swal('', 'Preencha todos os campos!', 'warning');

		} else if (document.formEditarCliente.sePreferenciaE[0].checked == false
				&& document.formEditarCliente.sePreferenciaE[1].checked == false) {
			swal('', 'Preencha o tipo de senha a ser gerada!', 'warning');

		} else if (!validarCPF(cpf)) {
			swal('', 'Número de CPF inválido!', 'error');
		}
	}
</script>

<%@include file="footer.jsp"%>
