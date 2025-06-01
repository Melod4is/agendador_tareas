CREATE TABLE agendador.tema (
	id_tema SERIAL PRIMARY KEY,
	nombre_tema VARCHAR(255) NOT NULL
)

CREATE TABLE agendador.tareas (
 id_tarea SERIAL PRIMARY KEY,
 tema_id INT NOT NULL,
 descripcion TEXT NOT NULL,
 fecha_limite DATE NOT NULL,
 
 FOREIGN KEY (tema_id) REFERENCES agendador.tema(id_tema)
)
