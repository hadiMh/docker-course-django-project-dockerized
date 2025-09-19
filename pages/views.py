from django.shortcuts import render
from django.views.generic import TemplateView
from django.conf import settings


class HomeView(TemplateView):
    template_name = "pages/home.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["student_name"] = settings.STUDENT_NAME
        return context


class NotesView(TemplateView):
    template_name = "pages/notes.html"
