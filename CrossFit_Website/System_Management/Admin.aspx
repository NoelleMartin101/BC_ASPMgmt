<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    

      
        <table style="width: 100%; border: none !important">
            <tr>
                <td style="width: 33%; vertical-align: top;">
                    <div class="list-group col-md-3" style="width: 100%">
                        <a class="list-group-item list-group-item-action" href="" style="text-align: left; font-size: 16px; background-color: steelblue; color: white;">Reference Data</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Adaptive Options</a>
                        <a class="list-group-item list-group-item-action" href="Affiliates_List.aspx?returnurl=Admin.aspx">Affiliates</a>
                        <a class="list-group-item list-group-item-action" href="Countries_List.aspx?returnurl=Admin.aspx">Countries</a>
                        <a class="list-group-item list-group-item-action" href="Competitions_List.aspx?returnurl=Admin.aspx">Competitions</a>
                        <a class="list-group-item list-group-item-action" href="Divisions_List.aspx?returnurl=Admin.aspx">Divisions</a>
                        <a class="list-group-item list-group-item-action" href="EventNumbers_List.aspx?returnurl=Admin.aspx">Event Numbers</a>
                        <a class="list-group-item list-group-item-action" href="ExerciseAreas_List.aspx?returnurl=Admin.aspx">Exercise Areas</a>
                        <a class="list-group-item list-group-item-action" href="Exercises_List.aspx?returnurl=Admin.aspx">Exercises</a>
                        <a class="list-group-item list-group-item-action" href="Scales_List.aspx?returnurl=Admin.aspx">Scales</a>
                    </div>
                </td>
                <td style="width: 33%;  vertical-align: top;">
                   <%-- <div class="list-group col-md-3" style="width: 100%">
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx" style="text-align: left; font-size: 16px; background-color: steelblue; color: white;">CrossFit Data</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Competition Events</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Courses</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Event Locations</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Event Workouts</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Coach/Judge Courses</a>
                    </div>--%>
                </td>
                <td style="width: 33%;  vertical-align: top;">
                    <div class="list-group col-md-3" style="width: 100%">
                       <%-- <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx" style="text-align: left; font-size: 16px; background-color: steelblue; color: white;">Athletes & Judges Data</a>--%>
                        <%--<a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">SAR's Requests</a>--%>
                        <%--<a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Athlete Profiles</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Athlete Registered Competitions</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Athlete Benchmarks</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Athlete Event Scores</a>
                        <a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">Judges Profiles</a>--%>
                        <%--<a class="list-group-item list-group-item-action" href="AllUsers_List.aspx?returnurl=Admin.aspx">All Users</a>--%>
                        <%--<a class="list-group-item list-group-item-action" href="AdaptiveOptions_List.aspx?returnurl=Admin.aspx">User Credentials</a>--%>
                    </div>
                </td>          
            </tr>
        </table>   
    <div>
        <a class="list-group-item list-group-item-action" href="ContractAddresses_List.aspx?returnurl=Admin.aspx">Contract Data</a>
        <a class="list-group-item list-group-item-action" href="SystemUsers_List.aspx?returnurl=Admin.aspx">All Users</a>
    </div>
</asp:Content>
