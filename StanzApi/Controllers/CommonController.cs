using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Stanz.Database.Repository;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace StanzApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CommonController : ControllerBase
    {
        SQLKit sqlKit = new SQLKit();

        [HttpGet()]
        public string GetProcMapper()
        {
            DataTable dtProcMapper = sqlKit.GetDataFromSQLUsingStoreProc("common.SPGetProcMapper");
            return JsonConvert.SerializeObject(dtProcMapper);

        }
    }
}
