defmodule Ascension.ServerRepo do
    @ascension_service Application.get_env(:ascension, :ascension_service)
    def get_all() do
        @ascension_service.get_servers
    end
end