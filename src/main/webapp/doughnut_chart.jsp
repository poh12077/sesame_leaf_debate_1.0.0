<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="data" class="user.Data" scope="page" />
<jsp:setProperty name="data" property="check_option" />
<jsp:setProperty name="data" property="question_number" />
<jsp:setProperty name="data" property="userID" />
<jsp:setProperty name="data" property="number_of_check_options" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
   <link rel="stylesheet" href="doughnut_chart.css">
</head>
<body>
<%
	UserDAO userDAO = new UserDAO();
	try {
		if (session.getAttribute("userID") == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('you have to sign in first .')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} else {
			String userID = session.getAttribute("userID").toString();
			data.setUserID(userID);
		}

		int updateResult = userDAO.update(data);
		if (updateResult >= -1) {
			System.out.println("database update succeeded");
		}

	} catch (Exception e) {
		System.out.println("database update failed");
		e.printStackTrace();
	}
	%>

	<canvas id="canvas_doughnut"  width=300 height=300 ></canvas>
	<script src="chartjs-plugin-doughnutlabel.js"></script>
<script src="chartjs-plugin-doughnutlabel.min.js"></script>

			
<script>

var xValues1 = [1,2,3,4,5,6,7,8,9,10];
var yValues1 = [<%=userDAO.read_total_check_result(data.getQuestion_number(),"check_1") %>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_2") %>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_3") %>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_4") %>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_5") %>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_6")%>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_7")%>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_8")%>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_9")%>, <%=userDAO.read_total_check_result(data.getQuestion_number(),"check_10")%> ];
let number_of_check_options = <%=data.getNumber_of_check_options()%>;
for(let i=0; i< 10 - number_of_check_options; i++){
	yValues1.pop();
}

var barColors1 = [
  "#ff0000",
  "#ff8000",
  "#00ffff",
  "#0000ff",
  "#ff0080"
];

let total_respondent_number = yValues1.reduce((partialSum, a) => partialSum + a, 0);
var ctx = document.getElementById("canvas_doughnut").getContext('2d');

new Chart("canvas_doughnut", {
    type: "doughnut",
    data: {
        labels: xValues1,
        datasets: [{
            backgroundColor: barColors1,
            data: yValues1
        }]
    },
    options: {
        plugins: {
            datalabels: {
                display: true,
                backgroundColor: '#ccc',
                borderRadius: 3,
                font: {
                    color: 'red',
                    weight: 'bold',
                }, 
                formatter: (value, ctx) => {
                    let datasets = ctx.chart.data.datasets;
                    if (datasets.indexOf(ctx.dataset) === datasets.length - 1) {
                      let sum = datasets[0].data.reduce((a, b) => a + b, 0);
                      let percentage = Math.round((value / sum) * 100) + '%';
                      return percentage;
                    } else {
                      return percentage;
                    }
                  }
            },
            doughnutlabel: {
                labels: [{
                    text: total_respondent_number,
                    font: {
                        size: 20,
                        weight: 'bold'
                    }
                }, {
                    text: "total"
                }]
            }
        },
        title: {
            display: false,
            text: "test"
        },
        legend: {
            display: false
        },
        tooltips: {
            enabled: true
         },
        layout: {
            padding: 0
        },
        responsive: false
    }
});


</script>

</body>
</html>