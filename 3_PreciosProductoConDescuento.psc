Proceso Precio_de_Articulos_con_descuento
		Definir Producto1, Producto2, Producto3,Producto4, Clave1,  Clave2, Clave3,  Clave4, TipoClave1 como texto;
		Definir PrecioOriginal1,PrecioOrig1,PrecioOrig2,PrecioOrig3,PrecioOrig4,PrecioDesc1, porcentaje1, NumProducto1 como real;
		Producto1 <- "Libro";
		Producto2 <- "Cuaderno";
		Producto3 <- "Lapiz";
		Producto4 <- "Mochila";
		Clave1 <- "01" ;
		Clave2 <- "02" ;
		Clave3 <- "01" ;
		Clave4 <- "02" ;
		PrecioOrig1<-20 ;
		PrecioOrig2<-15 ;
		PrecioOrig3<-8 ;
		PrecioOrig4<-180 ;
		
		Escribir "Selecione un producto: ";
		Escribir "1.- Libro";
		Escribir "2.- Cuaderno";
		Escribir "3.- Lapiz";
		Escribir "4.- Mochila";
		Leer NumProducto1;
		
		Si NumProducto1 = 1 Entonces;
			Escribir "Producto: ", Producto1;
			Escribir "Número de Producto: ", NumProducto1;
			Escribir "Clave: ", Clave1; 
			Escribir "Precio Original: ",PrecioOrig1;
			TipoClave1<-Clave1;
			PrecioOriginal1<-PrecioOrig1;
		SiNo
			si NumProducto1= 2 Entonces;
				Escribir "Producto: ", Producto2;
				Escribir "Número de Producto: ", NumProducto1;
				Escribir "Clave: ", Clave2; 
				Escribir "Precio Original: ",PrecioOrig2;
				TipoClave1<-Clave3;
				PrecioOriginal1<-PrecioOrig2;
			SiNo
				si NumProducto1= 3 Entonces;
					Escribir "Producto: ", Producto3;
					Escribir "Número de Producto: ", NumProducto1;
					Escribir "Clave: ", Clave3; 
					Escribir "Precio Original: ",PrecioOrig3;
					TipoClave1<-Clave3;
					PrecioOriginal1<-PrecioOrig3;
				SiNo
					si NumProducto1= 4 Entonces;
						Escribir "Producto: ", Producto4;
						Escribir "Número de Producto: ", NumProducto1;
						Escribir "Clave: ", Clave4; 
						Escribir "Precio Original: ",PrecioOrig4;
						TipoClave1<-Clave4;
						PrecioOriginal1<-PrecioOrig4;
					SiNo
						Escribir "Producto Invalido ... ";
					Finsi	
					
				Finsi
										
			FinSi
					
			
		FinSi
		
		Si TipoClave1 = "01" entonces 
			PrecioDesc1  <- PrecioOriginal1-((10 * PrecioOriginal1) / 100);
		SiNo
			PrecioDesc1 <- PrecioOriginal1-((20 * PrecioOriginal1) / 100);
		FinSi
		
		Escribir "Precio de Descuento: $",PrecioDesc1,".00 M.N.";
		
		
FinProceso
