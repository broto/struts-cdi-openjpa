<%@include file="head.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<s:form action="pdf" method="post">
		<div class="pesquisa col-md-2">
			<div class="col-md-3">
				<div class="form-group">
					<button type="submit" class=" btn btn-success" id="btn">
						<b>Gerar PDF</b>
					</button>
				</div>
			</div>
			<div class="col-md-1" style="text-align: center;">
				<label style="margin-top: 65%;"></label>
			</div>

		</div>
	</s:form>
	<s:form action="pesquisarCliente" method="post">
		<div class="pesquisa col-md-12">
			<div class="col-md-4">
				<div class="form-group">
					<label for="nomeB">Informe o Nome, CPF, Senha ou Tipo de
						Senha</label> <input type="text" class="form-control" id="nomeB"
						name="nome">
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label for="senha" style="color: #fff;">pesquisar</label><br />
					<button type="submit" class=" btn btn-primary" id="btn"
						onclick="pesquisar()">
						<b>Pesquisar</b>
					</button>
				</div>
			</div>
			<div class="col-md-1" style="text-align: center;">
				<label style="margin-top: 65%;"></label>
			</div>

		</div>
	</s:form>
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

<script type="text/javascript">
	function carregar(pagina) {
		$("#conteudo").load(pagina);
	}
</script>

<!-- Menu Toggle Script -->
<script>
	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
	});

	function pesquisar() {
		var nome = $("#nomeB").val();
		var senha = $("#senhaB").val();

		if (nome == '' && senha == '') {
			swal('', 'Preencha o nome ou a senha!', 'warning');
		}
	}
</script>

<%@include file="footer.jsp"%>