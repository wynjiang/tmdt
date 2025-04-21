<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="USER.aspx.cs" Inherits="DoAn.USER" MasterPageFile="~/MASTERPAGE.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Thông Tin Người Dùng</title>
    <link href="styles/USERinterface.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="user-wrapper">

        <!-- PHẦN THÔNG TIN TRÊN CÙNG -->
        <div class="user-top">
            <div class="user-top-left">
                <img src="image/avatar.png" class="avatar-img" />
                <div class="user-info-text">
                    <strong>TÊN NGƯỜI DÙNG</strong>
                    <br/>Tuổi<br />
                    <span class="username">Tên tài khoản</span>
                </div>
            </div>
        </div>


        <div class="tab-section">
            <div class="tab-left">
                <div class="main-tab">Thông tin tài khoản</div>
                <div class="edit-link">chỉnh sửa</div>
            </div>
            <div class="tab-right">
                LỊCH SỬ MUA HÀNG
            </div>
        </div>

        <!-- ĐỊA CHỈ -->
        <div class="address-box">
            <p> ĐỊA CHỈ:</p>
            <input class="address-input" type="text" placeholder="Input text ..." />

            <div class="address-info">
                Thành phố: ...............................<br />
                Tỉnh: .........................................<br />
                Địa chỉ cụ thể: ..........................., số điện thoại: .....................
            </div>
        </div>

        <!-- SẢN PHẨM VỪA XEM -->
        <div class="product-section">
            <h4><span class="icon">&#9200;</span> SẢN PHẨM VỪA XEM</h4>
            <div class="product-box">
                <asp:Repeater ID="rptViewed" runat="server">
                    <ItemTemplate>
                        <img src="images/thumb.png" class="product-thumb" />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="dropdown-icon">&#9660;</div>
        </div>

        <!-- SẢN PHẨM YÊU THÍCH -->
        <div class="product-section">
            <h4><span class="icon">&#10084;</span> SẢN PHẨM YÊU THÍCH</h4>
            <div class="product-box">
                <asp:Repeater ID="rptFavorite" runat="server">
                    <ItemTemplate>
                        <img src="images/thumb.png" class="product-thumb" />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="dropdown-icon">&#9660;</div>
        </div>

    </div>
</asp:Content>
