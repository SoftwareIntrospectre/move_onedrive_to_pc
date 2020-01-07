using System;
using System.Collections.Generic;
using System.Text;

namespace Interface_Practice
{
    interface ICommand
    {
        void Execute();

        void Undo();
    }
}
