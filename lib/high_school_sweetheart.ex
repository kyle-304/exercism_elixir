defmodule HighSchoolSweetheart do
  def firsletter(name) do
    name
    |> String.trim()
    |> String.first()
  end

  def initial(name) do
    name
    |> firsletter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    [firstname, lastname] = String.split(full_name)

    "#{initial(firstname)} #{initial(lastname)}"
  end

  def pair(full_name1, full_name2) do
    # Please implement the pair/2 function

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end

HighSchoolSweetheart.initials("jane Open")
HighSchoolSweetheart.pair("jane Open", "jane Open")

