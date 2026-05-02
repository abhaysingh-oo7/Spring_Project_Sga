<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background-color: #0f172a;
    color: #f1f5f9;
    font-family: 'Segoe UI', sans-serif;
}

.container {
    margin-top: 50px;
}

.card {
    background-color: #1e293b;
    border: none;
    border-radius: 12px;
    padding: 25px;
    box-shadow: 0 0 20px rgba(0,0,0,0.5);
}

h2 {
    font-weight: bold;
    margin-bottom: 20px;
    color: #38bdf8;
}

.table {
    background-color: #1e293b;
    border-radius: 10px;
    overflow: hidden;
}

.table th {
    background-color: #020617;
    color: #38bdf8;
    font-weight: bold;
    text-transform: uppercase;
}

.table td {
    color: #0e5584;
}

.table tr:hover {
    background-color: #334155;
}

.btn-primary {
    background-color: #2563eb;
    border: none;
    font-weight: bold;
}

.btn-primary:hover {
    background-color: #1d4ed8;
}

.btn-warning {
    background-color: #f59e0b;
    border: none;
    font-weight: bold;
}

.btn-warning:hover {
    background-color: #d97706;
}

a {
    text-decoration: none;
}
</style>

<div class="container">
    <div class="card">

        <h2>Student Management</h2>

        <a href="/addStudent" class="btn btn-primary mb-3">+ Add Student</a>

        <table class="table table-bordered table-hover text-center align-middle">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Course</th>
                <th>Action</th>
            </tr>

            <c:forEach var="s" items="${students}">
                <tr>
                    <td>${s.id}</td>
                    <td>${s.name}</td>
                    <td>${s.email}</td>
                    <td>${s.course != null ? s.course.name : 'N/A'}</td>
                    <td>
                        <a href="/editStudent/${s.id}" class="btn btn-warning btn-sm">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </div>
</div>