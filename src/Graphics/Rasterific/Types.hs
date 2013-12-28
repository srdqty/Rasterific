-- | Gather all the types used in the rasterization engine.
module Graphics.Rasterific.Types
    ( Vector
    , Point
    , Cap( .. )
    , Join( .. )
    , StrokeWidth
    ) where

import Linear( V2( .. ) )

-- | Represent a vector
type Vector = V2 Float

-- | Represent a point
type Point = V2 Float

-- | Type alias just to get more meaningful
-- type signatures
type StrokeWidth = Float

-- | Describe how we will "finish" the stroking
-- that don't loop.
data Cap =
    -- | Create a straight caping on the stroke.
    -- Cap value should be positive and represent
    -- the distance from the end of curve to the actual cap
    CapStraight Float 
  | CapRound          -- ^ Create a rounded caping on the stroke.
  deriving (Eq, Show)

-- | Describe how to display the join of broken lines
-- while stroking.
data Join =
    -- | Make a curved join.
    JoinRound       
    -- | Make a mitter join. Value must be positive or null.
    -- Seems to make sense in [0;1] only
  | JoinMiter Float 
  deriving (Eq, Show)
