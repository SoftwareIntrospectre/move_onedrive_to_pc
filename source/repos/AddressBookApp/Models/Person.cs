using System;
using System.ComponentModel.DataAnnotations;

namespace AddressBookApp.Models
{
    public class Person
    {
        public int PersonID { get; set; }

        public string Prefix { get; set; }

        public string MiddleName { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Suffix { get; set; }

        public string Nickname { get; set; }

        [DataType(DataType.Date)]
        public DateTime BirthDate { get; set; }

        public string RelationshipType { get; set; }

        public string Address1 { get; set; }

        public string Address2 { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public string ZipCode { get; set; }
        //https://github.com/google/libphonenumber/blob/master/FALSEHOODS.md

        public string Country { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }

        public string Sex { get; set; }

        //public enum HealthStatus
        //{
        //    Alive,
        //    Deceased,
        //    Unknown
        //}

        //public enum Sex
        //{
        //    Male,
        //    Female,
        //    NonBinary,
        //    Unspecified
        //}
    }
}
