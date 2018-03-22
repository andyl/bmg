defmodule BmgWeb.ZtstController do
  use BmgWeb, :controller

  def test1(conn, _params) do
    render(conn, "test1.html")
  end

  # def index(conn, _params) do
  #   users = Util.list_users()
  #   render(conn, "index.html", users: users)
  # end
  #
  # def new(conn, _params) do
  #   changeset = Util.change_ztst(%Ztst{})
  #   render(conn, "new.html", changeset: changeset)
  # end
  #
  # def create(conn, %{"ztst" => ztst_params}) do
  #   case Util.create_ztst(ztst_params) do
  #     {:ok, ztst} ->
  #       conn
  #       |> put_flash(:info, "Ztst created successfully.")
  #       |> redirect(to: ztst_path(conn, :show, ztst))
  #     {:error, %Ecto.Changeset{} = changeset} ->
  #       render(conn, "new.html", changeset: changeset)
  #   end
  # end
  #
  # def show(conn, %{"id" => id}) do
  #   ztst = Util.get_ztst!(id)
  #   render(conn, "show.html", ztst: ztst)
  # end
  #
  # def edit(conn, %{"id" => id}) do
  #   ztst = Util.get_ztst!(id)
  #   changeset = Util.change_ztst(ztst)
  #   render(conn, "edit.html", ztst: ztst, changeset: changeset)
  # end
  #
  # def update(conn, %{"id" => id, "ztst" => ztst_params}) do
  #   ztst = Util.get_ztst!(id)
  #
  #   case Util.update_ztst(ztst, ztst_params) do
  #     {:ok, ztst} ->
  #       conn
  #       |> put_flash(:info, "Ztst updated successfully.")
  #       |> redirect(to: ztst_path(conn, :show, ztst))
  #     {:error, %Ecto.Changeset{} = changeset} ->
  #       render(conn, "edit.html", ztst: ztst, changeset: changeset)
  #   end
  # end
  #
  # def delete(conn, %{"id" => id}) do
  #   ztst = Util.get_ztst!(id)
  #   {:ok, _ztst} = Util.delete_ztst(ztst)
  #
  #   conn
  #   |> put_flash(:info, "Ztst deleted successfully.")
  #   |> redirect(to: ztst_path(conn, :index))
  # end
end
