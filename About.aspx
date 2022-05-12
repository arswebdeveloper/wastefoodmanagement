<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WasteFoodManagement.About" %>

<asp:Content ContentPlaceHolderID="Head" runat="server">
    
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row my-5 d-flex align-items-center">
            <div class="col-md-6">
                <img src="Content/Asset/about.jpg" class="d-block w-100" />
            </div>
            <div class="col-md-6">
                <p style="font-weight: bold"><span style="font-size: 38px">F</span>ood waste management in India is becoming a critical problem due to the continuous increase of the Indian population. Indians waste the maximum amount of food as much as the whole of the UK consumes – a data point which will not be most indicative of our love of surfeit, because it is of our population. Most of the food is wasted in weddings, canteens, hotels, social and family functions, and households.</p>
            </div>
        </div>
        <div class="row my-5 d-flex align-items-center">
            <div class="col-md-6">
                <p style="font-weight: bold"><span style="font-size: 38px">I</span>n this system, we have tried to reduce restaurant food wastage by giving waste food to NGOs. NGOs will raise a request, in case of any leftover food restaurants have. This request is sent to the restaurant manager of that particular restaurant. The NGO Manager then approves the request and assigns it to one of the NGO employees for takeaway and forwards the request to the restaurant. The leftover food at the restaurant can be given to NGOs at the end of the day. The admin can track the history of restaurants and NGOs for the leftover foods</p>
            </div>
            <div class="col-md-6">
                <img src="Content/Asset/food.jpg" class="d-block w-100" />
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
                
            </div>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row d-flex justify-content-center">
                        <img src="Content/Asset/fdbk.gif" class="w-25" />
                    </div>
                    <div class="row d-flex justify-content-center">
                        <h5 class="my-4" style="color: green; font-weight: bold">Feedback Submitted.</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>


   <%-- <script>

        function checkValidation() {
            var name = document.getElementById('formGroupExampleInput');
            var email = document.getElementById('exampleInputEmail1');
            var msg = document.getElementById('exampleInputMsg1');

            if (name != "" && email != "" && msg != "") {

                //$('#exampleModal').modal('show');

            }
            else {
                document.getElementById('lbl1').value = "All fields are required!"
            }
        }
    </script>--%>

</asp:Content>
