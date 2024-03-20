<%@ Page Title="" Language="C#" MasterPageFile="~/ql.Master" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="WebApplication1.qlNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noiDung" runat="server">
    <h2 class="text-center">DANH SÁCH NHÂN VIÊN</h2>
    <div class="text-right">
        <a href="ThemNhanVien.aspx" class="btn btn-info">Thêm Nhân viên</a>
    </div>
    <asp:SqlDataSource ID="dsNhanVien" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
        InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)"
        SelectCommand="SELECT * FROM [NhanVien]"
        UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV" >
        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HoNV" Type="String" />
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoNV" Type="String" />
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
            <asp:Parameter Name="MaNV" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="gvNhanVien" runat="server" AutoGenerateColumns="False" AllowPaging="True" CssClass="table table-bordered table-hover"
        DataKeyNames="MaNV" DataSourceID="dsNhanVien" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" ReadOnly="True" />
            <asp:BoundField DataField="HoNV" HeaderText="Họ nhân viên" />
            <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phái" />
            <asp:BoundField DataField="NgaySinh" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày sinh" />
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi sinh" />
            <asp:BoundField DataField="MaPhong" HeaderText="Mã phòng" />
            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ButtonType="Button"/>
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle CssClass="bg-info" BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"/>
        <PagerSettings Mode="Numeric"/>
        <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
        
    </asp:GridView>
</asp:Content>
