using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using WebApi.Entities;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TransactionsController : ControllerBase
    {
        List<Transaction> transactions = new List<Transaction>();

        public TransactionsController() 
        {
            transactions.Add(new Transaction { Id = 001, Date = new System.DateTime(), Amount = 1000, TransactionType = TransactionType.Credit });
        }
       

        // GET: api/<transactionsController>
        [HttpGet]
        public IEnumerable<Transaction> Get()
        {
            return transactions;
        }

        // GET api/<TransactionsController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<TransactionsController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<TransactionsController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<TransactionsController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
