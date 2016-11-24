﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PIM_VIII.VO;
using PIM_VIII.Control;

namespace PIM_VIII
{
    public partial class CadastrarDisciplina : System.Web.UI.Page
    {
        DataSet DsAtividades;
        DataSet DsCursos;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    DsCursos = CursoControl.GetAllDataSetCurso();
                    ddlCurso.DataSource = DsCursos;
                    ddlCurso.DataTextField = "Curso";
                    ddlCurso.DataValueField = "ID_CURSO";
                    ddlCurso.DataBind();

                    DsAtividades = AtividadeControl.GetAllDataSetAtividade();
                    ddlAtividade.DataSource = DsAtividades;
                    ddlAtividade.DataTextField = "Atividade";
                    ddlAtividade.DataValueField = "ID_ATIVIDADE";
                    ddlAtividade.DataBind();
                }
                catch (Exception ex)
                {
                    msgRetorno.Text = ex.Message;
                    msgRetorno.ForeColor = System.Drawing.Color.Red;
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                string nome = txtDisciplina.Text.ToUpper();
                int idCurso = int.Parse(ddlCurso.SelectedValue);
                int idAtividade = int.Parse(ddlAtividade.SelectedValue);

                Disciplina disciplina = new Disciplina();

                disciplina.Nome = nome;
                disciplina.curso = new Curso { Id = idCurso };
                /*
                disciplina.atividade = new Atividade { Id = idAtividade };

                ctlDisciplina.InsertDisciplina(disciplina);
                */
        }
    }
}