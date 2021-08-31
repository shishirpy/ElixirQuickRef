defmodule Eqr.Database.Mysql do
    @moduledoc"""
    Accessing postgres using postgrex

    Postgrex Library webpage: https://hexdocs.pm/postgrex/readme.html
    """

    def example do
        postgrex_conf = Application.get_env(:eqr, :postgrex_conn)
        {:ok, pid} = Postgrex.start_link(
                        hostname: postgrex_conf[:hostname],
                        username: postgrex_conf[:username],
                        password: postgrex_conf[:password],
                        database: postgrex_conf[:database]
                        )

        Postgrex.query!(pid, "SELECT user_id, text FROM comments", [])

    end
end
