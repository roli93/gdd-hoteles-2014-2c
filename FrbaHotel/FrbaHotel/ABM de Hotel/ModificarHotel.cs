﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class ModificarHotel : AltaHotel
    {
        protected int idHotel;

        public ModificarHotel()
        {
            InitializeComponent();
        }

        public ModificarHotel(NavegableForm owner, int unIdHotel) : base(owner) 
        {
            idHotel = unIdHotel;
            InitializeComponent();
        }



    }
}
