defmodule SelenDriver102 do
  @moduledoc """
  SelenDriver102 keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
    # enables Hound helpers inside our module, e.g. navigate_to/1
    use Hound.Helpers
  
  def fetch_ip do
    # starts Hound session. Required before we can do anything
    Hound.start_session 
    
    # visit the website which shows the visitor's IP
    navigate_to "http://icanhazip.com"
    
    # display its raw source
    IO.inspect page_source()
    
    # cleanup
    Hound.end_session
  end
end
