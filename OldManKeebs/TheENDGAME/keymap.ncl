let { tap, hold, td, combo, macro, ..} = import "../../ncl/fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
 {
   layers = [
     [
     kc.Q, kc.W, kc.E, kc.R, kc.T, kc.Z, kc.U, kc.I, kc.O, kc.P,
     kc.A, kc.S, kc.D, kc.F, kc.G, kc.H, kc.J, kc.K, kc.L, kc.0,
     kc.Y, kc.X, kc.C, kc.V, kc.B, kc.N, kc.M, kc.1, kc.2, kc.3,
     kc.4,          kc.5, kc.6 kc.7, kc.8,             kc.9
 
     ]
   ]
 }
