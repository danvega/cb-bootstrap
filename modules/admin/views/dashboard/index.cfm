<cfoutput>

	<div class="row">
		<div class="span12">
			<h1>Dashboard</h1>
			<hr/>
			<h2>Latest Something</h2>
			<table class="table table-striped">
		        <thead>
					<tr>
						<th>##</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Date Created</th>
					</tr>
		        </thead>
		        <tbody>
		        <cfloop from="1" to="10" index="i">
		        	<tr>
		        		<td>#i#</td>
		        		<td>Dan</td>
		        		<td>Vega</td>
		        		<td>danvega@gmail.com</td>
		        		<td>02/15/2012</td>
		        	</tr>
		        </cfloop>
				</tbody>
			</table>
		</div>
	</div>

</cfoutput>

<script type="text/javascript">
	$(function(){

	});
</script>