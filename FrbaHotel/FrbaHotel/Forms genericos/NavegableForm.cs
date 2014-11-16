using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;
using System.Windows.Forms;

namespace FrbaHotel
{
    public partial class NavegableForm : Form
    {
        private NavegableForm owner;
        public delegate void AfterClose();
        public delegate void ExceptionableTask();
        private AfterClose afterCloseAction;
        protected string successMessage = "La operación se realizó correctamente";
        protected string errorMessage = "";

        public new NavegableForm Owner
        {
            get
            {
                return owner;
            }
            set
            {
                owner = value;
            }
        }

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

        public void OpenDialogue()
        {
            this.ShowDialog();
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

        private void InitializeComponent()
        {
            this.SuspendLayout();
            // 
            // NavegableForm
            // 
            this.ClientSize = new System.Drawing.Size(292, 266);
            this.Name = "NavegableForm";
            this.Load += new System.EventHandler(this.NavegableForm_Load);
            this.ResumeLayout(false);

        }

        private void NavegableForm_Load(object sender, EventArgs e)
        {
        }

        protected void Execute(ExceptionableTask task)
        {
            try
            {
                task();
            }
            catch (ExcepcionFrbaHoteles e)
            {
                MessageBox.Show(e.Message,"Error");
                errorMessage += "  ";
            }
            catch(SystemException)
            {
                MessageBox.Show("Ha ocurrido un error desconocido. Estamos trabajando para solucionarlo");
                errorMessage += "  ";
            }
        }

        protected virtual void ExcecuteAndShow(ExceptionableTask task)
        {
            try
            {
                task();
                MessageBox.Show(successMessage);
                Close();
            }
            catch (ExcepcionFrbaHoteles e)
            {
                MessageBox.Show(e.Message,"Error");
                errorMessage += "  ";
            }
            catch (SystemException)
            {
                MessageBox.Show("Ha ocurrido un error desconocido. Estamos trabajando para solucionarlo");
                errorMessage += "  ";
            }
        }

    }
}
