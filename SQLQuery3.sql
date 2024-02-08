-- a. Visualizzare tutti gli impiegati oltre i 29 anni
SELECT * FROM IMPIEGATO WHERE Eta > 29;

-- b. Visualizzare tutti gli impiegati con un reddito di almeno 800 euro mensili
SELECT * FROM IMPIEGATO WHERE Reddito_Mensile >= 800;

-- c. Visualizzare tutti gli impiegati che possiedono la detrazione fiscale
SELECT * FROM IMPIEGATO WHERE Detrazione_Fiscale = 1;

-- d. Visualizzare tutti gli impiegati che non posseggono la detrazione fiscale
SELECT * FROM IMPIEGATO WHERE Detrazione_Fiscale = 0;

-- e. Visualizzare tutti gli impiegati cui il cognome cominci con una lettera G e li visualizzi in ordine alfabetico
SELECT * FROM IMPIEGATO WHERE Cognome LIKE 'G%' ORDER BY Cognome;

-- f. Visualizzare il numero totale degli impiegati registrati nella base dati
SELECT COUNT(*) AS NumeroImpiegati FROM IMPIEGATO;

-- g. Visualizzare il totale dei redditi mensili di tutti gli impiegati
SELECT SUM(Reddito_Mensile) AS TotaleRedditiMensili FROM IMPIEGATO;

-- h. Visualizzare la media dei redditi mensili di tutti gli impiegati
SELECT AVG(Reddito_Mensile) AS MediaRedditiMensili FROM IMPIEGATO;

-- i. Visualizzare l'importo del reddito mensile maggiore
SELECT MAX(Reddito_Mensile) AS RedditoMensileMassimo FROM IMPIEGATO;

-- j. Visualizzare l'importo del reddito mensile minore
SELECT MIN(Reddito_Mensile) AS RedditoMensileMinimo FROM IMPIEGATO;

-- k. Visualizzare gli impiegati assunti dall'01/01/2007 all'01/01/2008
SELECT nome,cognome, Data_Assunzione 
FROM IMPIEGATO
INNER JOIN IMPIEGO ON IMPIEGATO.IDImpiegato = IMPIEGO.IDImpiegato
WHERE Data_Assunzione BETWEEN '2007-01-01' AND '2008-01-01';

-- l. Tramite una query parametrica che identifichi il tipo di impiego, visualizzare tutti gli impiegati che corrispondono a quel tipo di impiego
DECLARE @tipoImpiego NVARCHAR(50) = 'Sviluppatore';
SELECT Nome, Cognome, Eta, Tipo_Impiego 
FROM IMPIEGATO 
INNER JOIN IMPIEGO ON IMPIEGATO.IDImpiegato = IMPIEGO.IDImpiegato AND Tipo_Impiego = @tipoImpiego

-- m. Visualizzare l'età media dei lavoratori all'interno dell'azienda
SELECT AVG(Eta) AS MediaEta FROM IMPIEGATO;