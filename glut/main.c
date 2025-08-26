#include <GL/glut.h>

// Función para dibujar en la ventana
void display()
{
    glClear(GL_COLOR_BUFFER_BIT);   // Limpia la pantalla

    // Dibujar un triángulo
    glBegin(GL_TRIANGLES);
        glColor3f(1.0, 0.0, 0.0); // Rojo
        glVertex2f(-0.5, -0.5);

        glColor3f(0.0, 1.0, 0.0); // Verde
        glVertex2f(0.5, -0.5);

        glColor3f(0.0, 0.0, 1.0); // Azul
        glVertex2f(0.0, 0.5);
    glEnd();

    glFlush(); // Forzar render
}

int main(int argc, char **argv)
{
    glutInit(&argc, argv);                       // Inicializa GLUT
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB); // Modo simple buffer + RGB
    glutInitWindowSize(500, 500);                // Tamaño ventana
    glutInitWindowPosition(100, 100);            // Posición inicial
    glutCreateWindow("Hola OpenGL con GLUT");    // Crea ventana con título

    // Color de fondo (negro)
    glClearColor(0.0, 0.0, 0.0, 1.0);

    // Función de dibujo
    glutDisplayFunc(display);

    glutMainLoop(); // Bucle principal
    return 0;
}
