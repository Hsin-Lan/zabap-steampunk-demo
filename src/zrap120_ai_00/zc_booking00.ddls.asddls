@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'BookingId' ]
@AccessControl.authorizationCheck: #CHECK
define view entity ZC_BOOKING00
  as projection on ZR_BOOKING00
{
  key Uuid,
  ParentUuid,
  BookingId,
  BookingDate,
  CustomerId,
  CarrierId,
  ConnectionId,
  FlightDate,
  FlightPrice,
  CurrencyCode,
  DiscountedFlightPrice,
  _Travel : redirected to parent ZC_TRAVEL00
  
}
