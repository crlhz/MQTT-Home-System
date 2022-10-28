import mysql.connector
import datetime


class Database:
    def __init__(self, host_name, user_name, password, db_name):
        self.db = mysql.connector.connect(
            host=host_name,
            user=user_name,
            password=password,
            database=db_name
        )

    def insert_meas(self, value, id_topic):
        sql = "INSERT INTO measurments (value, topic_id, created_at, updated_at) VALUES (%s, %s, %s, %s)"
        val = (value, id_topic, datetime.datetime.now(), datetime.datetime.now())
        self.db.cursor().execute(sql, val)
        self.db.commit()

    def select_id(self, topic):
        mycursor = self.db.cursor()
        mycursor.execute("SELECT id FROM topics WHERE name=%s", (topic,))
        return mycursor.fetchone()
