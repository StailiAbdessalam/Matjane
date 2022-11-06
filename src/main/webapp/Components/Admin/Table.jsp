<%@ page import="Models.Centreadmin" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: abdessalm staili
  Date: 11/2/2022
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<% List<Centreadmin> Allcenteradmin = (ArrayList<Centreadmin>)request.getAttribute("Allcenteradmin");%>
<body>

  <div class="mt-8">

    <div class="flex flex-col mt-6">
      <div
              class="py-2 -my-2 overflow-x-auto sm:-mx-6 sm:px-6 lg:-mx-8 lg:px-8"
      >
        <div
                class="inline-block min-w-full overflow-hidden align-middle border-b border-gray-200 shadow sm:rounded-lg"
        >
          <table class="min-w-full">
            <thead>
            <tr>
              <th
                      class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase bg-gray-100 border-b border-gray-200"
              >
                Name
              </th>
              <th
                      class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase bg-gray-100 border-b border-gray-200"
              >
                Id
              </th>
              <th
                      class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase bg-gray-100 border-b border-gray-200"
              >
                Status
              </th>
              <th
                      class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase bg-gray-100 border-b border-gray-200"
              >
                Role
              </th>
              <th
                      class="px-6 py-3 bg-gray-100 border-b border-gray-200"
              ></th>
            </tr>
            </thead>

            <tbody class="bg-white">
            <%for(Centreadmin centerAdmin:Allcenteradmin){%>
            <tr v-for="(u, index) in wideTableData" :key="index">
              <td
                      class="px-6 py-4 border-b border-gray-200 whitespace-nowrap"
              >
                <div class="flex items-center">
                  <div class="flex-shrink-0 w-10 h-10">
                    <img
                            class="w-10 h-10 rounded-full"
                            src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                            alt="profile pic"
                    />
                  </div>

                  <div class="ml-4">
                    <div
                            class="text-sm font-medium leading-5 text-gray-900"
                    >
                      <%=centerAdmin.getCafullname()%>
                    </div>
                    <div class="text-sm leading-5 text-gray-500">
                      <%=centerAdmin.getCaemail()%>
                    </div>
                  </div>
                </div>
              </td>

              <td
                      class="px-6 py-4 border-b border-gray-200 whitespace-nowrap"
              >
                <div class="text-sm leading-5 text-gray-900">
                  <%=centerAdmin.getId()%>
                </div>
              </td>

              <td
                      class="px-6 py-4 border-b border-gray-200 whitespace-nowrap"
              >
                    <span
                            class="inline-flex px-2 text-xs font-semibold leading-5 text-green-800 bg-green-100 rounded-full"
                    >Active</span
                    >
              </td>

              <td
                      class="px-6 py-4 text-sm leading-5 text-gray-500 border-b border-gray-200 whitespace-nowrap"
              >
                Admin Center
              </td>

            </tr>
            <%}%>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
