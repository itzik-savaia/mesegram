from rest_framework import serializers

from .models import UserAccount, UserProfile


class UserRegisterSerializer(serializers.ModelSerializer):
    password2 = serializers.CharField(style={'input_type': 'password'}, write_only=True)

    class Meta:
        model = UserAccount
        fields = ['username', 'password', 'password2', 'email']
        extra_kwargs = {
            'password': {'write_only': True}
        }

    def save(self):
        account = UserAccount(
            email=self.validated_data['email'],
            username=self.validated_data['username']
        )
        password = self.validated_data['password']
        password = ''.join(password)
        password2 = self.validated_data['password2']
        if password != password2:
            raise serializers.ValidationError({'password': 'Passwords must match.'})
        account.set_password(password)
        account.save()
        return account


class UserProfileSerializer(serializers.ModelSerializer):

    class Meta:
        model = UserAccount
        fields = ['username', 'profile_image', 'followers', 'following']
