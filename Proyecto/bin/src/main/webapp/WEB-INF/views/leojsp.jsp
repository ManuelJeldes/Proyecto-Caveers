<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>segunda vista</title>
  <style>
    #main {
      width: 100%;
      height: 100%;
      background-color: #0f111e;
    }
    .footer {
      background-color: #f4f4f4;
      padding: 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      bottom: 0;
      width: 100%;
    }
    .footer h2 {
      margin: 0;
      font-size: 18px;
    }

    .footer h1 {
      margin: 0;
      font-size: 24px;
    }
    .square-container {
    width: 100%;
    height: 700px;
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 10px;
    background-color: #0f111e;
  }
  .square {
    width: 100%;
    padding-top: 90%;
    border: 1px solid black;
    background-color: #343a40;
  }
  </style>
</head>
<body>
  <div id="main">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
          <a class="navbar-brand" href="#">Logo</a>
          <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarNav"
              aria-controls="navbarNav"
              aria-expanded="false"
              aria-label="Toggle navigation"
          >
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                  <li class="nav-item">
                      <a class="nav-link" href="#">Opción 1</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="#">Opción 2</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="#">Opción 3</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="#">Opción 4</a>
                  </li>
              </ul>
          </div>
      </div>
  </nav>
  </div>
  <h1 style="text-align: center; color: white;">Welcome Name</h1>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12">
        <div class="square-container">
          <div class="square"></div>
          <div class="square"></div>
          <div class="square"></div>
          <div class="square"></div>
          <div class="square"></div>
          <div class="square"></div>
        </div>
      </div>
    </div>
    </div>
    <footer class="footer">
        <div class="footer-left">
          <h2>Contactos</h2>
        </div>
        <div class="footer-center" style="text-align: center;">
          <h1>Carreras</h1>
        </div>
      </footer>
      </div>
</body>
</html>
