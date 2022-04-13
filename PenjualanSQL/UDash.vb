Imports System.Data.Odbc
Public Class UDash

    Sub drevenue()
        cmd = New OdbcCommand("select sum(total_penjualan) from tb_penjualan", conn)
        Dim revtotal As Double = cmd.ExecuteScalar()
        Label5.Text = revtotal.ToString("C")
    End Sub

    Sub dtransaksi()
        Call koneksi()
        cmd = New OdbcCommand("select count(id_penjualan ) from tb_penjualan", conn)
        Dim trxtotal As String = cmd.ExecuteScalar()
        Label6.Text = trxtotal
    End Sub

    Sub datacustomer()
        Call koneksi()
        cmd = New OdbcCommand("select count(id_customer) from tb_customer", conn)
        Dim custotal As String = cmd.ExecuteScalar()
        Label7.Text = custotal

    End Sub

    Private Sub UDash_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call drevenue()
        Call dtransaksi()
        Call datacustomer()

    End Sub
End Class
