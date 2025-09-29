vehicle(toyota, '4Runner', suv, 27700, 2025).
vehicle(toyota, txl, suv, 33600, 2025).
vehicle(toyota, hilux, pickup, 29000, 2025).
vehicle(ford, raptor, pickup, 20000, 2025).
vehicle(ford, fiesta, sedan, 10000, 2025).
vehicle(bmw, 'M4 competition', sport, 60000, 2025).
vehicle(renault, arkana, suv, 53000, 2025).
vehicle(bmw, 'i4 eDrive40', sedan, 50000, 2025).
vehicle(mercedes, 'AMG G63', suv, 76000, 2025).
vehicle(mercedes, maybach, suv, 100000, 2025).
vehicle(porsche, '911', sport, 120000, 2025).
vehicle(ford, f150, pickup, 25000, 2025).
vehicle(ford, focus, sedan, 12000, 2025).
vehicle(chevrolet, optra, sedan, 7000, 2015).

meet_budget(Reference, BudgetMax):-
    vehicle(_,Reference,_,Price,_),
    Price =< BudgetMax.

price_filter(Brand, Estilo, PrecioMax, Modelos) :-
    findall(Modelo, (vehicle(Brand, Modelo, Estilo, Precio,_), Precio < PrecioMax), Modelos).

car_brand(Brand, Type, Year, Modelos) :-
    bagof(Modelo, vehicle(Brand, Modelo, Type, _, Year), Modelos).

sumar_precios_modelos([], 0).
sumar_precios_modelos([Modelo|T], S) :-
    vehicle(_, Modelo, _, Precio, _),
    sumar_precios_modelos(T, S1),
    S is S1 + Precio.
	

max_Limit(500000).


generate_report(Brand, Type, Budget, report{vehicles: VP, total: Total}) :-
    price_filter(Brand, Type, Budget, VP),           
    sumar_precios_modelos(VP, Total),
    max_Limit(Lim),
    Total =< Lim.





    
          







