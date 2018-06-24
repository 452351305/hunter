package com.ken.hunter.dao;

import com.ken.hunter.domain.Supplier;

import java.util.List;

/**
 * Repository 映射器
 * @author Ken
 *
 */
public interface RepositoryMapper {

	/**
	 * 选择全部的 Repository 记录
	 * @return 返回全部的 Repository
	 */
	List<Supplier> selectAll();
	
	/**
	 * 选择全部的未分配的 repository 记录
	 * @return 返回所有未分配的 Repository
	 */
	List<Supplier> selectUnassign();
	
	/**
	 * 选择指定 Repository ID 的 Repository 记录
	 * @param repositoryID 仓库ID
	 * @return 返回指定的Repository
	 */
	Supplier selectByID(Integer repositoryID);
	
	/**
	 * 选择指定 repository Address 的 repository 记录
	 * @param address 仓库地址
	 * @return 返回指定的Repository 
	 */
	List<Supplier> selectByAddress(String address);
}
