

sells(milla,egg).
sells(joni,apple).
sells(john,bread).
buys(niloy,egg).
buys(tony,bread).
milla_sells(X):-buys(niloy,X).
toly_buys(X):-sells(X,bread).
