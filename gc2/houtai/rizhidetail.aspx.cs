﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class houtai_rizhidetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = ConfigurationManager.AppSettings["Connection"];
            SqlCommand com = new SqlCommand();
            SqlConnection con = new SqlConnection(sql);
            com.Connection = con;
            con.Open();
            com.CommandText = "select * from rizhi where ID=" + Request.QueryString["id"].ToString();
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {

                rizhi.Text = dr["rizhi"].ToString();
                branch.Text = dr["branch"].ToString();
            }
            dr.Close();
            con.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript> 　document.location='rizhi.aspx'; </script>");

    }
}