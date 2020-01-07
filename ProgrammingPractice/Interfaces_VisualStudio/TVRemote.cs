using System;
using System.Collections.Generic;
using System.Text;

namespace Interface_Practice
{
    class TVRemote
    {
        public static IElectronicDevice GetDevice()
        {
            return new Television();
        }
    }
}
