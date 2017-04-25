<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>RowManager - Gerenciamento de filas</title>

<!-- Bootstrap Core CSS -->
<style type="text/css">
<%@include file="/resources/bootstrap/css/bootstrap.css"%></style>
<style type="text/css">
<%@include file="/resources/bootstrap/css/bootstrap.min.css"%>
</style>
<style type="text/css">
<%@include file="/resources/CSS/Style.css"%>
</style>

<script src="https://use.fontawesome.com/5c6f470c09.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.js"
	integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
	crossorigin="anonymous"></script>



<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/sweetalert2/6.6.0/sweetalert2.min.css"
	integrity="sha256-sK2EYrUWlqxDvHZUYB4Zb/24r5HivqhTBm/LUnQsiWQ="
	crossorigin="anonymous">


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>
</head>
<body>
	<style>
.sidebar-nav li {
	margin-left: -40px;
	padding: 15px;
	font-size: 18px;
	
}

.sidebar-nav li a {
	padding-left: 40px;
	font-size: 18px;
	text-decoration: none;
	color: #fff;
}

.sidebar-nav li:hover {
	background: #73879C;
}

.ativado {
	background: #73879C;
}

.obrigatorio {
	font-weight: bold;
	color: red;
}

a {
	text-decoration: none;
	cursor: pointer;
	color: #000;
}
.menuLateral{
	background: #2A3F54;
}
</style>

	<div id="wrapper">
		<nav class="navbar navbar-default navbar-static-top" style="">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#" style="margin-left: 15%;">RowManager</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><i class="fa fa-user"></i>&nbsp;&nbsp;
								<span class="caret"></span></a>
							<ul class="dropdown-menu">

								<li><a href="#" data-toggle="modal"
									data-target="#cadastroUsuario"><i class="fa fa-plus fa-fw"></i>
										Novo Usuário</a></li>
								<li class="divider"></li>
								<li><a href="#" style="text-align: center;"><i
										class="fa fa-power-off"></i>&nbsp;&nbsp;
										 <s:form action="sair" method="post">
											<s:submit type="submit" value="       SAIR"
											 cssStyle="background-color: transparent; border-color: transparent;" />

										</s:form></a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>



		<!-- ####################################### CADASTRO USUARIO ######################################## -->
		<div class="modal fade" id="cadastroUsuario" tabindex="-1"
			role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">Cadastrar Usuário</h4>
					</div>
					<s:form action="login2" method="post">
					<div class="modal-body row">
							<div class="form-group col-md-12">
								<label for="nome">Nome</label>
								<input type="text" class="form-control" id="nomeU" name="nome">
							</div>
							<div class="form-group col-md-6">
								<label for="cpf">CPF </label>
								<input type="text" class="form-control" id="cpfU" name="cpf">
							</div>
							<div class="form-group col-md-6">
								<label for="rg">RG </label> 
								<input type="text" class="form-control" id="rgU" name="rg">
							</div>
							<hr />
							<div class="form-group col-md-6">
								<label for="cep">CEP <span class="obrigatorio">*</span></label>
								<input type="text" class="form-control" id="cepU" name="cep">
							</div>
							<div class="form-group col-md-6">
								<label for="uf">UF <span class="obrigatorio">*</span></label> <input
									type="text" class="form-control" id="ufU" name="uf">
							</div>
							<div class="form-group col-md-6">
								<label for="cidade">Cidade <span class="obrigatorio">*</span></label>
								<input type="text" class="form-control" id="cidadeU" name="cidade">
							</div>
							<div class="form-group col-md-6">
								<label for="bairro">Bairro <span class="obrigatorio">*</span></label>
								<input type="text" class="form-control" id="bairroU"
									name="bairro">
							</div>
							<div class="form-group col-md-6">
								<label for="senha">Senha </label> <input type="password"
									class="form-control" id="senhaU" name="senha">
							</div>
							<div class="form-group col-md-6">
								<label for="confirmarSenha">Confirmar Senha </label> <input
									type="password" class="form-control" id="confirmarSenhaU"
									name="confirmarSenha">
							</div>

					</div>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-default" data-dismiss="modal">
							<b>Cancelar</b>
						</button>
						<button type="submit" class="btn btn-primary"
							onclick="validacaoCadastroUsuario()">
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

		<script>
			/*####################  CONSULTA CEP USUARIO ###########################*/
			$(document)
					.ready(
							function() {

								function limpa_formulario_cep() {
									// Limpa valores do formulário de cep.
									$("#ruaU").val("");
									$("#bairroU").val("");
									$("#cidadeU").val("");
									$("#ufU").val("");

								}

								//Quando o campo cep perde o foco.
								$("#cepU")
										.blur(
												function() {

													//Nova variável "cep" somente com dígitos.
													var cep = $(this).val()
															.replace(/\D/g, '');

													//Verifica se campo cep possui valor informado.
													if (cep != "") {

														//Expressão regular para validar o CEP.
														var validacep = /^[0-9]{8}$/;

														//Valida o formato do CEP.
														if (validacep.test(cep)) {

															//Preenche os campos com "..." enquanto consulta webservice.
															$("#ruaU").val(
																	"...");
															$("#bairroU").val(
																	"...");
															$("#cidadeU").val(
																	"...");
															$("#ufU")
																	.val("...");

															//Consulta o webservice viacep.com.br/
															$
																	.getJSON(
																			"//viacep.com.br/ws/"
																					+ cep
																					+ "/json/?callback=?",
																			function(
																					dados) {

																				if (!("erro" in dados)) {
																					//Atualiza os campos com os valores da consulta.
																					$(
																							"#ruaU")
																							.val(
																									dados.logradouro);
																					$(
																							"#bairroU")
																							.val(
																									dados.bairro);
																					$(
																							"#cidadeU")
																							.val(
																									dados.localidade);
																					$(
																							"#ufU")
																							.val(
																									dados.uf);
																				} //end if.
																				else {
																					//CEP pesquisado não foi encontrado.
																					limpa_formulario_cep();
																					swal(
																							'',
																							'CEP não encontrado!',
																							'warning');
																				}
																			});
														} //end if.
														else {
															//cep é inválido.
															limpa_formulario_cep();
															swal(
																	'',
																	'CEP inválido!',
																	'error');
														}
													} //end if.
													else {
														//cep sem valor, limpa formulário.
														limpa_formulario_cep();
													}
												});
							});

			/*####################  VALIDAR CAMPOS E CPF CADASTRO USUARIO ###########################*/
			function validacaoCadastroUsuario() {
				var nome = $("#nomeU").val();
				var cpf = $("#cpfU").val();
				var rg = $("#rgU").val();
				var cidade = $("#cidadeU").val();
				var bairro = $("#bairroU").val();
				var estado = $("#estadoU").val();
				var cep = $("#cepU").val();
				var rua = $("#ruaU").val();
				var senha = $("#senhaU").val();
				var confirmarSenha = $("#confirmarSenhaU").val();

				if (nome == '' || cpf == '' || rg == '' || cidade == ''
						|| bairro == '' || estado == '' || cep == ''
						|| rua == '' || senha == '' || confirmarSenha == '') {

					swal('', 'Preencha todos os campos!', 'warning');

				} else if (!validarCPF(cpf)) {
					swal('', 'Número de CPF inválido!', 'error');
				} else if (senha != confirmarSenha) {
					swal('', 'As senha não corespondem!', 'warning');
				}
			}

			/*####################  VALIDAR CAMPOS E CPF EDITAR CLIENTE ###########################*/
			function validacaoMeusDados() {
				var nome = $("#nomeD").val();
				var cpf = $("#cpfD").val();
				var rg = $("#rgD").val();
				var cidade = $("#cidadeD").val();
				var bairro = $("#bairroD").val();
				var estado = $("#estadoD").val();
				var cep = $("#cepD").val();
				var rua = $("#ruaD").val();

				if (nome == '' || cpf == '' || rg == '' || cidade == ''
						|| bairro == '' || estado == '' || cep == ''
						|| rua == '') {

					swal('', 'Preencha todos os campos!', 'warning');

				} else if (!validarCPF(cpf)) {
					swal('', 'Número de CPF inválido!', 'error');
				} else if (!validarSenha()) {
					swal('', 'As senha não corespondem!', 'warning');
				}
			}

			/*################## VALIDAÇÃO DA SENHA ##########################*/
			function validarSenha() {
				var senha = $("#senhaD").val();
				var confirmarSenha = $("#confirmarSenhaD").val();
				var novaSenha = $("#novaSenha").val();

				if (novaSenha != '' || confirmarSenha != '') {
					if (novaSenha != confirmarSenha) {
						return false;
					}
				}
				return true;
			}
		
			
		</script>