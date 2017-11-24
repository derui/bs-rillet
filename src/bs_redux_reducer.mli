type ('a, 'b) t
(** The type of reducer. *)

val make : ('a -> 'b -> 'a) -> ('a -> Js.Json.t) -> ('b, 'a) t
(** Make reducer with conversion function and to_json function *)

val apply : ('a, 'b) t -> 'b -> 'a -> 'b
(** apply reducer with state and action *)

val to_json : ('a, 'b) t -> 'b -> Js.Json.t
(** Convert state to json using with reducer's to_json *)

