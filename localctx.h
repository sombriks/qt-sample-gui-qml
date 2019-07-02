#ifndef LOCALCTX_H
#define LOCALCTX_H

#include <QObject>

class LocalCtx : public QObject
{
    Q_OBJECT
public:
    explicit LocalCtx(QObject *parent = nullptr);

signals:

public slots:
    void foo(int);
};

#endif // LOCALCTX_H
