from django.shortcuts import render
from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response
from .serializers import UserRegisterSerializer, UserProfileSerializer
from rest_framework import status
from rest_framework.authtoken.models import Token
from .models import UserProfile
from rest_framework.permissions import IsAuthenticated
from django.core.exceptions import ObjectDoesNotExist


@api_view(['POST', ])
def registration_view(request):
    serializer = UserRegisterSerializer(data=request.data)
    data = {}
    if request.method == 'POST':
        if serializer.is_valid():
            account = serializer.save()
            data['response'] = "successfully registered new user."
            data['email'] = account.email
            data['username'] = account.username
            token = Token.objects.get(user=account).key
            data['token'] = token
            return Response(data, status.HTTP_201_CREATED)
        else:
            data = serializer.errors
            return Response(data, status.HTTP_400_BAD_REQUEST)


@api_view(['GET', ])
# @permission_classes((IsAuthenticated, ))
def profile_view(request):
    serializer = UserProfileSerializer(data=request.data)
    data = {}
    if request.method == 'GET':
        if serializer.is_valid():
            user_profile = serializer.save()
            data['response'] = "user profile"
            data['username'] = user_profile.username
            return Response(data, status.HTTP_200_OK)
        else:
            data = serializer.errors
            return Response(data, status.HTTP_400_BAD_REQUEST)
