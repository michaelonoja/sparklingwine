/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.CustomerOrderHasProduct;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author onoja
 */
@Stateless
public class CustomerOrderHasProductFacade extends AbstractFacade<CustomerOrderHasProduct> {

    @PersistenceContext(unitName = "e-commercewinePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerOrderHasProductFacade() {
        super(CustomerOrderHasProduct.class);
    }
    
}
