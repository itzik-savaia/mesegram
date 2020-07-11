from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),

    #REST-framework
    path('account/', include(("account.urls", 'account'), namespace="account")),

]
