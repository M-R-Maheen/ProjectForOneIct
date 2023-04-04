using ApiWithAngular.Models;
using ApiWithAngular.Repository;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiWithAngular.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentsController : ControllerBase
    {
        private readonly StudentRepository _repository;

        public StudentsController(StudentRepository repository)
        {
            _repository = repository ?? throw new ArgumentNullException(nameof(repository));
        }

        // GET All Student
        [HttpGet]
        public async Task<List<Student>> Get()
        {
            return await _repository.GetAll();
        }

        // Get By Student ID
        [HttpGet("{id}")]
        public async Task<ActionResult<Student>> Get(int id)
        {
            var response = await _repository.GetById(id);
            if (response == null) { return NotFound(); }
            return response;
        }

        // POST api/Students
        [HttpPost]
        public async Task<string> Post([FromBody] Student student)
        {
            string data = await _repository.InsertStudent(student);
            return data;
        }

        //// --- PUT 
        //[HttpPut("{id}")]
        //public void Put(int id, [FromBody] string student)
        //{

        //}

        // DELETE Student
        [HttpDelete("{id}")]
        public async Task Delete(int id)
        {
            await _repository.DeleteById(id);
        }


     

       
    }
}
