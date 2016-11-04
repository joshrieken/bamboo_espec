defmodule Bamboo.ESpec.Assertions do
  alias Bamboo.ESpec.Assertions.HaveBeenDelivered

  alias Bamboo.ESpec.Assertions.HaveFromAddress
  alias Bamboo.ESpec.Assertions.HaveSubject
  alias Bamboo.ESpec.Assertions.HaveToAddress

  alias Bamboo.ESpec.Assertions.UseTextLayoutModule
  alias Bamboo.ESpec.Assertions.UseTextLayoutTemplate

  alias Bamboo.ESpec.Assertions.UseViewModule
  alias Bamboo.ESpec.Assertions.UseViewTemplate

  def have_been_delivered,        do: {HaveBeenDelivered, []}

  def have_from_address(address), do: {HaveFromAddress, address}
  def have_subject(subject),      do: {HaveSubject,     subject}
  def have_to_address(address),   do: {HaveToAddress,   address}

  def use_text_layout_module(text_layout_module),     do: {UseTextLayoutModule,   text_layout_module}
  def use_text_layout_template(text_layout_template), do: {UseTextLayoutTemplate, text_layout_template}

  def use_view_module(view_module),     do: {UseViewModule,   view_module}
  def use_view_template(view_template), do: {UseViewTemplate, view_template}
end
