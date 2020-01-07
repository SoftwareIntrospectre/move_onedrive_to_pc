using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using AddressBookApp.Models;

namespace AddressBookApp.Data
{
    public class AddressBookAppContext : DbContext
    {
        public AddressBookAppContext (DbContextOptions<AddressBookAppContext> options)
            : base(options)
        {
        }

        public DbSet<AddressBookApp.Models.Person> Person { get; set; }
    }
}
