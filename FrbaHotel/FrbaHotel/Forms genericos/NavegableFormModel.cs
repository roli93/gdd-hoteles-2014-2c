using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Security.Cryptography;

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

        public String getSha256(String input)
        {
            SHA256Managed encriptador = new SHA256Managed();
            byte[] inputEnBytes = Encoding.UTF8.GetBytes(input);
            byte[] inputHashBytes = encriptador.ComputeHash(inputEnBytes);
            return BitConverter.ToString(inputHashBytes).Replace("-", String.Empty).ToLower();
        }
    }
}
