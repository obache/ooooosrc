# $NetBSD: Makefile,v 1.27 2021/06/04 05:18:01 adam Exp $

DISTNAME=	Flask-Admin-1.5.8
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	www python
MASTER_SITES=	${MASTER_SITE_PYPI:=F/Flask-Admin/}

MAINTAINER=	kleink@NetBSD.org
HOMEPAGE=	https://github.com/flask-admin/flask-admin
COMMENT=	Simple and extensible administrative interface framework for Flask
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-flask>=0.7:../../www/py-flask
DEPENDS+=	${PYPKGPREFIX}-wtforms-[0-9]*:../../www/py-wtforms

USE_LANGUAGES=	# none

post-extract:
	${FIND} ${WRKSRC}/flask_admin/static -type f -exec ${CHMOD} a-x {} +
	${FIND} ${WRKSRC}/flask_admin/templates -type f -exec ${CHMOD} a-x {} +

pre-configure:
	${RM} ${WRKSRC}/flask_admin/tests/sqla/test_basic.py.orig

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
