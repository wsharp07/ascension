defmodule AscensionService.Mock do
    @behaviour AscensionService
    def get_servers do
        [%{
            name: "TESTER"
        }]
    end
end