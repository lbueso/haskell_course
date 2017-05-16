{-
  De la Kata https://www.codewars.com/kata/complementary-dna
  
  El ADN es una proteína compleja que se encuentra en el 
  núcleo de las células y constituye el principal constituyente 
  del material genético de los seres vivos.
  
  http://en.wikipedia.org/wiki/DNA

  En las cadenas de ADN, los símbolos "A" y "T" se complementan,
  al igual que "C" y "G".
  
  Dada una lista de caracteres (puede que vacía) devolver la complementaria.
  
  coadn [] -> []
  coadn ["A","T","G","C"] -> ["T","A","C","G"]
  coadn ["G","T","A","T"] -> ["C","A","T","A"]
  coadn ["A","A","A","A"] -> ["T","T","T","T"]

-}

-- ADN complementario (co-adn)
coadn :: [Char] -> [Char]
coadn = undefined

{-
  
  Y ahora para más diversión con tipos <3

-}

data Nucleotido = A | T | G | C
type ADN = [Nucleotido]
