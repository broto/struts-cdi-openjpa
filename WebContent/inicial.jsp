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
	<div class="right_col" role="main">

		<div class="">
			<div class="row top_tiles">
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-bars"></i>
						</div>
						<div class="count">${totalFila}</div>
						<h3>Total na Fila</h3>
						<p>Clientes a serem atendidos.</p>
					</div>
				</div>
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-wheelchair"></i>
						</div>
						<div class="count">${senhaPreferencial}P</div>
						<h3>Senha Atual</h3>
						<p>Última senha chamada preferêncial.</p>
					</div>
				</div>
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-long-arrow-up"></i>
						</div>
						<div class="count">${senhaNormal}N</div>
						<h3>Senha Atual</h3>
						<p>Última senha chamada normal.</p>
					</div>
				</div>
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-check-square-o"></i>
						</div>
						<div class="count">${totalAtendido}</div>
						<h3>Total Atendimento</h3>
						<p>Total de clientes atendidos hoje.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br /> <br />
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
</script>


<%@include file="footer.jsp"%>
