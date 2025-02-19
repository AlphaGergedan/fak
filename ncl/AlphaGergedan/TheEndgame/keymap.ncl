let { tap, hold, td, combo, macro, ..} = import "../../fak/keycode.ncl" in

let key_count = 36 in
let kc = tap.reg.kc in
let md = hold.reg.mod in
let mo = hold.reg.layer in
let XXXX = tap.none & hold.none in

let ki = {
  hp = { decision = 'hold, trigger_on = 'press },
  tp = { decision = 'tap, trigger_on = 'press },
  hr = { decision = 'hold, trigger_on = 'release },
  tr = { decision = 'tap, trigger_on = 'release },
  xx = { decision = 'none },
} in

let thumb1 = md.lgui in
let thumb2 = kc.SPC & md.lsft & hold.reg.behavior {} in
let thumb3 = md.lctl in
let thumb4 = mo 1 in

let keymap = {
  layers = [
    # Base layer
    [
      kc.Q, kc.W, kc.E, kc.R, kc.T, kc.Y, kc.U, kc.I, kc.O, kc.P,
      kc.A, kc.S, kc.D, kc.F, kc.G, kc.H, kc.J, kc.K, kc.L, kc.ENT,
      kc.Z, kc.X, kc.C, kc.V, kc.B, kc.N, kc.M, kc.COMM, kc.DOT, mo 2,
      XXXX,      thumb1, thumb2,         thumb3, thumb4, XXXX
    ],
    # Number layer
    [
      kc.N1, kc.N2, kc.N3, kc.N4, kc.N5, kc.N6, kc.N7, kc.N8, kc.N9, kc.N0,
      kc.TAB, kc.ESC, kc.GRAVE, kc.MINS, kc.EQL, kc.SCLN, kc.QUOT, kc.LBRC, kc.RBRC, kc.BSLS,
      kc.Z, kc.X, kc.C, md.lalt, kc.B, kc.N, kc.COMM, kc.DOT, kc.SLSH, kc.BSPC,
      XXXX,      thumb1, thumb2,         thumb3, thumb4, XXXX
    ],
    # Symbol layer
    [
      kc.F1, kc.F2, kc.F3, kc.F4, kc.F5, kc.F6, kc.F7, kc.F8, kc.F9, kc.F10,
      XXXX, XXXX, XXXX, XXXX, XXXX, kc.H, kc.J, kc.K, kc.F11, kc.F12,
      kc.Z, kc.X, kc.C, kc.V, XXXX, kc.LEFT, kc.DOWN, kc.UP, kc.RGHT, XXXX,
      XXXX,      thumb1, thumb2,         thumb3, thumb4, XXXX
    ],
  ]
} in


keymap
