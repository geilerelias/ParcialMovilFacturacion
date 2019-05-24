<%-- 
    Document   : gestionarCuenta
    Created on : 23/05/2019, 10:02:11 a. m.
    Author     : geile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Facturación</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
    </head>

    <body>
        <div class="bmd-layout-container bmd-drawer-f-l bmd-drawer-overlay">
            <header class="bmd-layout-header" id="header">
                <div class="row flex-nowrap justify-content-between align-items-center" style="background-color:#70b620 ">

                    <div class="col-8 ">
                        <h5 class="p-3  text-white text-capitalize  text-truncate  font-weight-bold" style="">
                            Facturación
                        </h5>
                    </div>
                    <div class="col-4 pt-1">
                        <img src="img/logo.png" class="img-fluid float-right" alt="Responsive image">
                    </div>
                </div>
                <!---------NAVBAR----------------------------->
                <div class="navbar navbar-light bg-faded shadow row" id="navbar" data-spy="affix" data-offset-top="197" style="background-color: #299926;">
                    <div class="col-2">
                        <button class="navbar-toggler  text-white btn bmd-btn-icon btn-raised" type="button" data-toggle="drawer" data-target="#dw-s2" aria-expanded="false">
                            <span class="sr-only">Toggle drawer</span>
                            <i class="material-icons">menu</i>
                        </button>
                    </div>


                    <div class="d-none d-sm-block float-right pr-5">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a style="height: 30px;cursor: pointer;" class="nav-link text-white pt-0 " href="index.jsp">
                                    Registrar Cliente
                                </a>
                            </li>
                            <li class="nav-item">
                                <a style="height: 30px;cursor: pointer;" class="nav-link text-white pt-0 active" href="gestionarCuenta.jsp">
                                    Gestionar Cuenta
                                </a>
                            </li>
                        </ul>
                    </div>

                </div>
            </header>
            <!---------- DRAWER-------->
            <div id="dw-s2" class="bmd-layout-drawer bg-faded " aria-expanded="false" aria-hidden="true">
                <header class="img-menu img-fluid" style="background-color: #cccccc;background-image: linear-gradient(#70b620, #299926);">

                    <a class="navbar-brand title-1 text-white text-capitalize "> <small>Facturación</small> </a>
                </header>
                <ul class="nav flex-column flex-nowrap pt-3">
                    <li class="nav-item">
                        <a class=" flex-unordered flex-nowrap nav-link btn font-weight-bold text-capitalize align-content-center collapse" href="#" data-toggle="collapse" data-target="#menu-maquinaria">
                            <div class="row">
                                <div class="col-1">
                                    <i class="material-icons">
                                        home
                                    </i>

                                </div>
                                <div class="col-3 pt-1">
                                    inicio
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class=" flex-unordered flex-nowrap nav-link btn font-weight-bold text-capitalize align-content-center collapse" href="#" data-toggle="collapse" data-target="#menu-maquinaria">
                            <div class="row">
                                <div class="col-1">
                                    <i class="material-icons">
                                        pageview
                                    </i>

                                </div>
                                <div class="col-3 pt-1">
                                    Simulacion
                                </div>
                            </div>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class=" flex-unordered flex-nowrap nav-link btn font-weight-bold text-capitalize align-content-center" href="../index.html">
                            <div class="row">
                                <div class="col-1">
                                    <i class="material-icons ">clear
                                    </i>
                                </div>
                                <div class="col-3 pt-1">
                                    Salir
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <!------------------- FIN CABECERA----------------------------------->
            <!------CONTENIDO--------------->
            <div class=" container-fluid py-5 " style="height:90vh">
                <div class="row justify-content-center ">

                    <form class="form-inline">
                        <div class="form-group mb-2">
                            <label for="staticEmail2" class="sr-only">Nombre</label>
                            <input type="text" readonly class="form-control-plaintext" id="staticNombre">
                        </div>
                        <div class="form-group mx-sm-3 mb-2">
                            <label for="txtIdentificacion" class="bmd-label-floating">Consultar Identificacion</label>
                            <input type="number" class="form-control" id="txtIdentificacion">
                        </div>
                        <button type="button" id="btnConfirmarIdentidad" class=" btn btn-primary mb-2 ">Confirmar identitidad</button>
                    </form>
                </div>
                <div  class="row justify-content-center ">

                    <div class="card d-none" id="contenedorGestion">
                        <div class="card-body ">
                            <ul class="nav nav-tabs bg-primary" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="resgistrar-cuenta-ahorro-tab" data-toggle="tab" href="#resgistrar-cuenta-ahorro" role="tab" aria-controls="resgistrar-cuenta-ahorro" aria-selected="true">resgistrar cuenta ahorro</a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" id="registrar-cuenta-corriente-tab" data-toggle="tab" href="#registrar-cuenta-corriente" role="tab" aria-controls="registrar-cuenta-corriente" aria-selected="false">registrar cuenta corriente</a>

                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" id="consignar-tab" data-toggle="tab" href="#consignar-cuenta" role="tab" aria-controls="consignar-cuenta" aria-selected="false ">consignar a cuenta</a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" id="retirar-tab" data-toggle="tab" href="#retirar-cuenta" role="tab" aria-controls="retirar-cuenta" aria-selected="false ">retirar de cuenta</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="consultar-saldo-tab" data-toggle="tab" href="#consultar-saldo" role="tab" aria-controls="consultar-saldo" aria-selected="false">consultar saldo</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="resgistrar-cuenta-ahorro" role="tabpanel" aria-labelledby="resgistrar-cuenta-ahorro-tab">
                                    <form>
                                        <div class="form-group ">
                                            <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
                                            <label for="txtIdentificacion " class="bmd-label-floating ">Numero Tarjeta</label>
                                            <input type="number" class="form-control " id="txtIdentificacion ">
                                        </div>
                                        <div class="form-group ">
                                            <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
                                            <label for="txtSaldo" class="bmd-label-floating ">Saldo</label>
                                            <input type="number" class="form-control " id="txtSaldo ">
                                        </div>
                                        <div class="form-group ">
                                            <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
                                            <label for="txtNombre" class="bmd-label-floating ">Fecha Vencimiento</label>
                                            <input type="date" class="form-control" id="txtNombre">
                                        </div>

                                        <div class="text-center ">
                                            <button type="button " class="btn btn-primary btn-raised ">Guardar</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane fade " id="registrar-cuenta-corriente" role="tabpanel" aria-labelledby="registrar-cuenta-corriente-tab">cuenta corriente...</div>
                                <div class="tab-pane fade " id="consignar-cuenta" role="tabpanel" aria-labelledby="consignar-tab">consignar...</div>
                                <div class="tab-pane fade " id="retirar-cuenta" role="tabpanel" aria-labelledby="retirar-tab">retirar...</div>
                                <div class="tab-pane fade" id="consultar-saldo" role="tabpanel" aria-labelledby="consultar-saldo-tab">consultar saldo...</div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


            <footer class="footer ">
                <div class="container-fluid py-3 " style="background-color:#70b620; ">
                    <div class="row ">
                        <div class="col-4 text-white text-center ">
                            <h6>Contacto</h6>
                            <p>Tel. 310 6947004</p>
                        </div>
                        <div class="col-4 text-white text-center ">
                            <h6>Direccion</h6>
                            <p>Calle 31 # 27-28 Valledupar</p>
                        </div>
                        <div class="col-4 text-white text-center ">
                            <h6>Más Información</h6>
                            <a href=" " class="text-white ">Universidad Popular del Cesar</a>
                        </div>
                    </div>
                </div>
                <div class="justify-content-center " style="background-color: #299926 ">
                    <div class="text-center py-1 text-white ">
                        ©
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        Copyright
                    </div>
                </div>
            </footer>
            <!--------------------FOOTER-------------->
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.min.js " ></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js " integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U " crossorigin="anonymous "></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js " integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9 " crossorigin="anonymous "></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script>
                             $(document).ready(function () {

                                 $('body').bootstrapMaterialDesign();
                                 $("#btnConfirmarIdentidad").click(function (e) {
                                     var Identificacion = $("#txtIdentificacion").val();
                                     console.log(Identificacion);
                                     $.ajax({
                                         url: "ClienteService",
                                         type: "POST",
                                         data: {
                                             "Accion": "Consultar",
                                             "Identificacion": Identificacion
                                         }
                                     })
                                             .done(function (response) {
                                                 var json = JSON.parse(response);
                                                 console.log(json);
                                                 if (json[1].estado === true) {
                                                     $("#staticNombre").val("Nombre: "+json[0].nombre);
                                                     $("#contenedorGestion").removeClass("d-none");
                                                     $("#contenedorGestion").addClass("d-block");
                                                 } else {
                                                     Swal.fire({
                                                         type: 'error',
                                                         title: 'Oops...',
                                                         text: json[1].mensaje
                                                     });
                                                     $("#staticNombre").val("");
                                                     $("#contenedorGestion").addClass("d-none");
                                                     $("#contenedorGestion").removeClass("d-block");
                                                 }
                                                 //$("#staticNombre").val();
                                                 console.log("success ");
                                             })
                                             .fail(function () {
                                                 console.log("error ");
                                             })
                                             .always(function () {
                                                 console.log("complete ");
                                             });
                                 });
                             });
        </script>
    </body>

</html>