using Microsoft.AspNetCore.Mvc;
using EstatisticaPI;

namespace EstatisticaAPI.Controllers
{  
        [ApiController]
    [Route("[controller]")]
    public class EstatisticaController  : ControllerBase
    {

         [HttpGet]
        [Route("Mediana")]
        
        public ActionResult<double> Mediana(string v){
            
            Estatistica estatistica = new Estatistica();

            string[] valorestring = v.Split(",");
            double[] valores = new double[valorestring.Length];

           for (var i = 0; i < valores.Length; i++)
           {
              valores[i]=double.Parse(valorestring[i]);            
           }
            
             double valor = estatistica.mediana(valores);
            
            return  valor;
        }
        
    }
}