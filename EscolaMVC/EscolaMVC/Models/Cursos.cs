//------------------------------------------------------------------------------
// <auto-generated>
//    O código foi gerado a partir de um modelo.
//
//    Alterações manuais neste arquivo podem provocar comportamento inesperado no aplicativo.
//    Alterações manuais neste arquivo serão substituídas se o código for gerado novamente.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EscolaMVC.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cursos
    {
        public Cursos()
        {
            this.Disciplinas = new HashSet<Disciplinas>();
        }
    
        public int CURSOID { get; set; }
        public string CURSODESCRICAO { get; set; }
        public string CURSOCODHABILIDADE { get; set; }
        public string CURSOMODALIDADE { get; set; }
    
        public virtual ICollection<Disciplinas> Disciplinas { get; set; }
    }
}
