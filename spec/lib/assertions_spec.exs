defmodule Bamboo.ESpec.AssertionsSpec do
  use ESpec
  use Bamboo.ESpec

  alias Bamboo.ESpec.Support.Email
  alias Bamboo.ESpec.Support.Mailer

  subject do: email()

  let :email, do: Email.hello_email

  describe "have_been_delivered" do
    before do
      email() |> Mailer.deliver_now()
    end

    it do: should have_been_delivered()
  end

  describe "have_from_address" do
    it do: should have_from_address("noreply@example.com")
  end

  describe "have_subject" do
    it do: should have_subject("Hello")
  end

  describe "have_to_address" do
    it do: should have_to_address("john@example.com")
  end
 end
