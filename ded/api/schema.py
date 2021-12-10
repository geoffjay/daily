import os
import typing

import strawberry
from supabase import Client, create_client


@strawberry.type
class Activity:
    id: int
    name: str
    account: str


def get_activities():
    url: str = os.environ.get("SUPABASE_URL", "")
    key: str = os.environ.get("SUPABASE_KEY", "")
    client: Client = create_client(url, key)
    request_builder = client.from_("activities")
    activities = request_builder.select("*").execute()

    return [
        Activity(id=activity.id, name=activity.name, account=str(activity.account_fk))
        for activity in activities["data"]
    ]


@strawberry.type
class Query:
    activities: typing.List[Activity] = strawberry.field(resolver=get_activities)


schema = strawberry.Schema(query=Query)
