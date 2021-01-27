# TypeScript

## Installation

Can be installed through npm: `npm install -g typescript`

As a note, types generally need to be installed to use node values:   
`npm i @types/node`

And then, compile a typescript file using `tsc <file>`.


## Other Notes

It seems that VSCode has a bug where it will show that function is defined multiple times. You can fix that by manually init-ing the workspace using `tsc --init`.