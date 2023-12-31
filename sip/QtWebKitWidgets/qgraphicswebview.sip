// qgraphicswebview.sip generated by MetaSIP
//
// This file is part of the QtWebKitWidgets Python extension module.
//
// Copyright (c) 2023 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt5.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


class QGraphicsWebView : QGraphicsWidget
{
%TypeHeaderCode
#include <qgraphicswebview.h>
%End

public:
    explicit QGraphicsWebView(QGraphicsItem *parent /TransferThis/ = 0);
    virtual ~QGraphicsWebView();
    QWebPage *page() const;
    void setPage(QWebPage * /KeepReference/);
    QUrl url() const;
    void setUrl(const QUrl &);
    QString title() const;
    QIcon icon() const;
    qreal zoomFactor() const;
    void setZoomFactor(qreal);
    bool isModified() const;
    void load(const QUrl &url) /ReleaseGIL/;
    void load(const QNetworkRequest &request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray &body = QByteArray()) /ReleaseGIL/;
    void setHtml(const QString &html, const QUrl &baseUrl = QUrl());
    void setContent(const QByteArray &data, const QString &mimeType = QString(), const QUrl &baseUrl = QUrl());
    QWebHistory *history() const;
    QWebSettings *settings() const;
    QAction *pageAction(QWebPage::WebAction action) const;
    void triggerPageAction(QWebPage::WebAction action, bool checked = false);
    bool findText(const QString &subString, QFlags<QWebPage::FindFlag> options = QFlags<QWebPage::FindFlag>());
    virtual void setGeometry(const QRectF &rect);
    virtual void updateGeometry();
    virtual void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0);
    virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant &value);
    virtual bool event(QEvent *);
    virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF &constraint) const;
    virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const;

public slots:
    void stop();
    void back();
    void forward();
    void reload();

signals:
    void loadStarted();
    void loadFinished(bool);
    void loadProgress(int progress);
    void urlChanged(const QUrl &);
    void titleChanged(const QString &);
    void iconChanged();
    void statusBarMessage(const QString &message);
    void linkClicked(const QUrl &);

protected:
    virtual void mousePressEvent(QGraphicsSceneMouseEvent *);
    virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent *);
    virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent *);
    virtual void mouseMoveEvent(QGraphicsSceneMouseEvent *);
    virtual void hoverMoveEvent(QGraphicsSceneHoverEvent *);
    virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent *);
    virtual void wheelEvent(QGraphicsSceneWheelEvent *);
    virtual void keyPressEvent(QKeyEvent *);
    virtual void keyReleaseEvent(QKeyEvent *);
    virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent *);
    virtual void dragEnterEvent(QGraphicsSceneDragDropEvent *);
    virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent *);
    virtual void dragMoveEvent(QGraphicsSceneDragDropEvent *);
    virtual void dropEvent(QGraphicsSceneDragDropEvent *);
    virtual void focusInEvent(QFocusEvent *);
    virtual void focusOutEvent(QFocusEvent *);
    virtual void inputMethodEvent(QInputMethodEvent *);
    virtual bool focusNextPrevChild(bool next);
    virtual bool sceneEvent(QEvent *);

public:
    bool resizesToContents() const;
    void setResizesToContents(bool enabled);
    bool isTiledBackingStoreFrozen() const;
    void setTiledBackingStoreFrozen(bool frozen);
    QFlags<QPainter::RenderHint> renderHints() const;
    void setRenderHints(QFlags<QPainter::RenderHint> hints);
    void setRenderHint(QPainter::RenderHint hint, bool enabled = true);
};

%ModuleCode
// This is needed by the %ConvertSubClassCode.
#include <QGraphicsWebView>

// This is needed for Qt v5.0.0.
#if defined(B0)
#undef B0
#endif
%End
