

(** [realpath] returns the canonicalized absolute pathname. The [realpath]
 function resolves all symbolic links, extra / characters, and references
 to /./ and /../ in a provided file name. *)

external realpath: string -> string = "unix_realpath"

