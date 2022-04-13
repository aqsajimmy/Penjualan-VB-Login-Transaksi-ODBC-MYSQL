Imports System.Data.Odbc
Public Class URakit

    'Sub cekram()
    '   cmd = New OdbcCommand("select distinct * from rakitan where nama ='" & mobox.Text & "' ", conn)
    '  rd = cmd.ExecuteReader
    ' rd.Read()
    'If rd.HasRows = True Then
    '   ddrxx.Text = rd(7)
    '
    '       If ddrxx.Text = "3" Then
    '          cmd = New OdbcCommand("select * from rakitan where kategori = 'RAM' and ddr = '" & ddrxx.Text & "' ", conn)
    '         rd = cmd.ExecuteReader
    '        Do While rd.Read = True
    '           ram.Items.Add(rd.Item("nama"))
    '      Loop
    '
    '       End If
    '
    '       If ddrxx.Text = "4" Then
    '          cmd = New OdbcCommand("select * from rakitan where kategori = 'RAM' and ddr = '4' ", conn)
    '         rd = cmd.ExecuteReader
    '        Do While rd.Read = True
    ''           ram.Items.Add(rd.Item("nama"))
    '        Loop
    ' End If
    '  End If
    'End Sub


    'Sub motherboard()
    'value a lga
    '    Call koneksi()
    '   cmd = New OdbcCommand("select distinct lga from rakitan where kategori = 'Proc' or kategori = 'proc'", conn)
    '  rd = cmd.ExecuteReader
    ' Do While rd.Read = True
    'Dim lgx As String = rd.Item("lga")
    '       If socket.Text = lgx Then
    '          mobox.Items.Clear()
    '         mobox.Text = "Pilih Motherboard"
    '        cmd = New OdbcCommand("select * from rakitan where kategori = 'Mobo' and lga = '" & lgx & "'", conn)
    '       rd = cmd.ExecuteReader
    '      mobox.Items.Clear()
    '     ddrxx.Clear()
    '    Do While rd.Read = True
    '       mobox.Items.Add(rd.Item(1))
    '  Loop
    '
    '       End If
    '  Loop
    'End Sub

    'Sub cekproc()
    'value a lga
    '    Call koneksi()
    '   cmd = New OdbcCommand("select distinct lga from rakitan where kategori = 'Proc' or kategori = 'proc'", conn)
    '  rd = cmd.ExecuteReader
    ' Do While rd.Read = True
    'Dim lgx As String = rd.Item("lga")
    '       If socket.Text = lgx Then
    '          proc.Items.Clear()
    '         proc.Text = "Pilih Processor"
    '        cmd = New OdbcCommand("select * from rakitan where kategori = 'Proc' and lga = '" & lgx & "'", conn)
    '       rd = cmd.ExecuteReader
    '     proc.Items.Clear()
    '      Do While rd.Read = True
    '        proc.Items.Add(rd.Item("nama"))
    '   Loop
    'End If
    'Loop
    'End Sub
    'Sub sockets()
    'value a brand
    '    Call koneksi()
    '   cmd = New OdbcCommand("select distinct brand from rakitan where kategori = 'Proc' or kategori = 'proc'", conn)
    '  rd = cmd.ExecuteReader
    ' Do While rd.Read = True
    'Dim brnd As String = rd.Item("brand")
    '       If brand.Text = "Intel" Then
    '          socket.Items.Clear()
    '         socket.Text = "Pilih Intel Socket / LGA"
    '        cmd = New OdbcCommand("select lga from rakitan where kategori = 'Proc' and brand = 'Intel'", conn)
    '           rd = cmd.ExecuteReader
    '           socket.Items.Clear()
    '           Do While rd.Read = True
    '               socket.Items.Add(rd.Item("lga"))
    '           Loop
    '       End If
    '       If brand.Text = "AMD" Then
    '           socket.Items.Clear()
    '           socket.Text = "Pilih AMD Socket / LGA"
    '           cmd = New OdbcCommand("select lga from rakitan where kategori = 'Proc' and brand = 'AMD'", conn)
    '           rd = cmd.ExecuteReader
    '
    '           socket.Items.Clear()
    '            Do While rd.Read = True
    '               socket.Items.Add(rd.Item("lga"))
    '          Loop
    '     End If
    '  Loop

    'End Sub

    'Sub setx()
    '   brand.Items.Clear()
    '  brand.Text = "Pilih Brand"
    ' Call koneksi()
    ' cmd = New OdbcCommand("select distinct brand from rakitan where kategori = 'Proc' or kategori = 'proc'", conn)
    '  rd = cmd.ExecuteReader
    '  brand.Items.Clear()
    '  Do While rd.Read = True
    '      brand.Items.Add(rd.Item("brand"))
    '      brand.DisplayMember.Distinct()
    '  Loop
    'End Sub

    Private Sub Label2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub URakit_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        '   Call setx()

    End Sub

    Private Sub Panel2_Paint(ByVal sender As System.Object, ByVal e As System.Windows.Forms.PaintEventArgs) Handles Panel2.Paint

    End Sub

    Private Sub brand_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles brand.TextChanged
        'Call sockets()
    End Sub

    Private Sub socket_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles socket.TextChanged

        'Call cekproc()

    End Sub

    Private Sub proc_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles proc.TextChanged
        'Call motherboard()
    End Sub

    Private Sub mobox_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mobox.TextChanged
        'Call cekram()
    End Sub
End Class
