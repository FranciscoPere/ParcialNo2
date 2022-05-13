using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParcialNo2
{
    public partial class _Default : Page
    {
        static List<Actor> actor = new List<Actor>();
        static List<Pelicula> peli = new List<Pelicula>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Pelicula pelis = new Pelicula();
            pelis.Titulo = TituBox.Text;
            pelis.año = AñoBox.Text;
            pelis.genero = GeneroBox.Text;
            pelis.Estudio = EstudioBox.Text;
            peli.Add(pelis); GridView1.DataSource = peli; GridView1.DataBind();
            actor.Clear(); Guardar();
        }

        protected void Elenco_Click(object sender, EventArgs e)
        {
            Actor actors = new Actor();
            actors.Nombre = NombreBox.Text;
            actors.FechaNacimeitno = FechaNacimiento.SelectedDate;
            actor.Add(actors);
            GridView2.DataSource = actor; GridView2.DataBind();
        }
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(peli);
            string archivo = Server.MapPath("Pelis.json");
            System.IO.File.WriteAllText(archivo, json);
        }

        protected void EliminarP_Click(object sender, EventArgs e)
        {

        }
    }
}