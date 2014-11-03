using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel
{
    public partial class NavegableForm
    {
        protected void bindCombo<T>(ComboBox combo, List<T> elementos)
        {
            combo.Items.AddRange(elementos.Cast<Object>().ToList().ToArray());
        }

        protected void bindCheckedListBox<T>(CheckedListBox list, List<T> elementos)
        {
            list.Items.AddRange(elementos.Cast<Object>().ToList().ToArray());
        }

        protected void bindDomainUpDown<T>(DomainUpDown list, List<T> elementos)
        {
            list.Items.AddRange(elementos.Cast<Object>().ToList().ToArray());
        }
    }
}
