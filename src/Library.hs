module Library where
import PdePreludat

data TipoPokemon = Planta | Agua | Fuego deriving (Show, Eq)

tieneVentajaContra :: TipoPokemon -> TipoPokemon -> Bool
tieneVentajaContra Planta Agua = True
tieneVentajaContra Agua Fuego = True
tieneVentajaContra Fuego Planta = True
tieneVentajaContra _ _ = False

data Pokemon = UnPokemon { 
  nombre :: String, 
  tipo :: TipoPokemon
} deriving (Show, Eq)

data Destino = UnGimnasio { nombreGym:: String, siguiente:: Destino }
              | UnaLiga { contrincantes:: [Pokemon] } deriving (Show, Eq)

