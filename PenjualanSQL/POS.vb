Imports System.Data.Odbc
Public Class POS

    Private Sub POS_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call koneksi()
        Call UPenjualan1.BringToFront()

    End Sub
End Class