defmodule Bamboo.ESpec.Assertions.HaveBeenDelivered do
  use ESpec.Assertions.Interface

  @timeout 100

  defp match(%Bamboo.Email{} = email, value) do
    email = normalize_for_testing(email)
    do_match(email, value)
  end

  defp success_message(email, _value, _result, positive) do
    be = if positive, do: "has been", else: "has not been"
    "`#{inspect email}` #{be} delivered."
  end

  defp error_message(email, _value, _result, positive) do
    be = if positive, do: "have been", else: "has not been"
    but = if positive, do: "have not been", else: "it has been"
    "Expected `#{inspect email}` to #{be} delivered, but #{but}."
  end

  defp normalize_for_testing(email) do
    email
    |> Bamboo.Mailer.normalize_addresses
    |> Bamboo.TestAdapter.clean_assigns
  end

  defp do_match(email, _value) do
    receive do
      {:delivered_email, ^email} -> {true, email}
    after
      @timeout -> {false, email}
    end
  end
end
