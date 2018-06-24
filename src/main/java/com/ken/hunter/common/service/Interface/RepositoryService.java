package com.ken.hunter.common.service.Interface;


import com.ken.hunter.exception.RepositoryManageServiceException;
import java.util.Map;

/**
 * 仓库信息管理 service
 *
 * @author Ken
 */
public interface RepositoryService {

    /**
     * 返回指定 repository ID 的仓库记录
     *
     * @param repositoryId 仓库ID
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectById(Integer repositoryId) throws RepositoryManageServiceException;

    /**
     * 返回指定 repository address 的仓库记录
     * 支持查询分页以及模糊查询
     *
     * @param offset  分页的偏移值
     * @param limit   分页的大小
     * @param address 仓库的地址
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectByAddress(int offset, int limit, String address) throws RepositoryManageServiceException;

    /**
     * 返回指定 repository address 的仓库记录
     * 支持模糊查询
     *
     * @param address 仓库名称
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectByAddress(String address) throws RepositoryManageServiceException;

    /**
     * 分页查询仓库记录
     *
     * @param offset 分页的偏移值
     * @param limit  分页的大小
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectAll(int offset, int limit) throws RepositoryManageServiceException;

    /**
     * 查询所有的仓库记录
     *
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectAll() throws RepositoryManageServiceException;

    /**
     * 查询所有未指派仓库管理员的仓库记录
     *
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectUnassign() throws RepositoryManageServiceException;
}
