$NetBSD$

* fix missing declare

--- programs/dthelp/parser/pass1/parser/proto.h.orig	2019-10-12 21:43:45.000000000 +0000
+++ programs/dthelp/parser/pass1/parser/proto.h
@@ -68,6 +68,8 @@ void m_eprefix(void);
 
 void m_err1(const char *text, const M_WCHAR *arg);
 
+void m_mberr1(const char *text, const char *arg);
+
 void m_err2(const char *text, const M_WCHAR *arg1, const M_WCHAR *arg2);
 
 void m_err3(char *text, M_WCHAR *arg1, M_WCHAR *arg2, M_WCHAR *arg3);
