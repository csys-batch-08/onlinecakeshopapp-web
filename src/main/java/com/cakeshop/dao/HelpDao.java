package com.cakeshop.dao ;

import java.sql.SQLException;
import java.util.List;

import com.cakeshop.model.Help;

public interface HelpDao {

	public List<Help> showHelp() throws SQLException;
}
