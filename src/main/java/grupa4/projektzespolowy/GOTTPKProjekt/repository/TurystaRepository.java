package grupa4.projektzespolowy.GOTTPKProjekt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import grupa4.projektzespolowy.GOTTPKProjekt.model.Turysta;

@Repository
public interface TurystaRepository extends JpaRepository<Turysta,Integer>  {

}
