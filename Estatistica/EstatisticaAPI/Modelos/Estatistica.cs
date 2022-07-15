namespace EstatisticaAPI.Modelos
{
     public class Estatistica : IEstatistica
    {
        public double maximo(double[] valores)
        {
            throw new System.NotImplementedException();
        }

        public double media(double[] valores)
        {
            double soma =0;
            foreach (var item in valores)
            {
                soma = soma + item;
                
            }

            return soma / valores.Length;            
        }

        public double mediana(double[] valores)
        {
            double troca;
           for (var i = 0; i < valores.Length; i++)
           {
              for (var x = i+1; x < valores.Length; x++)
              {
                    if (valores[i]>valores[x]) {
                        troca = valores[i];
                        valores[i]=valores[x];
                        valores[x]=troca;
                    }                
              }
            
           }
            int metade = valores.Length/2;
            if (valores.Length %  2 == 0)
           {            
             return (valores[metade-1]+valores[metade])/2;
           } else {
            
             return valores[metade];
           }

        }

        public double minimo(double[] valores)
        {
            throw new System.NotImplementedException();
        }

        public double moda(double[] valores)
        {
            throw new System.NotImplementedException();
        }
        
    }
}