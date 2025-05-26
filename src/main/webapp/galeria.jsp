<%-- 
    Document   : galeria
    Created on : 26 may. 2025, 11:42:35
    Author     : juan
--%>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FilenameFilter" %>
<%@ page import="java.util.Arrays" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
        <title>Galeria de Imagenes</title>
    </head>
    <body>




        <div class="bg-white">



            <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
                <h2 class="text-2xl font-bold tracking-tight text-gray-900">Galeria de gatitos</h2>

                <div class="mt-6 grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:gap-x-8">

                    <%
        
                String appDir = application.getRealPath("/"); 
                File carpetaImg = new File(appDir, "images");
        
                if(carpetaImg.exists() && carpetaImg.isDirectory() ){
        
            
                    File[] imagenes = carpetaImg.listFiles();
            
                    if(imagenes != null && imagenes.length > 0){
          
            
                        for(File imagen : imagenes){
                
                    %> 

                    <div class="group relative">
                        <img src="<%=request.getContextPath()%>/images/<%=imagen.getName()%>" alt="Gatitos lindos" class="aspect-square w-full rounded-md bg-gray-200 object-cover group-hover:opacity-75 lg:aspect-auto lg:h-80">
                        <div class="mt-4 flex justify-between">
                            <div>
                                <h3 class="text-sm text-gray-700">
                                    <a href="#">
                                        <span aria-hidden="true" class="absolute inset-0"></span>
                                        <%=  imagen.getName()   %>
                                    </a>
                                </h3>
                                <!--    <p class="mt-1 text-sm text-gray-500">Black</p> -->
                            </div>
                            <!--  <p class="text-sm font-medium text-gray-900">$35</p> -->
                        </div>
                    </div>

                        <%
                                            }

            
                                        }
        
                                    }else{
                        %>
                    <p>No hay archivos en : <%= appDir %> </p>
                    <p>La carpeta 'images' no existe o no es un directorio. Ruta completa esperada: <%= carpetaImg.getAbsolutePath() %></p>

                    <% }
        
                    %>



                    <!-- More products... -->
                </div>
            </div>
        </div>

    </body>
</html>
