import mysql.connector
import flet as ft
from flet_core import TextField, ElevatedButton, Row, Column, Text

# Variable global para almacenar el nombre de usuario
current_user = None


def connect_db():
    return mysql.connector.connect(
        user='root',
        password='genesisxv',
        host='localhost',
        database='facescan',
        port="3306"
    )


def validate_login(username, password, page):
    global current_user  # Acceder a la variable global
    try:
        connection = connect_db()
        cursor = connection.cursor()
        sql_query = "SELECT * FROM LoginAdmin WHERE username = %s AND password = %s"
        cursor.execute(sql_query, (username, password))
        result = cursor.fetchone()
        if result:
            current_user = username  # Almacenar el nombre de usuario
            print("¡Bienvenido,", username, "!")  # Imprimir mensaje de bienvenida
            page.clean()  # Limpiar la página actual
            welcome_message = Text('¡Bienvenido!')
            page.add(Row(controls=[Column([welcome_message])], alignment=ft.MainAxisAlignment.CENTER))
            page.update()  # Actualizar la página para mostrar el mensaje de bienvenida
            create_logout_button(page)  # Agregar el botón de "Cerrar Sesión"
        else:
            print("Nombre de usuario o contraseña incorrectos")
    except mysql.connector.Error as error:
        print("Error al validar el inicio de sesión:", error)
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()


def create_logout_button(page):
    def logout(event):
        global current_user  # Acceder a la variable global
        if current_user:
            print("Sesión cerrada para:", current_user)
        else:
            print("Sesión cerrada sin usuario")
        current_user = None  # Restablecer el nombre de usuario
        page.clean()  # Limpiar la página actual
        page.title = 'Login'  # Cambiar el título de la página
        page.vertical_alignment = ft.MainAxisAlignment.CENTER
        page.theme_mode = ft.ThemeMode.LIGHT
        page.window_width = 1200
        page.window_height = 800
        page.window_resizable = True

        img = ft.Image(
            src=f"https://raw.githubusercontent.com/DrBabaBoy/FaceScan/main/img/Animation.gif",
            width=150,
            height=150,
            fit=ft.ImageFit.CONTAIN,
        )

        username_field = TextField(label='Usuario', text_align=ft.TextAlign.LEFT, width=200)
        password_field = TextField(label='Contraseña', text_align=ft.TextAlign.LEFT, width=200, password=True)
        login_button = ElevatedButton(text='Iniciar Sesión', width=200)

        def on_login_click(event):
            username = username_field.value
            password = password_field.value
            validate_login(username, password, page)

        login_button.on_click = on_login_click

        page.add(Row(controls=[Column([img])], alignment=ft.MainAxisAlignment.CENTER),
                 Row(controls=[Column([username_field, password_field, login_button])],
                     alignment=ft.MainAxisAlignment.CENTER))

    logout_button = ElevatedButton(text='Cerrar Sesión', width=200)
    logout_button.on_click = logout
    page.add(Row(controls=[Column([logout_button])], alignment=ft.MainAxisAlignment.CENTER))


def main(page: ft.Page) -> None:
    page.title = 'Login'
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.theme_mode = ft.ThemeMode.LIGHT
    page.window_width = 1200
    page.window_height = 800
    page.window_resizable = True

    img = ft.Image(
        src=f"https://raw.githubusercontent.com/DrBabaBoy/FaceScan/main/img/Animation.gif",
        width=150,
        height=150,
        fit=ft.ImageFit.CONTAIN,
    )

    username_field = TextField(label='Usuario', text_align=ft.TextAlign.LEFT, width=200)
    password_field = TextField(label='Contraseña', text_align=ft.TextAlign.LEFT, width=200, password=True)
    login_button = ElevatedButton(text='Iniciar Sesión', width=200)

    def on_login_click(event):
        username = username_field.value
        password = password_field.value
        validate_login(username, password, page)

    login_button.on_click = on_login_click

    page.add(Row(controls=[Column([img])], alignment=ft.MainAxisAlignment.CENTER),
             Row(controls=[Column([username_field, password_field, login_button])],
                 alignment=ft.MainAxisAlignment.CENTER))


ft.app(target=main)
