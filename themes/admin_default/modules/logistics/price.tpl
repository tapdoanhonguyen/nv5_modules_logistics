<!-- BEGIN: main -->
<!-- BEGIN: view -->
<div class="well">
<form action="{NV_BASE_ADMINURL}index.php" method="get">
	<input type="hidden" name="{NV_LANG_VARIABLE}"  value="{NV_LANG_DATA}" />
	<input type="hidden" name="{NV_NAME_VARIABLE}"  value="{MODULE_NAME}" />
	<input type="hidden" name="{NV_OP_VARIABLE}"  value="{OP}" />
	<div class="row">
		<div class="col-xs-24 col-md-6">
			<div class="form-group">
				<input class="form-control" type="text" value="{Q}" name="q" maxlength="255" placeholder="{LANG.search_title}" />
			</div>
		</div>
		<div class="col-sm-12 col-md-4">
			<select class="form-control"  name="id_document">
				<option value="0">{LANG.selected_document}</option>
			<!-- BEGIN: document_s -->
				<option {document.selected_s} value="{document.id}">{document.title}</option>
			<!-- END: document_s -->
			</select>
		</div>
		<div class="col-sm-12 col-md-4">
			<select class="form-control"  name="id_service">
				<option value="0">{LANG.selected_service}</option>
				<!-- BEGIN: service_s -->
					<option {service.selected_s} value="{service.id}">{service.title}</option>
				<!-- END: service_s -->
			</select>
		</div>
		<div class="col-sm-12 col-md-4">
			<select class="form-control"  name="id_zone">
				<option value="0">{LANG.selected_zone}</option>
				<!-- BEGIN: zone_s -->
					<option {zone.selected_s} value="{zone.id}">{zone.title}</option>
				<!-- END: zone_s -->
			</select>
		</div>
		<div class="col-xs-12 col-md-3">
			<div class="form-group">
				<input class="btn btn-primary" type="submit" value="{LANG.search_submit}" />
			</div>
		</div>
	</div>
</form>
</div>
<form action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post">
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th class="w100">{LANG.weight}</th>
					<th>{LANG.id_document}</th>
					<th>{LANG.id_service}</th>
					<th>{LANG.id_zone}</th>
					<th class="w100 text-center">{LANG.active}</th>
					<th class="w150">&nbsp;</th>
				</tr>
			</thead>
			<!-- BEGIN: generate_page -->
			<tfoot>
				<tr>
					<td class="text-center" colspan="8">{NV_GENERATE_PAGE}</td>
				</tr>
			</tfoot>
			<!-- END: generate_page -->
			<tbody>
				<!-- BEGIN: loop -->
				<tr>
					<td>
						{stt}
				</td>
					<td> {VIEW.id_document} </td>
					<td> {VIEW.id_service} </td>
					<td> {VIEW.id_zone} </td>
					<td class="text-center"><input type="checkbox" name="active" id="change_status_{VIEW.id}" value="{VIEW.id}" {CHECK} onclick="nv_change_status({VIEW.id});" /></td>
					<td class="text-center"><i class="fa fa-edit fa-lg">&nbsp;</i> <a href="{VIEW.link_edit}#edit">{LANG.edit}</a> - <em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="{VIEW.link_delete}" onclick="return confirm(nv_is_del_confirm[0]);">{LANG.delete}</a></td>
				</tr>
				<!-- END: loop -->
			</tbody>
		</table>
	</div>
</form>
<!-- END: view -->

