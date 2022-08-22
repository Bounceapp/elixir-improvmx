defmodule ImprovMX.Domains do
  import ImprovMX.Http

  @endpoint "domains"

  @doc """
  Retrieve a list of all your domains
  """
  @spec list(params) :: {:ok, map()} | {:error, any()}
        when params: %{
               optional(:q) => String.t(),
               optional(:is_active) => boolean(),
               optional(:limit) => integer(),
               optional(:page) => integer(),
             }
  def list(params \\ %{}) do
    request(:get, "v3/" <> @endpoint <> "/", params)
  end

  @doc """
  Get the details of a domain
  """
  @spec get(String.t()) :: {:ok, map()} | {:error, any()}
  def get(name) do
    request(:get, "v3/" <> @endpoint <> "/" <> name)
  end

  @doc """
  Check if the MX entries are valid for a domain
  """
  @spec check(String.t()) :: {:ok, map()} | {:error, any()}
  def check(name) do
    request(:get, "v3/" <> @endpoint <> "/" <> name <> "/check")
  end

  @doc """
  Adding a new domain
  """
  @spec add(String.t(), params) :: {:ok, map()} | {:error, any()}
        when params: %{
          optional(:notification_email) => String.t(),
          optional(:whitelabel) => String.t()
        }
  def add(name, params \\ %{}) do
    request(:post, "v3/" <> @endpoint <> "/", params |> Map.put(:domain, name), %{})
  end

  @doc """
  Edit a domain by modifying the notification email or the whitelabel entries
  """
  @spec edit(String.t(), params) :: {:ok, map()} | {:error, any()}
        when params: %{
          optional(:notification_email) => String.t(),
          optional(:whitelabel) => String.t()
        }
  def edit(name, params \\ %{}) do
    request(:put, "v3/" <> @endpoint <> "/" <> name, params, %{})
  end

  @doc """
  Edit a domain by modifying the notification email or the whitelabel entries
  """
  @spec delete(String.t()) :: {:ok, map()} | {:error, any()}
  def delete(name) do
    request(:delete, "v3/" <> @endpoint <> "/" <> name)
  end

end
