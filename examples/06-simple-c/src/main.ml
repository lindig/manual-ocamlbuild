
let main () =
  let argv = Array.to_list Sys.argv in
  let args = List.tl argv in
    args |> List.iter (fun path -> Pathutil.realpath path |> print_endline)

let () = main ()        

