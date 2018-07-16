# You have the following tables with their fields:
# users: user_id, username, password, created_date
# orders: id, user_id, product_id, order_amount, order_date
# products: id, name
#
# In this test you will only be tested on Syntax and validity of the queries, there is no database system running on this laptop
#
# Write two SQL queries that will:
# - List all the users and sum their total life order amounts
#   (Expected output: user_id, username, lifetime_order_amount)

SELECT  a.user_id,
        a.username,
        COUNT(b.user_id) lifetime_order_amount
FROM    users a
        LEFT JOIN orders b
            ON a.user_id = b.user_id
GROUP   BY a.user_id,
        a.username

# - List all of the products and concatenate the usernames of the users who bought it
#   (Expected output: product_id, product_name, usernames) (usernames = john@packwire.com,phil@packwire.com)


	SELECT  a.product_id,
        a.product_name,
		c.username
	FROM    products a
        LEFT JOIN orders b
            ON a.id = b.product_id
			 LEFT JOIN users c
            ON b.user_id = c.user_id