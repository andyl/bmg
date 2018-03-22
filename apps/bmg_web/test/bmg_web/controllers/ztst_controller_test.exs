defmodule BmgWeb.ZtstControllerTest do
  use BmgWeb.ConnCase

  alias Bmg.Util

  @create_attrs %{name: "some name"}
  @update_attrs %{name: "some updated name"}
  @invalid_attrs %{name: nil}

  def fixture(:ztst) do
    {:ok, ztst} = Util.create_ztst(@create_attrs)
    ztst
  end

  describe "index" do
    test "lists all users", %{conn: conn} do
      conn = get conn, ztst_path(conn, :index)
      assert html_response(conn, 200) =~ "Listing Users"
    end
  end

  describe "new ztst" do
    test "renders form", %{conn: conn} do
      conn = get conn, ztst_path(conn, :new)
      assert html_response(conn, 200) =~ "New Ztst"
    end
  end

  describe "create ztst" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post conn, ztst_path(conn, :create), ztst: @create_attrs

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ztst_path(conn, :show, id)

      conn = get conn, ztst_path(conn, :show, id)
      assert html_response(conn, 200) =~ "Show Ztst"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post conn, ztst_path(conn, :create), ztst: @invalid_attrs
      assert html_response(conn, 200) =~ "New Ztst"
    end
  end

  describe "edit ztst" do
    setup [:create_ztst]

    test "renders form for editing chosen ztst", %{conn: conn, ztst: ztst} do
      conn = get conn, ztst_path(conn, :edit, ztst)
      assert html_response(conn, 200) =~ "Edit Ztst"
    end
  end

  describe "update ztst" do
    setup [:create_ztst]

    test "redirects when data is valid", %{conn: conn, ztst: ztst} do
      conn = put conn, ztst_path(conn, :update, ztst), ztst: @update_attrs
      assert redirected_to(conn) == ztst_path(conn, :show, ztst)

      conn = get conn, ztst_path(conn, :show, ztst)
      assert html_response(conn, 200) =~ "some updated name"
    end

    test "renders errors when data is invalid", %{conn: conn, ztst: ztst} do
      conn = put conn, ztst_path(conn, :update, ztst), ztst: @invalid_attrs
      assert html_response(conn, 200) =~ "Edit Ztst"
    end
  end

  describe "delete ztst" do
    setup [:create_ztst]

    test "deletes chosen ztst", %{conn: conn, ztst: ztst} do
      conn = delete conn, ztst_path(conn, :delete, ztst)
      assert redirected_to(conn) == ztst_path(conn, :index)
      assert_error_sent 404, fn ->
        get conn, ztst_path(conn, :show, ztst)
      end
    end
  end

  defp create_ztst(_) do
    ztst = fixture(:ztst)
    {:ok, ztst: ztst}
  end
end
