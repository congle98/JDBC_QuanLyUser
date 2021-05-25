package com.codegym.dao;

import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;
//DAO pattern là đây chứ đâuu, có nghĩa là khi thay đổi công nghệ hay ngôn ngữ sql
// ví dụ sql server hay mysql thì đều triển khai lại lớp này dễ dàng
public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;
    List<User> findUsersByCountry(String country);
    public List<User> softByName(List<User> userList);
    public List<User> softByCountry(List<User> userList);
}
