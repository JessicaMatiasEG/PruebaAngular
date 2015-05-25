import com.mx.eglobal.Escuelas;
import com.mx.eglobal.Alumnos;
class BootStrap {

    def init = { servletContext ->

    	def a1,a2,a3,a4,e1,e2,e3,e4;
	a1=new Alumnos(nombre:"Ana", appaterno:"Arenas",apmaterno:"Aguilar").save(failonError:true);
	a2=new Alumnos(nombre:"Ana", appaterno:"Arenas",apmaterno:"Aguilar").save(failonError:true);
	a3=new Alumnos(nombre:"Ana", appaterno:"Arenas",apmaterno:"Aguilar").save(failonError:true);
	a4=new Alumnos(nombre:"Ana", appaterno:"Arenas",apmaterno:"Aguilar").save(failonError:true);

	e1=new Escuelas(nombre:"ESCOM", clave:"630").save(failonError:true);
	e2=new Escuelas(nombre:"ESIME", clave:"640").save(failonError:true);
	e3=new Escuelas(nombre:"ESFM", clave:"650").save(failonError:true);
	e4=new Escuelas(nombre:"ESIQUIE", clave:"660").save(failonError:true);
    }
    def destroy = {
    }
}
