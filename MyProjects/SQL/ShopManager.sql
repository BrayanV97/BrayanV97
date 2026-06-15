BEGIN TRANSACTION;

-- Insertar venta
INSERT INTO Venta (Fecha, ClienteID, SucursalID, MetodoPagoID, Total)
VALUES ('2025-07-10', 1, 1, 1, 400000);

-- Obtener el ID generado
DECLARE @VentaID INT = SCOPE_IDENTITY();

-- Insertar detalle
INSERT INTO DetalleVenta (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES (@VentaID, 2, 2, 200000);

COMMIT;
