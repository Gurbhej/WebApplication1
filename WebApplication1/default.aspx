<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" /> 
    <link rel="stylesheet" href="css/custom.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="container-fluid">

    
<!-- GAME 1 STARTS -->
    <div class="row">
    <ul class="col-xs-12 col-sm-12 col-md-3 " style="margin-left:140px;"  >
      <li>
        <div class="game1">
          <p style="font-size:22px; text-align:center"><strong>GAME 1</strong></p>
        
         <label for="RadioList1" class="control-label col-sm-2">Result:</label>
         <asp:RadioButtonList ID="RadioList1"  runat="server">
           <asp:ListItem class="radio-btn" Text="win" Value="win1"></asp:ListItem>
           <asp:ListItem class="radio-btn" Text="loose" Value="loose1"></asp:ListItem>
         </asp:RadioButtonList>
        
        <!-- Validation for #RadioList1 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator13" 
             runat="server" 
             ErrorMessage="Choose the Result" 
             cssclass="alert-danger" 
             ControlToValidate="RadioList1" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
        <!-- Validation for #RadioList1 ENDSS -->  <br />

        <label for="txtScored1" class="control-label col-sm-2 lbl-name">Scored:</label>
        <asp:TextBox ID="txtScored1" class="txtScored1" runat="server"></asp:TextBox><br />
            
      <!-- Validation for #txtScored1 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator1" 
             runat="server" 
             ErrorMessage="Enter the points Scored" 
             cssclass="alert-danger" 
             ControlToValidate="txtScored1" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator1" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtScored1"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtScored1 validation ends -->

        <label for="txtAllowed1" class="control-label col-sm-2 lbl-name">Allowed:</label>
        <asp:TextBox ID="txtAllowed1" Class="txtAllowed1" runat="server"></asp:TextBox><br />

      <!-- Validation for #txtAllowed1 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator2" 
             runat="server" 
             ErrorMessage="Enter the Allowed Score" 
             cssclass="alert-danger" 
             ControlToValidate="txtAllowed1" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator2" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtAllowed1"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtAllowed1 validation ends -->

      <!-- COMPARE VALIDATOR -->

        <p> <asp:CompareValidator
             ID="CompareValidator1" 
             runat="server" 
             ErrorMessage="ALLOWED and SCORED should be different"
             ControlToValidate="txtAllowed1"
             ControlToCompare="txtScored1"
             cssclass="alert-danger" 
             operator ="NotEqual"
             Display="Dynamic">
          </asp:CompareValidator><p/>
        <!-- compare validation ENDS -->

        <label for="txtSpectator1" class="control-label col-sm-2 lbl-name">Spectators:</label>
        <asp:TextBox ID="txtSpectator1" Class="txtSpectator1" runat="server"></asp:TextBox>
             
      <!-- Validation for #txtSpectator1 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator3" 
             runat="server" 
             ErrorMessage="Enter total spectators" 
             cssclass="alert-danger" 
             ControlToValidate="txtSpectator1" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator3" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtSpectator1"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtSpectator1 validation ends -->

        </div>
       </li> 
     </ul>

    <!-- GAME 1 ENDS -->

   <!-- GAME 2 STARTS -->

     <ul class="col-xs-12 col-sm-12 col-md-3" style="margin-left:-80px;" >
      <li>
        <div class="game2">
          <p style="font-size:22px; text-align:center""><strong>GAME 2</strong></p>

          <label for="RadioList2" class="control-label col-sm-2">Result:</label>
            <asp:RadioButtonList ID="RadioList2"  runat="server">
              <asp:ListItem class="radio-btn" Text="win" Value="win2"></asp:ListItem>
              <asp:ListItem class="radio-btn" Text="loose" Value="loose2"></asp:ListItem>
            </asp:RadioButtonList>
        
        <!-- Validation for #RadioList2 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator14" 
             runat="server" 
             ErrorMessage="Choose the Result" 
             cssclass="alert-danger" 
             ControlToValidate="RadioList2" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
        <!-- Validation for #RadioList2 ENDSS -->  <br />

          <label for="txtScored2" class="control-label col-sm-2">Scored:</label>
          <asp:TextBox ID="txtScored2" class="txtScored2" runat="server"></asp:TextBox> <br />

      <!-- Validation for #txtScored2 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator4" 
             runat="server" 
             ErrorMessage="Enter the points Scored" 
             cssclass="alert-danger" 
             ControlToValidate="txtScored2" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator4" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtScored2"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtScored2 validation ends -->

        <label for="txtAllowed2" class="control-label col-sm-2">Allowed:</label>
        <asp:TextBox ID="txtAllowed2" class="txtAllowed2" runat="server"></asp:TextBox> <br />

      <!-- Validation for #txtAllowed2 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator5" 
             runat="server" 
             ErrorMessage="Enter the score allowed" 
             cssclass="alert-danger" 
             ControlToValidate="txtAllowed2" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator5" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtAllowed2"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtAllowed2 validation ends -->

             <!-- COMPARE VALIDATOR -->

        <p> <asp:CompareValidator
             ID="CompareValidator2" 
             runat="server" 
             ErrorMessage="ALLOWED and SCORED should be different"
             ControlToValidate="txtAllowed2"
             ControlToCompare="txtScored2"
             cssclass="alert-danger" 
             operator ="NotEqual"
             Display="Dynamic">
          </asp:CompareValidator><p/>

        <!-- compare validation ENDS -->

        <label for="txtSpectator2" class="control-label col-sm-2">Spectators:</label>
        <asp:TextBox ID="txtSpectator2" class="txtSpectator2" runat="server"></asp:TextBox>

      <!-- Validation for txtSpectator2 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator6" 
             runat="server" 
             ErrorMessage="Enter total spectators" 
             cssclass="alert-danger" 
             ControlToValidate="txtSpectator2" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator6" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtSpectator2"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtSpectator2 validation ends -->

       </div>
      </li>
     </ul>
    
     <!-- GAME 2 ENDS -->

     
     <!-- GAME 3 STARTS -->

     <ul class=" col-xs-12 col-sm-12 col-md-3" style="margin-left:-80px";>
       <li>
         <div class="game3">
          <p style="font-size:22px; text-align:center"><strong>GAME 3</strong></p>

         <label for="RadioList3" class="control-label col-sm-2">Result:</label> 
         <asp:RadioButtonList ID="RadioList3" runat="server">
             <asp:ListItem class="radio-btn" Text="win" Value="win3"></asp:ListItem>
             <asp:ListItem class="radio-btn" Text="loose" Value="loose3"></asp:ListItem>
         </asp:RadioButtonList>  

        <!-- Validation for #RadioList3 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator15" 
             runat="server" 
             ErrorMessage="Choose the Result" 
             cssclass="alert-danger" 
             ControlToValidate="RadioList3" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
        <!-- Validation for #RadioList3 ENDSS -->  <br />

        <label for="txtScored3" class="control-label col-sm-2">Scored:</label>
        <asp:TextBox ID="txtScored3" class="txtScored3" runat="server"></asp:TextBox><br />

       <!-- Validation for #txtScored3 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator7" 
             runat="server" 
             ErrorMessage="Enter the points Scored" 
             cssclass="alert-danger" 
             ControlToValidate="txtScored3" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator7" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtScored3"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtScored3 validation ends -->

        <label for="txtAllowed3" class="control-label col-sm-2">Allowed:</label>
        <asp:TextBox ID="txtAllowed3" class="txtAllowed3" runat="server"></asp:TextBox><br />

      <!-- Validation for #txtAllowed3 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator8" 
             runat="server" 
             ErrorMessage="Enter the score allowed" 
             cssclass="alert-danger" 
             ControlToValidate="txtAllowed3" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator8" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtAllowed3"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtAllowed3 validation ends -->

              <!-- COMPARE VALIDATOR -->

        <p> <asp:CompareValidator
             ID="CompareValidator3" 
             runat="server" 
             ErrorMessage="ALLOWED and SCORED should be different"
             ControlToValidate="txtAllowed3"
             ControlToCompare="txtScored3"
             cssclass="alert-danger" 
             operator ="NotEqual"
             Display="Dynamic">
          </asp:CompareValidator><p/>
        <!-- compare validation ENDS -->

        <label for="txtSpectator3" class="control-label col-sm-2">Spectators:</label>
        <asp:TextBox ID="txtSpectator3" class="txtSpectator3" runat="server"></asp:TextBox>

               <!-- Validation for #txtSpectator3 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator9" 
             runat="server" 
             ErrorMessage="Enter total spectators" 
             cssclass="alert-danger" 
             ControlToValidate="txtSpectator3" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator9" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtSpectator3"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtSpectator3 validation ends -->

        </div>
       </li>
           </ul>

    <!-- GAME 3 ENDS -->

    <!-- GAME 4 STARTS -->
   
        <ul class="col-xs-12 col-sm-12 col-md-3" style="margin-left:-80px;" >
       <li>
        <div class="game4">
            <p style="font-size:22px; text-align:center"><strong>GAME 4</strong></p>

         <label for="RadioList4" class="control-label col-sm-2"  >Result:</label>
         <asp:RadioButtonList ID="RadioList4"  runat="server">
             <asp:ListItem class="radio-btn" Text="win" Value="win4"></asp:ListItem>
             <asp:ListItem class="radio-btn" Text="loose" Value="loose4"></asp:ListItem>
         </asp:RadioButtonList> 

        <!-- Validation for #RadioList4 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator16" 
             runat="server" 
             ErrorMessage="Choose the Result" 
             cssclass="alert-danger" 
             ControlToValidate="RadioList4" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
        <!-- Validation for #RadioList4 ENDSS -->  <br />

        <label for="txtScored4" class="control-label col-sm-2">Scored:</label>
        <asp:TextBox ID="txtScored4" class="txtScored4" runat="server"></asp:TextBox><br />

             <!-- Validation for #txtScored4 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator10" 
             runat="server" 
             ErrorMessage="Enter the points Scored" 
             cssclass="alert-danger" 
             ControlToValidate="txtScored4" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator10" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtScored4"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtScored4 validation ends -->

        <label for="txtAllowed4" class="control-label col-sm-2">Allowed:</label>
        <asp:TextBox ID="txtAllowed4" class="txtAllowed4" runat="server"></asp:TextBox><br />

             <!-- Validation for #txtScored3 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator11" 
             runat="server" 
             ErrorMessage="Enter the score allowed" 
             cssclass="alert-danger" 
             ControlToValidate="txtAllowed4" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator11" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtAllowed4"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtAllowed4 validation ends -->

             <!-- COMPARE VALIDATOR -->

        <p> <asp:CompareValidator
             ID="CompareValidator4" 
             runat="server" 
             ErrorMessage="ALLOWED and SCORED should be different"
             ControlToValidate="txtAllowed4"
             ControlToCompare="txtScored4"
             cssclass="alert-danger" 
             operator ="NotEqual"
             Display="Dynamic">
          </asp:CompareValidator><p/>
        <!-- compare validation ENDS -->

        <label for="txtSpectator4" class="control-label col-sm-2">Spectators:</label>
        <asp:TextBox ID="txtSpectator4" class="txtSpectator4" runat="server"></asp:TextBox>

             <!-- Validation for #txtSpectator4 -->
         <asp:RequiredFieldValidator 
             ID="RequiredFieldValidator12" 
             runat="server" 
             ErrorMessage="Enter total spectators" 
             cssclass="alert-danger" 
             ControlToValidate="txtSpectator4" 
             display="Dynamic">
         </asp:RequiredFieldValidator>
         <asp:RangeValidator 
             ID="RangeValidator12" 
             runat="server" 
             ErrorMessage="Invalid Input"
             cssclass="alert-danger" 
             ControlToValidate="txtSpectator4"
             MaximumValue="99999999" 
             MinimumValue="0" 
             Display="Dynamic">
         </asp:RangeValidator> <br /> 
      <!--  #txtSpectator4 validation ends -->

        </div>
       </li>
     </ul><!-- /row end -->
    </div>
    <!-- GAME 4 ENDS -->

   </div>  <br /> <br /> <!-- /container-fluid -->
   
    <!-- Code to display the output -->

       <asp:Button ID="btnCalculate" runat="server" Text="Calculate total" OnClick="btnCalculate_click" class="calc-btn btn btn-primary" />  <br /><br />
       

    <asp:Label ID="reslt" runat="server" Visible="false">
        
        <div class="container-fluid">

        <div>
             Wins : <asp:Label ID="lblwin" runat="server"  > </asp:Label>
        </div>
        <div>
            Losses :  <asp:Label  ID="lblloss" runat="server"> </asp:Label>
        </div>
        <div>
           Winning % : <asp:Label  ID="lblwinPercent" runat="server"  >  </asp:Label>
        </div>
        <div>
            Total Points Scored : <asp:Label  ID="lblTotalScored" runat="server" > </asp:Label>
        </div>
        <div>
            Total Points Allowed : <asp:Label  ID="lblTotalAllowed" runat="server" > </asp:Label>
        </div>
        <div>
            Points Difference :  <asp:Label  ID="lblDifference" runat="server" > </asp:Label>
        </div>
         <div>
           Total Attendence :  <asp:Label  ID="lblAttendence" runat="server"> </asp:Label>
        </div>
        <div>
           Average Attendence :  <asp:Label  ID="lblAvAttend" runat="server"  > </asp:Label>
        </div>
      </div> <!-- container ends -->
    </asp:Label>
    

</asp:Content>
