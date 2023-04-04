using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using System;
using ApiWithAngular.Models;
using Microsoft.Extensions.Configuration;
using System.Data.SqlClient;

namespace ApiWithAngular.Repository
{
    public class StudentRepository
    {
        private readonly string _connectionString;

        public StudentRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("defaultConnection");
        }

        public StudentRepository()
        {

        }


        public async Task<List<Student>> GetAll()
        {
            using (SqlConnection sql = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetAllStudents", sql))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    var response = new List<Student>();
                    await sql.OpenAsync();

                    using (var reader = await cmd.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
                        {
                            response.Add(MapToValue(reader));
                        }
                    }

                    return response;
                }
            }
        }

        private Student MapToValue(SqlDataReader reader)
        {
            return new Student()
            {
                StudentID = (int)reader["StudentID"],
                Roll = (int)reader["Roll"],
                RegistrationNo = reader["RegistrationNo"].ToString(),
                Mobile = reader["Mobile"].ToString(),
                Address = reader["Address"].ToString(),
                Department = reader["Department"].ToString(),
            };
        }

        public async Task<Student> GetById(int StudentID)
        {
            using (SqlConnection sql = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetStudentById", sql))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@StudentID", StudentID));
                    Student response = null;
                    await sql.OpenAsync();

                    using (var reader = await cmd.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
                        {
                            response = MapToValue(reader);
                        }
                    }

                    return response;
                }
            }
        }


        public async Task<string> InsertStudent(Student student)
        {
            using (SqlConnection sql = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SpInsertStudent", sql))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@Roll", student.Roll));
                    cmd.Parameters.Add(new SqlParameter("@RegistrationNo", student.RegistrationNo));
                    cmd.Parameters.Add(new SqlParameter("@Mobile", student.Mobile));
                    cmd.Parameters.Add(new SqlParameter("@Address", student.Address));
                    cmd.Parameters.Add(new SqlParameter("@Department", student.Department));
                   
                    await sql.OpenAsync();
                    await cmd.ExecuteNonQueryAsync();
                    return "Data Save Successfully";
                }
            }
        }


        public async Task DeleteById(int StudentID)
        {
            using (SqlConnection sql = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SpDeleteStudent", sql))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@StudentID", StudentID));
                    await sql.OpenAsync();
                    await cmd.ExecuteNonQueryAsync();
                    return;
                }
            }
        }
        //The End of this Application

    }
}
