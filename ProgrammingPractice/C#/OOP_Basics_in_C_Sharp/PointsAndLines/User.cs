using System;

namespace PointsAndLines
{

    class User
    {
        public readonly int HEIGHT;
        public readonly int ID;
        public static int currentID;

        public Race race;
        public string username;
        public int password;

        public string Username
        {
            get
            {
                return "The username is: " + username;
            }
            
        //removing setting to make Username a Read-Only Property
            // set
            // {
            //     //validating username through property
            //     if(value.Length >= 4 && value.Length <= 10)
            //     {
            //         username = value;
            //     }

            //     else
            //     {
            //         Console.WriteLine("Oops, this is not a valid username! Please use a username with 4 to 10 characters.");
            //     }
            // }
        }

        public int Password
        {

        //removing get to make Password a Write-Only Property
            // get
            // {
            //     return password;
            // }

            set
            {
                 if(value >= 4 && value <= 10)
                 {
                    password = value;
                 }

                 else
                 {
                    Console.WriteLine("Oops, this is not a valid password! Please use a password between 4 and 10.");
                 }
            }
        }
        public User()
        {
            currentID++;
            ID = currentID;
        }

        
        public User (string username, Race race)
        {
            currentID++;
            ID = currentID;
            this.username = username;

            if(this.race == Race.Martian)
            {
                HEIGHT = 100;
            }

            else if (this.race == Race.Earthling)
            {
                HEIGHT = 180;
            }
        }

        public void SayMayName()
        {
            Utilities.ColorfulWriteLine(this.username, ConsoleColor.Cyan);
        }

    }
}