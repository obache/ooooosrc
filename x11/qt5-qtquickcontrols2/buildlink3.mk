# $NetBSD: buildlink3.mk,v 1.20 2021/04/21 11:40:51 adam Exp $

BUILDLINK_TREE+=	qt5-qtquickcontrols2

.if !defined(QT5_QTQUICKCONTROLS2_BUILDLINK3_MK)
QT5_QTQUICKCONTROLS2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-qtquickcontrols2+=	qt5-qtquickcontrols2>=5.10.0
BUILDLINK_ABI_DEPENDS.qt5-qtquickcontrols2?=	qt5-qtquickcontrols2>=5.15.2nb2
BUILDLINK_PKGSRCDIR.qt5-qtquickcontrols2?=	../../x11/qt5-qtquickcontrols2

BUILDLINK_INCDIRS.qt5-qtquickcontrols2+=	qt5/include
BUILDLINK_LIBDIRS.qt5-qtquickcontrols2+=	qt5/lib

.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.endif	# QT5_QTQUICKCONTROLS2_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-qtquickcontrols2
