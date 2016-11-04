defmodule Bamboo.ESpec.Support.Email do
  import Bamboo.Email

  def hello_email do
    new_email(
      to: "john@example.com",
      from: "noreply@example.com",
      subject: "Hello"
    )
  end
end
