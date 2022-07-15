namespace EstatisticaPI.obj.Modelos
{
    public class metados
    {
         public double CalcularMedia(double[] valores) {

            string valores;
            string [] values= valores.Split(",");

            double soma=0;

            for (int i=0; i<values.count(); i++) {

                double.Parse=values[i];
                soma+=values[i];
            }

            double media=soma/values.count;
         }
    }      
}