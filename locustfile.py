import random
from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(5, 9)

    @task
    def index_page(self):
        self.client.get("/")
        #self.client.get("/hello")

    @task(3)
    def view_item(self):
        item_id = random.randint(1, 10000)
        self.client.get(f"/?id={item_id}", name="/")

    # def on_start(self):
    #     self.client.post("/login", {"username":"foo", "password":"bar"})