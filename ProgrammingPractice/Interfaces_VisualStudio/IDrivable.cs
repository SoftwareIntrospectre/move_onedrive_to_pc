using System;
using System.Collections.Generic;
using System.Text;

namespace Interface_Practice
{
    interface IDrivable
    {
        int Wheels { get; set; }
        double Speed { get; set; }
        void Move();
        void Stop();
    }

}

