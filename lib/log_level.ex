defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and not legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and not legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)

    cond do
      label == :error -> :ops
      label == :fatal -> :ops
      label == :unknown and legacy? -> :dev1
      label == :unknown -> :dev2
      true -> false
    end
  end
end

LogLevel.to_label(1, true)

# def to_label(level, legacy?) do
#   case {level, legacy?} do
#     {0, false} -> :trace
#     {1, true} -> :debug
#     {2, true} -> :info
#     {3, true} -> :warning
#     {4, true} -> :error
#     {5, false} -> :fatal
#     {_, _} -> :uknown
#   end
# end
