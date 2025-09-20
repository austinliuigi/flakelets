{
  description = "txn's flake templates";

  outputs = {self, ...}: {
    templates = {
      c = {
        path = ./c;
        description = "C project template";
      };
      python = {
        path = ./python;
        description = "Python project template";
      };
      node = {
        path = ./node;
        description = "Node project template";
      };
    };
  };
}
