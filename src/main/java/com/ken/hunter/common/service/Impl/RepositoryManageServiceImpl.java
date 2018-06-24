package com.ken.hunter.common.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ken.hunter.common.service.Interface.RepositoryService;
import com.ken.hunter.common.util.EJConvertor;
import com.ken.hunter.common.util.FileUtil;
import com.ken.hunter.dao.*;
import com.ken.hunter.domain.*;
import com.ken.hunter.exception.RepositoryManageServiceException;
import com.ken.hunter.util.aop.UserOperation;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 仓库信息管理 service 实现类
 *
 * @author Ken
 */
@Service
public class RepositoryManageServiceImpl implements RepositoryService {

    @Autowired
    private RepositoryMapper repositoryMapper;
    @Autowired
    private EJConvertor ejConvertor;
    @Autowired
    private StockInMapper stockInMapper;
    @Autowired
    private StockOutMapper stockOutMapper;
    @Autowired
    private StorageMapper storageMapper;
    @Autowired
    private RepositoryAdminMapper repositoryAdminMapper;

    /**
     * 返回指定 repository ID 的仓库记录
     *
     * @param repositoryId 仓库ID
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    @Override
    public Map<String, Object> selectById(Integer repositoryId) throws RepositoryManageServiceException {
        // 初始化結果集
        Map<String, Object> resultSet = new HashMap<>();
        List<Supplier> repositories = new ArrayList<>();
        long total = 0;

        // 查詢
        Supplier repository;
        try {
            repository = repositoryMapper.selectByID(repositoryId);
        } catch (PersistenceException e) {
            throw new RepositoryManageServiceException(e);
        }

        if (repository != null) {
            repositories.add(repository);
            total = 1;
        }

        resultSet.put("data", repositories);
        resultSet.put("total", total);
        return resultSet;
    }

    /**
     * 返回指定 repository address 的仓库记录 支持查询分页以及模糊查询
     *
     * @param offset  分页的偏移值
     * @param limit   分页的大小
     * @param address 仓库的地址
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    @Override
    public Map<String, Object> selectByAddress(int offset, int limit, String address) throws RepositoryManageServiceException {
        // 初始化結果集
        Map<String, Object> resultSet = new HashMap<>();
        List<Supplier> repositories;
        long total = 0;
        boolean isPagination = true;

        // validate
        if (offset < 0 || limit < 0)
            isPagination = false;

        // query
        try {
            if (isPagination) {
                PageHelper.offsetPage(offset, limit);
                repositories = repositoryMapper.selectByAddress(address);
                if (repositories != null) {
                    PageInfo<Supplier> pageInfo = new PageInfo<>(repositories);
                    total = pageInfo.getTotal();
                } else
                    repositories = new ArrayList<>();
            } else {
                repositories = repositoryMapper.selectByAddress(address);
                if (repositories != null)
                    total = repositories.size();
                else
                    repositories = new ArrayList<>();
            }
        } catch (PersistenceException e) {
            throw new RepositoryManageServiceException(e);
        }

        resultSet.put("data", repositories);
        resultSet.put("total", total);
        return resultSet;
    }

    /**
     * 返回指定 repository address 的仓库记录 支持模糊查询
     *
     * @param address 仓库名称
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    @Override
    public Map<String, Object> selectByAddress(String address) throws RepositoryManageServiceException {
        return selectByAddress(-1, -1, address);
    }

    /**
     * 分页查询仓库记录
     *
     * @param offset 分页的偏移值
     * @param limit  分页的大小
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    @Override
    public Map<String, Object> selectAll(int offset, int limit) throws RepositoryManageServiceException {
        // 初始化结果集
        Map<String, Object> resultSet = new HashMap<>();
        List<Supplier> repositories;
        long total = 0;
        boolean isPagination = true;

        // validate
        if (offset < 0 || limit < 0)
            isPagination = false;

        //query
        try {
            if (isPagination) {
                PageHelper.offsetPage(offset, limit);
                repositories = repositoryMapper.selectAll();
                if (repositories != null) {
                    PageInfo<Supplier> pageInfo = new PageInfo<>(repositories);
                    total = pageInfo.getTotal();
                } else
                    repositories = new ArrayList<>();
            } else {
                repositories = repositoryMapper.selectAll();
                if (repositories != null)
                    total = repositories.size();
                else
                    repositories = new ArrayList<>();
            }
        } catch (PersistenceException e) {
            throw new RepositoryManageServiceException(e);
        }

        resultSet.put("data", repositories);
        resultSet.put("total", total);
        return resultSet;
    }

    /**
     * 查询所有的仓库记录
     *
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    @Override
    public Map<String, Object> selectAll() throws RepositoryManageServiceException {
        return selectAll(-1, -1);
    }

    /**
     * 检查仓库信息是否满足
     *
     * @param repository 仓库信息
     * @return 若仓库信息满足要求则返回true，否则返回false
     */
    private boolean repositoryCheck(Supplier repository) {
        return repository.getAddress() != null && repository.getId() != null;
    }

    /**
     * 查询所有未指派仓库管理员的仓库记录
     *
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    @Override
    public Map<String, Object> selectUnassign() throws RepositoryManageServiceException {
        // 初始化结果集
        Map<String, Object> resultSet = new HashMap<>();
        List<Supplier> repositories;
        long total = 0;

        // 查询
        try {
            repositories = repositoryMapper.selectUnassign();
        } catch (PersistenceException e) {
            throw new RepositoryManageServiceException(e);
        }
        if (repositories != null)
            total = repositories.size();
        else
            repositories = new ArrayList<>();

        resultSet.put("data", repositories);
        resultSet.put("total", total);
        return resultSet;
    }

}
