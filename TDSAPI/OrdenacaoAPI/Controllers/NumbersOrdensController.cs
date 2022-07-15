using Microsoft.AspNetCore.Mvc;
using OrdenacaoAPI.Models;

namespace OrdenacaoAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class NumbersOrdensController : ControllerBase
    {
            [HttpGet]
            [Route("[change]")]
        public int[] change(int number1,int number2) {
            
            NumbersOrdenrs numbers = new NumbersOrdenrs();
            return numbers.Change(number1,number2);
        }

       [HttpGet]
       [Route("[changeNegative]")]
      public int ChangeNegative(int number) {

        return numbers.changeNegative(number);
     }
        
    }    
}