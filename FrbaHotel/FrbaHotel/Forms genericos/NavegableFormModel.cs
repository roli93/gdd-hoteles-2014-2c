using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel
{
    public partial class NavegableForm
    {
        protected void bindCombo(ComboBox combo, List<Object> elementos)
        {
            combo.Items.AddRange(elementos.ToArray());
        }
    }
}
