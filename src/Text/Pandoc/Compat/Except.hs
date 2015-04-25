module Text.Pandoc.Compat.Except ( ExceptT
                                 , Except
                                 , Error(..)
                                 , runExceptT
                                 , runExcept
                                 , MonadError
                                 , throwError
                                 , catchError )
       where

import Control.Monad.Error
import Control.Monad.Identity (Identity, runIdentity)

type ExceptT = ErrorT

type Except s a = ErrorT s Identity a

runExceptT ::  ExceptT e m a -> m (Either e a)
runExceptT = runErrorT

runExcept :: ExceptT e Identity a -> Either e a
runExcept = runIdentity . runExceptT
