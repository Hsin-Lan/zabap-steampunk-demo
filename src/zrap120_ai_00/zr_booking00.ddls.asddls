@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'BookingId' ]
define view entity ZR_BOOKING00
  as select from ZBOOKING00 as Booking
  association to parent ZR_TRAVEL00 as _Travel on $projection.ParentUuid = _Travel.Uuid
{
  key uuid as Uuid,
  parent_uuid as ParentUuid,
  booking_id as BookingId,
  booking_date as BookingDate,
  customer_id as CustomerId,
  carrier_id as CarrierId,
  connection_id as ConnectionId,
  flight_date as FlightDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  flight_price as FlightPrice,
  currency_code as CurrencyCode,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  discounted_flight_price as DiscountedFlightPrice,
  _Travel
  
}
