using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SampleAPI.Models
{
    public class Book
    {
        private static List<Book> books =
        new List<Book>() {
            new Book() { Id = 1, ISBN = "100001000123", Author = "JK Rowling", Genre="Fantasy", Name="Harry Potter"  },
            new Book() { Id = 2, ISBN = "100001000123", Author = "JRR Tolkien", Genre="Fantasy", Name="The Lord of the Rings"  },
            new Book() { Id = 3, ISBN = "100001000123", Author = "M Fowler", Genre="Software Development", Name="Continuous Integration"  },
            new Book() { Id = 4, ISBN = "100001000123", Author = "W Smith", Genre="Adventure", Name="Birds of Prey"  }
        };

        public int Id { get; set; }
        public string Name { get; set; }
        public string ISBN { get; set; }
        public string Genre { get; set; }
        public string Author { get; set; }

        public static Book Get(int id)
        {
            return books.FirstOrDefault(p => p.Id == id);
        }

        public static List<Book> List ()
        {
            return books;
        }

        public static int Add(Book book)
        {
            int lastId = books.OrderBy(p => p.Id).Last().Id;
            book.Id = ++lastId;
            books.Add(book);

            return book.Id;
        }
    }
}