defmodule Eqr.Database.Mysql do
    @moduledoc"""
    Acessing MySQL DB using the myxql library.

    MyXQL Library webpage: https://hexdocs.pm/myxql/readme.html
    """

    def example do
        myxql_conf = Application.get_env(:eqr, :myxql_conn)
        {:ok, pid} = MyXQL.start_link(
                        hostname: myxql_conf[:hostname],
                        database: myxql_conf[:database],
                        username: myxql_conf[:username],
                        password: myxql_conf[:password]
                        )

        MyXQL.query!(pid, "SELECT * FROM user LIMIT 10")
    end
end
