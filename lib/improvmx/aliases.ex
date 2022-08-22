defmodule ImprovMX.Aliases do
  import ImprovMX.Http

  @endpoint "domains/:domain/aliases"

  @doc """
  List aliases for a given domain
  """
  @spec list(String.t(), params) :: {:ok, map()} | {:error, any()}
        when params: %{
               optional(:q) => String.t(),
               optional(:alias) => String.t(),
               optional(:is_active) => boolean(),
               optional(:page) => integer(),
             }
  def list(domain_name, params \\ %{}) do
    request(:get, "v3/" <> (@endpoint |> String.replace(":domain", domain_name)) <> "/", params)
  end

  @doc """
  Add a new alias to a given domain
  """
  @spec add(String.t(), params) :: {:ok, map()} | {:error, any()}
        when params: %{
               :alias => String.t(),
               :forward => String.t()
             }
  def add(domain_name, params) do
    request(:post, "v3/" <> (@endpoint |> String.replace(":domain", domain_name)) <> "/", params, %{})
  end

  @doc """
  Get the details of a given alias
  """
  @spec get(String.t(), String.t()) :: {:ok, map()} | {:error, any()}
  def get(domain_name, alias_name) do
    request(:get, "v3/" <> (@endpoint |> String.replace(":domain", domain_name)) <> "/" <> alias_name)
  end

  @doc """
  Update a given alias
  """
  @spec edit(String.t(), String.t(), String.t()) :: {:ok, map()} | {:error, any()}
  def edit(domain_name, alias_name, forwarding_email) do
    request(:put, "v3/" <> (@endpoint |> String.replace(":domain", domain_name)) <> "/" <> alias_name, %{forward: forwarding_email}, %{})
  end

  @doc """
  Delete a given alias
  """
  @spec delete(String.t(), String.t()) :: {:ok, map()} | {:error, any()}
  def delete(domain_name, alias_name) do
    request(:delete, "v3/" <> (@endpoint |> String.replace(":domain", domain_name)) <> "/" <> alias_name)
  end

end
