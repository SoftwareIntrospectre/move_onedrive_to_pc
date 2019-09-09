using WarriorWars.Enum;
using WarriorWars.Equipment;

namespace WarriorWars
{
    public class Warrior
    {

        private const int GOOD_GUY_STARTING_HEALTH = 100;
        private const int BAD_GUY_STARTING_HEALTH = 100;
        private Faction faction;

        private int health;

        private string name;

        private bool isAlive;

        public bool IsAlive 
        {
            get
            {
                //want read-only access available
                return isAlive;
            }
        }
        private Weapon weapon;

        private Armor armor;


        public Warrior(string name, Faction faction)
        {
            this.name = name;
            this.faction = faction;
            isAlive = true;

            switch(faction)
            {
               case Faction.GoodGuy:
                weapon = new Weapon(faction);
                armor = new Armor(faction);
                health = goodGuyStartingHealth;
               break;        

                case Faction.BadGuy:
                weapon = new Weapon(faction);
                armor = new Armor(faction);
                health = badGuyStartingHealth;
                break;

                default:
                break;          
            }
        }
    }
}