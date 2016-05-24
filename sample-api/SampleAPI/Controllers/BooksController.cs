using SampleAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace SampleAPI.Controllers
{
    public class BooksController : ApiController
    {
        // GET: api/Book
        [EnableCors(origins: "http://localhost:3000", headers: "*", methods: "*")]
        public IEnumerable<Book> Get()
        {
            return Book.List();
        }

        // GET: api/Book/5
        [EnableCors(origins: "http://localhost:3000", headers: "*", methods: "*")]
        public Book Get(int id)
        {
            return Book.Get(id);
        }

        // POST: api/Book
        [EnableCors(origins: "http://localhost:3000", headers: "*", methods: "*")]
        public int Post([FromBody]Book book)
        {
            return Book.Add(book);
        }

        // PUT: api/Book/5
        public void Put(int id, [FromBody]string value)
        {

        }
        
        // DELETE: api/Book/5
        public void Delete(int id)
        {
        }
    }
}