<!-- BEGIN: error -->
<div class="alert alert-warning">{ERROR}</div>
<!-- END: error -->
<div class="panel panel-default">
<div class="panel-body">
<form class="form-horizontal" action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post">
	<input type="hidden" name="id" value="{ROW.id}" />
	<div class="form-group">
		<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.price}</strong> <span class="red">(*)</span></label>
		<div class="col-sm-19 col-md-20 list_price">
		<div class="row">
	<div class="col-xs-12 col-sm-7 col-md-5">
					Tr???ng l?????ng: 0 gram - 500g <br/>
				</div>
				<div class="col-xs-12 col-sm-7 col-md-5">
						C?????c ph??: 25.000??
				</div>
				
		</div>
		<!-- BEGIN: price_add -->
			<div class="row"style="margin-bottom:10px;">
				<div class="col-xs-12 col-sm-7 col-md-5">
					<input class="form-control" type="text" name="quantity[]" value="{price.quantity}" required="required" placeholder="{LANG.quantity}" />
				</div>
				<div class="col-xs-12 col-sm-7 col-md-5">
					<input class="form-control" type="text" name="price[]" value="{price.price}" required="required" placeholder="{LANG.price}"/>
				</div>
			</div>
		<!-- END: price_add -->
		<!-- BEGIN: price -->
			<div class="row"style="margin-bottom:10px;">
				<div class="col-xs-12 col-sm-7 col-md-5">
					<input class="form-control" type="text" name="quantity[]" value="{price.quantity}" required="required" placeholder="{LANG.quantity}" />
				</div>
				<div class="col-xs-12 col-sm-7 col-md-5">
					<input class="form-control" type="text" name="price[]" value="{price.price}" required="required" placeholder="{LANG.price}"/>
				</div>
				<span class="delete_price" onclick="delete_price(this);">{LANG.delete}</span>
			</div>
		<!-- END: price -->
			
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-5 col-md-4 control-label"></label>
		<div class="col-sm-19 col-md-20">
			<div class="row text-left">
				<a class="add_price btn btn-primary">{LANG.add_price}</a>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.id_document}</strong> <span class="red">(*)</span></label>
		<div class="col-sm-19 col-md-20">
			<select class="form-control"  name="id_document">
				<option value="0"></option>
			<!-- BEGIN: document -->
				<option {document.selected} value="{document.id}">{document.title}</option>
			<!-- END: document -->
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.id_service}</strong> <span class="red">(*)</span></label>
		<div class="col-sm-19 col-md-20">
			<select class="form-control"  name="id_service">
				<option value="0"></option>
				<!-- BEGIN: service -->
					<option {service.selected} value="{service.id}">{service.title}</option>
				<!-- END: service -->
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.id_zone}</strong> <span class="red">(*)</span></label>
		<div class="col-sm-19 col-md-20">
			<select class="form-control"  name="id_zone">
				<option value="0"></option>
				<!-- BEGIN: zone -->
					<option {zone.selected} value="{zone.id}">{zone.title}</option>
				<!-- END: zone -->
			</select>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.note}</strong></label>
		<div class="col-sm-19 col-md-20">
			<input class="form-control" type="text" name="note" value="{ROW.note}" />
		</div>
	</div>
	<div class="form-group" style="text-align: center"><input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" /></div>
</form>
</div></div>

<script type="text/javascript">

	$('.add_price').click(function(){
		var html = '<div class="row"style="margin-bottom:10px;"><div class="col-xs-12 col-sm-7 col-md-5"><input class="form-control" type="text" name="quantity[]" value="" required="required" placeholder="{LANG.quantity}"></div><div class="col-xs-12 col-sm-7 col-md-5"><input class="form-control" type="text" name="price[]" value="" required="required" placeholder="{LANG.price}"></div><span class="delete_price" onclick="delete_price(this);">{LANG.delete}</span></div>';
		$('.list_price').append(html);
	});
	
	function delete_price(a)
	{

		$(a).parent().remove();
		
	}
	
//<![CDATA[
	function nv_change_weight(id) {
		var nv_timer = nv_settimeout_disable('id_weight_' + id, 5000);
		var new_vid = $('#id_weight_' + id).val();
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=price&nocache=' + new Date().getTime(), 'ajax_action=1&id=' + id + '&new_vid=' + new_vid, function(res) {
			var r_split = res.split('_');
			if (r_split[0] != 'OK') {
				alert(nv_is_change_act_confirm[2]);
			}
			window.location.href = script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=price';
			return;
		});
		return;
	}


	function nv_change_status(id) {
		var new_status = $('#change_status_' + id).is(':checked') ? true : false;
		if (confirm(nv_is_change_act_confirm[0])) {
			var nv_timer = nv_settimeout_disable('change_status_' + id, 5000);
			$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=price&nocache=' + new Date().getTime(), 'change_status=1&id='+id, function(res) {
				var r_split = res.split('_');
				if (r_split[0] != 'OK') {
					alert(nv_is_change_act_confirm[2]);
				}
			});
		}
		else{
			$('#change_status_' + id).prop('checked', new_status ? false : true );
		}
		return;
	}


//]]>
</script>
<!-- END: main -->