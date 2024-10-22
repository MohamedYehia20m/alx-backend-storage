#!/usr/bin/env python3
"""
Module to interact with a MongoDB collection.
"""


def list_all(mongo_collection):
    """
    List all documents in a MongoDB collection.

    Args:
        mongo_collection: The pymongo collection object.

    Returns:
        A list of documents in the collection
        or an empty list if no documents.
    """
    return list(mongo_collection.find())
