using System;
using PointsAndLines;

    class EntryPoint
    {
        static void Main()
        {
            User user = new User("Tony", Race.Earthling);
    
            Console.ForegroundColor = ConsoleColor.DarkMagenta;

            Console.WriteLine("first user ID is: " + user.ID);
            // Console.WriteLine("current user ID is: " + User.currentID);

            User secondUser = new User();
            Console.WriteLine("second user ID is: " + secondUser.ID);
            // Console.WriteLine("current user ID is: " + User.currentID);

            User thirdUser = new User();
            Console.WriteLine("third user ID is: " + thirdUser.ID);
            Console.WriteLine("current user ID is: " + User.currentID);

           user.Password = 5;

           Console.WriteLine(user.Username);

           Utilities.ColorfulWriteLine(user.Username, ConsoleColor.DarkMagenta);
        
            user.SayMayName();
        }
    }

