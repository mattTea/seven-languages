book(monte_cristo, dumas).
book(two_cities, dickens).
book(muskateers, dumas).
book(candide, voltaire).

genre(swashbuckling, dumas).
genre(historical, dickens).
genre(historical, dumas).
genre(historical, voltaire).
genre(satirical, voltaire).

book_genre(X, Y) :- book(X, Z), genre(Y, Z).