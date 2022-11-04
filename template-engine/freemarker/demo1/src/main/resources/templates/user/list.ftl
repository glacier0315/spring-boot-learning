<#include "/core/index.ftl" />
<@wordspace>
    <div>
        <table>
            <thead>
            <tr>
                <td>id</td>
                <td>name</td>
                <td>pwd</td>
                <td>sex</td>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.sex}</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>

</@wordspace>
