@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_CLIENTE_LS
  as select from ztb_cliente_ls as Clientes
    inner join   ztb_cln_lib_ls as ClientesLibros on ClientesLibros.id_cliente = Clientes.id_cliente
{
  key ClientesLibros.id_libro as IdLibro,
  key Clientes.id_cliente     as IdCliente,
  key Clientes.tipo_acceso    as Acceso,
      Clientes.nombre         as Nombre,
      Clientes.apellidos      as Apellidos,
      Clientes.email          as Email,
      Clientes.url            as Imagen
}
