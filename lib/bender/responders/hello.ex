defmodule Bender.Responders.Hello do
  @moduledoc """
  Hello, world!

  Replies with 'Hello, world!'
  """

  use Hedwig.Responder

  @usage """
  <text> (hello bender) - Replies with 'Hello, world!'
  """
  respond ~r/hello/i, msg do
    reply msg, "Hello, #{msg.user.name}"
  end
end
