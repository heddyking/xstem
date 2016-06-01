/**
 * 
 */
package com.worksap.stm2016.service;

import org.jooq.DSLContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Xiaoxi
 *
 */
@Service
@Transactional
public class StaffingService
{
	@Autowired
	private DSLContext dsl;
	
	
}
