package jpaConnect;

import jpaEntities.AziendaEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.TypedQuery;
import java.util.List;

public class FundracingEntityManager {
    private EntityManager em = null;



    public FundracingEntityManager(EntityManagerFactory emf){
        try{
            em = emf.createEntityManager();
        }
        catch(Exception ex){
            ex.printStackTrace();
            em = null;
        }
    }

    public Boolean isSetup(){
        if(em == null)
            return false;
        return true;
    }

    public void close(){
        if( em != null ) em.close();
    }

    public <T> List<T>  query( Class<T> tableClass, String sql) {
        if (!isSetup()) {
            return null;
        }

        TypedQuery<T> query = em.createQuery( sql, tableClass );

        List<T> results = query.getResultList();

        return results;
    }

    public <T> T  singleResultQuery( Class<T> tableClass, String sql) {
        if (!isSetup()) {
            return null;
        }

        TypedQuery<T> query = em.createQuery( sql, tableClass );

        T results = query.getSingleResult();

        return results;
    }

    public int queryExecuteQuery(String sql){
        if (!isSetup()) {
            return (-1);
        }

        return  em.createQuery( sql ).executeUpdate();
    }

    public <T> T create( T entity ){
        if( entity == null || em == null)
            return null;

        try {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
            return entity;
        } catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
    }

    public <T> T update(T entity){
        if( entity == null || em == null )
            return null;

        try{
            em.getTransaction().begin();
            T result  = em.merge(entity);
            em.getTransaction().commit();
            return result;
        }catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
    }

    public <T> T read(Class<T> tableClass, String id) {
        if (em == null)
            return null;
        try {
            em.getTransaction().begin();
            T result  =  em.find(tableClass, id);
            return result;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public <T> T read(Class<T> tableClass, int id) {
        if (em == null)
            return null;
        try {
            em.getTransaction().begin();
            T result  =  em.find(tableClass, id);
            return null;
        }catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public <T> T delete(Class<T> type, int id) {
        if (em == null)
            return null;
        try {
            em.getTransaction().begin();
            T old = em.getReference(type, id);
            em.remove( old );
            em.getTransaction().commit();
            return old;
        }catch(EntityNotFoundException ex){
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public <T> T delete(Class<T> type, String id) {
        if (em == null)
            return null;
        try {
            em.getTransaction().begin();
            T old = em.getReference(type, id);
            em.remove( old );
            em.getTransaction().commit();
            return old;
        }
        catch(EntityNotFoundException ex){
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

}
