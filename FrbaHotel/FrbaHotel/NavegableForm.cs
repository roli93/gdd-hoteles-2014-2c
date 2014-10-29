using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Windows.Forms;

namespace FrbaHotel
{
    public abstract class NavegableForm : Form
    {
        private NavegableForm owner;
        public delegate void AfterClose();
        private AfterClose afterCloseAction;

        public NavegableForm()
        {
            this.owner = null;
            this.afterCloseAction = DoNothing;
            this.FormClosing += NavegableClose;
        }

        public NavegableForm(NavegableForm owner):this()
        {
            this.owner = owner;
        }

        public NavegableForm(NavegableForm owner, AfterClose afterCloseAction): this(owner)
        {
            this.afterCloseAction = afterCloseAction;
        }

        private void NavegableClose(object sender, FormClosingEventArgs e)
        {
            afterCloseAction();
        }

        public void Open()
        {
            this.Show();
        }

        public void StandaloneOpen()
        {
            this.Show();
            owner.Hide();
            afterCloseAction = ReopenOwner;
        }

        public void FinalStandaloneOpen()
        {
            this.Show();
            owner.Hide();
            afterCloseAction = CloseOwner;
        }

        public void CloseOwner()
        {
            owner.Close();
        }

        public void ReopenOwner()
        {
            owner.Show();
        }

        public void DoNothing()
        {
        }

    }
}
