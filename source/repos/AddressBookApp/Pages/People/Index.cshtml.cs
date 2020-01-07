using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using AddressBookApp.Data;
using AddressBookApp.Models;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace AddressBookApp
{
    public class IndexModel : PageModel
    {
        private readonly AddressBookApp.Data.AddressBookAppContext _context;

        public IndexModel(AddressBookApp.Data.AddressBookAppContext context)
        {
            _context = context;
        }

        public IList<Person> Person { get;set; }

        [BindProperty(SupportsGet =true)]
        public string SearchString { get; set; }

        public SelectList FirstName { get; set; }
        [BindProperty(SupportsGet = true)]
        public string GetFirstName { get; set; }

        public async Task OnGetAsync()
        {
            //Person = await _context.Person.ToListAsync();

            var people = from p in _context.Person select p;

            if(!string.IsNullOrEmpty(SearchString))
            {
                //want to replace FirstName with any column
                //will probably need to append this to a list
                    //https://stackoverflow.com/questions/18292618/linq-search-multiple-columns

                people = people.Where(p => p.FirstName.Contains(SearchString));
            }

            Person = await people.ToListAsync();

        }
    }
}
