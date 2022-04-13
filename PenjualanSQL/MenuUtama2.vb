Imports System.Data.Odbc
Public Class MenuUtama2
    Private Sub HideSubMenu()
        PMaster.Visible = False
        PTrx.Visible = False
    End Sub
    Private Sub ShowSubMenu(ByVal SubMenu As Panel)
        If SubMenu.Visible = False Then
            HideSubMenu()
            SubMenu.Visible = True
        Else
            HideSubMenu()
        End If

    End Sub


    Private Sub MenuUtama2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call HideSubMenu()
        Call koneksi()
        Call UDash1.BringToFront()
        Call UDash1.datacustomer()
        Call UDash1.drevenue()
        Call UDash1.dtransaksi()
    End Sub

    Private Sub btMaster_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btMaster.Click
        ShowSubMenu(PMaster)
    End Sub

    Private Sub btTransaksi_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btTransaksi.Click
        ShowSubMenu(PTrx)
    End Sub

    Private Sub btDash_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btDash.Click
        HideSubMenu()
        UDash1.BringToFront()
        Call UDash1.drevenue()
        Call UDash1.dtransaksi()
        Call UDash1.datacustomer()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        HideSubMenu()
        USupplier1.BringToFront()
        Call USupplier1.tampil_supplier()
        USupplier1.id_supplier.Focus()
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        HideSubMenu()
        UCustomer1.BringToFront()
        Call UCustomer1.tampil_customer()
        UCustomer1.id_customer.Focus()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        If MessageBox.Show("Are you sure to Exit ?", "", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        HideSubMenu()
        UBarang1.BringToFront()
        Call UBarang1.tampil_barang()
        UBarang1.kode_brg.Focus()
    End Sub

    Private Sub Button13_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button13.Click
        HideSubMenu()
        UPenjualan1.BringToFront()
        Call UPenjualan1.notransaksi()
        UPenjualan1.id_customer.Select()
        Call UPenjualan1.grandtotal()
        Call UPenjualan1.tanggal()
        Call UPenjualan1.cbkodecustomer()
    End Sub

    Private Sub Button14_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button14.Click
        HideSubMenu()
        UPembelian1.BringToFront()
    End Sub

    Private Sub Panel3_Paint(ByVal sender As System.Object, ByVal e As System.Windows.Forms.PaintEventArgs) Handles Panel3.Paint

    End Sub

    Private Sub UPembelian1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UPembelian1.Load

    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        HideSubMenu()
        URakit1.BringToFront()
    End Sub

    Private Sub Button9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button9.Click
        HideSubMenu()
        UCoba11.BringToFront()
    End Sub
End Class