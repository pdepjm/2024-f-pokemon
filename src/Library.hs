module Library where
import PdePreludat

data TipoPokemon = Planta | Agua | Fuego deriving (Show, Eq)

tieneVentajaContra :: TipoPokemon -> TipoPokemon -> Bool
tieneVentajaContra Planta Agua = True
tieneVentajaContra Agua Fuego = True
tieneVentajaContra Fuego Planta = True
tieneVentajaContra _ _ = False

data Gimnasio = UnGimnasio {
    nombre :: String,
    siguiente :: Destino
}
