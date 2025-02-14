// Vulnerable Code
public void GetUserData(string username)
{
    string query = "SELECT * FROM Users WHERE Username = '" + username + "'";
    SqlCommand cmd = new SqlCommand(query, connection);
    SqlDataReader reader = cmd.ExecuteReader();
}
