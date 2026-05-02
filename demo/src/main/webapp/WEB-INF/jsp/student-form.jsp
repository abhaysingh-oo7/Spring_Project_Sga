<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
label {
    color: #38bdf8;   
    font-weight: bold;
}

body {
    background-color: #0f172a;
    color: #f1f5f9;
    font-family: 'Segoe UI', sans-serif;
}

.container {
    margin-top: 50px;
    max-width: 600px;
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
    color: #38bdf8;
    margin-bottom: 20px;
    text-align: center;
}

label {
    font-weight: 600;
}

.form-control, .form-select {
    background-color: #020617;
    color: #f1f5f9;
    border: 1px solid #334155;
}

.form-control:focus, .form-select:focus {
    border-color: #38bdf8;
    box-shadow: none;
}

.btn-primary {
    background-color: #2563eb;
    border: none;
    font-weight: bold;
    width: 100%;
}

.btn-primary:hover {
    background-color: #1d4ed8;
}

.btn-secondary {
    margin-top: 10px;
    width: 100%;
}

a {
    text-decoration: none;
}
</style>

<div class="container">
    <div class="card">

        <h2>Add / Edit Student</h2>

        <form action="/saveStudent" method="post">

            <input type="hidden" name="id" value="${student.id}" />

            <div class="mb-3">
                <label>Name</label>
                <input type="text" name="name" value="${student.name}" class="form-control" required />
            </div>

            <div class="mb-3">
                <label>Email</label>
                <input type="text" name="email" value="${student.email}" class="form-control" required />
            </div>

            <div class="mb-3">
                <label>Course</label>
                
                <select name="course.id" class="form-select">
                    <c:forEach var="c" items="${courses}">
                        <option value="${c.id}">
                            ${c.name}
                            <!-- ${student.course != null && student.course.id == c.id ? 'selected' : ''}> -->
                        </option>
                    </c:forEach>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Save</button>

        </form>

        <a href="/students" class="btn btn-secondary">Back to List</a>

    </div>
</div>