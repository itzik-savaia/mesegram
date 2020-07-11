from django.urls import path
from .views import (
    registration_view,
    profile_view,
)

from rest_framework.authtoken.views import obtain_auth_token

app_name = "account"

urlpatterns = [
    path('register', registration_view, name='register'),
    path('login', obtain_auth_token, name='login'),
    path('profile', profile_view, name='profile'),
]
