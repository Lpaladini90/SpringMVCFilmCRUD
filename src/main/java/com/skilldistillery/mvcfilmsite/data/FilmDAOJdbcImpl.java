package com.skilldistillery.mvcfilmsite.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.skilldistillery.mvcfilmsite.entities.Actor;
import com.skilldistillery.mvcfilmsite.entities.Film;

public class FilmDAOJdbcImpl implements FilmDAO {

	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";
	private String user = "student";
	private String pass = "student";

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("Driver not found");
			throw new RuntimeException("");
		}
	}

	@Override
	public Film findFilmById(int filmId) {
		Connection conn = null;
		PreparedStatement s = null;
		ResultSet rs = null;
		Film film = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);

			String sqltxt;
			sqltxt = "SELECT * FROM film WHERE film.id = ?";
			s = conn.prepareStatement(sqltxt);
			s.setInt(1, filmId);
			rs = s.executeQuery();

			if (rs.next()) {
				film = new Film();
				film.setId(rs.getInt("id"));
				film.setTitle(rs.getString("title"));
				film.setDescription(rs.getString("description"));
				film.setReleaseYear(rs.getInt("release_year"));
				film.setLaunguageId(rs.getInt("language_id"));
				film.setRentalRate(rs.getDouble("rental_rate"));
				film.setLength(rs.getInt("length"));
				film.setReplacmentCost(rs.getDouble("replacement_cost"));
				film.setRating(rs.getString("rating"));
				film.setSpecialFeatures(rs.getString("special_features"));
				film.setActorList(findActorsByFilmId(film.getId()));
				film.setCategory(findCategory(film.getId()));
				film.setLanguage(findLanguage(film.getLaunguageId()));
				film.setRentalDuration(rs.getInt("rental_duration"));
			}

			rs.close();
			s.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (s != null) {
					s.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException sqle) {
				System.err.println(sqle);
			}
		}

		return film;
	}

	@Override
	public Actor findActorById(int actorId) {
		Connection conn = null;
		PreparedStatement s = null;
		ResultSet rs = null;
		Actor actor = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);

			String sqltxt;
			sqltxt = "SELECT * FROM actor WHERE actor.id = ?";
			s = conn.prepareStatement(sqltxt);
			s.setInt(1, actorId);
			rs = s.executeQuery();

			if (rs.next()) {
				actor = new Actor(rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"));
			}
			rs.close();
			s.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (s != null) {
					s.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException sqle) {
				System.err.println(sqle);
			}
		}
		return actor;
	}

	@Override
	public List<Actor> findActorsByFilmId(int filmId) {
		Connection conn = null;
		PreparedStatement s = null;
		ResultSet rs = null;
		List<Actor> actorlist = new ArrayList<>();
		try {
			conn = DriverManager.getConnection(URL, user, pass);

			String sqltxt;
			sqltxt = "SELECT * FROM actor JOIN film_actor ON actor.id = film_actor.actor_id JOIN film ON film.id = film_actor.film_id WHERE film.id = ?";
			s = conn.prepareStatement(sqltxt);
			s.setInt(1, filmId);
			rs = s.executeQuery();

			while (rs.next()) {
				actorlist.add(new Actor(rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name")));
			}
			rs.close();
			s.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (s != null) {
					s.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException sqle) {
				System.err.println(sqle);
			}
		}
		return actorlist;
	}

	@Override
	public List<Film> findFilmBySearch(String choice) {
		Connection conn = null;
		PreparedStatement s = null;
		ResultSet rs = null;
		List<Film> filmList = new ArrayList<>();

		try {
			conn = DriverManager.getConnection(URL, user, pass);

			String sqltxt;
			sqltxt = "SELECT * FROM film WHERE title LIKE ? OR description LIKE ?";
			s = conn.prepareStatement(sqltxt);
			s.setString(1, "%" + choice + "%");
			s.setString(2, "%" + choice + "%");
			rs = s.executeQuery();

			while (rs.next()) {
				Film film = new Film();
				film.setId(rs.getInt("id"));
				film.setTitle(rs.getString("title"));
				film.setDescription(rs.getString("description"));
				film.setReleaseYear(rs.getInt("release_year"));
				film.setLaunguageId(rs.getInt("language_id"));
				film.setRentalRate(rs.getDouble("rental_rate"));
				film.setLength(rs.getInt("length"));
				film.setReplacmentCost(rs.getDouble("replacement_cost"));
				film.setRating(rs.getString("rating"));
				film.setSpecialFeatures(rs.getString("special_features"));
				film.setActorList(findActorsByFilmId(film.getId()));
				film.setCategory(findCategory(film.getId()));
				film.setLanguage(findLanguage(film.getLaunguageId()));
				film.setRentalDuration(rs.getInt("rental_duration"));

				filmList.add(film);
			}
			rs.close();
			s.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (s != null) {
					s.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException sqle) {
				System.err.println(sqle);
			}
		}
		return filmList;
	}

	public String findCategory(int id) {
		String category = null;
		Connection conn = null;
		PreparedStatement s = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(URL, user, pass);

			String sqltxt;
			sqltxt = "SELECT film.title, category.name  FROM film JOIN film_category ON film.id = film_category.film_id JOIN category ON film_category.category_id = category.id where film.id = ?";
			s = conn.prepareStatement(sqltxt);
			s.setInt(1, id);
			rs = s.executeQuery();

			if (rs.next()) {
				category = rs.getString("category.name");
			}
			rs.close();
			s.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (s != null) {
					s.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException sqle) {
				System.err.println(sqle);
			}
		}

		return category;
	}

	public String findLanguage(int langId) {
		String language = null;
		Connection conn = null;
		PreparedStatement s = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(URL, user, pass);

			String sqltxt;
			sqltxt = "SELECT l.name FROM language l WHERE l.id = ?";
			s = conn.prepareStatement(sqltxt);
			s.setInt(1, langId);
			rs = s.executeQuery();

			if (rs.next()) {
				language = rs.getString("name");
			}
			rs.close();
			s.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (s != null) {
					s.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException sqle) {
				System.err.println(sqle);
			}
		}

		return language;
	}

	@Override
	public Film createFilm(Film film) {
		Connection conn = null;

		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);

			String sql = "INSERT INTO film (title, description,release_year, language_id, rental_duration, "
					+ " rental_rate, length, replacement_cost, rating, special_features) "
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement prepStmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			prepStmt.setString(1, film.getTitle());
			prepStmt.setString(2, film.getDescription());
			prepStmt.setInt(3, film.getReleaseYear());
			prepStmt.setInt(4, film.getLaunguageId());
			prepStmt.setInt(5, film.getRentalDuration());
			prepStmt.setDouble(6, film.getRentalRate());
			prepStmt.setInt(7, film.getLength());
			prepStmt.setDouble(8, film.getReplacmentCost());
			prepStmt.setString(9, film.getRating());
			prepStmt.setString(10, film.getSpecialFeatures());

			int updateCount = prepStmt.executeUpdate();
			
			if (updateCount == 1) {
				System.out.println("update count is: " + updateCount);
				ResultSet keys = prepStmt.getGeneratedKeys();
				if (keys.next()) {
					int newActorId = keys.getInt(1);
					film.setId(newActorId);
				}
				
				keys.close();
			}
			conn.commit();

			prepStmt.close();
			conn.close();

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			film = null;
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return film;
	}

	@Override
	public Film editFilm(Film film) {
		Connection conn = null;

		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);

			String sql = "UPDATE film SET title=?, description=?, release_year=?, language_id =?,  "
					+ " rental_duration=?, rental_rate=?, length=?, replacement_cost=?, "
					+ " rating=?, special_features=? WHERE id=?";

			PreparedStatement prepStmt = conn.prepareStatement(sql);
			prepStmt.setString(1, film.getTitle());
			prepStmt.setString(2, film.getDescription());
			prepStmt.setInt(3, film.getReleaseYear());
			prepStmt.setInt(4, film.getLaunguageId());
			prepStmt.setInt(5, film.getRentalDuration());
			prepStmt.setDouble(6, film.getRentalRate());
			prepStmt.setInt(7, film.getLength());
			prepStmt.setDouble(8, film.getReplacmentCost());
			prepStmt.setString(9, film.getRating());
			prepStmt.setString(10, film.getSpecialFeatures());
			prepStmt.setInt(11, film.getId());

			int updateCount = prepStmt.executeUpdate();

			if (updateCount == 1) {
				conn.commit();

			} else {
				film = null;
			}

			prepStmt.close();
			conn.close();

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			film = null;
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return film;
	}

	@Override
	public Film deleteFilm(Film film) {
		Connection conn = null;

		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);

			String sql = "DELETE FROM film WHERE id=?";

			PreparedStatement prepStmt = conn.prepareStatement(sql);
			prepStmt.setInt(1, film.getId());

			int updateCount = prepStmt.executeUpdate();

			if (updateCount == 1) {
				conn.commit();

			} else {
				film = null;
			}

			prepStmt.close();
			conn.close();

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			film = null;
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return film;
	}

}
