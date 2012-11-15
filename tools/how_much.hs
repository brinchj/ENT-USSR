import System.IO
import Numeric
import Control.Concurrent

main = do
  watch_ent 0 0


watch_ent_s c p n = do
  putStrLn (show c)
  watch_ent (c+n-p) n

watch_ent c p = do
  x <- threadDelay 1000
  h <- openFile "/proc/sys/kernel/random/entropy_avail" ReadMode
  s <- hGetContents h
  n <- return (read s :: Int)
  if n > p then watch_ent_s c p n else watch_ent c n
