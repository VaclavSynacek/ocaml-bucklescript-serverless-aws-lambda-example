open Js

let some_function event context callback =
  Js.log "Ocaml in AWS Lambda";
  let response = [%bs.obj { statusCode = 200; body = { message = "Ocaml / Buckle script output from AWS Lambda"; event = event } }] in
  callback Js.null response

class type _fParams = object
  val num : string
end [@bs]
type fParams = _fParams Js.t

class type _event = object
  val pathParameters : fParams
end [@bs]
type event = _event Js.t


let factorial_function event context callback =
  let factorial n =
    let rec loop i accum =
      if i > n then accum
      else loop (i + 1) (accum * i)
    in loop 1 1 in
  Js.log ("Factorial in AWS Lambda for number " ^ event##pathParameters##num);
  let n = int_of_string event##pathParameters##num in
  let result = factorial n in
  let response = [%bs.obj { statusCode = 200; body = { message = "Factorial computation in OCaml/Bucklescript"; input = event##pathParameters##num ; output = result} }] in
  callback Js.null response