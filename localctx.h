#ifndef LOCALCTX_H
#define LOCALCTX_H

#include <QObject>

class LocalCtx : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString nome READ getNome WRITE setNome NOTIFY nomeChanged)

public:
    explicit LocalCtx(QObject *parent = nullptr);
    QString getNome();
    void setNome(QString);

private:
    QString nome = "x";

signals:
    void nomeChanged(QString);

public slots:
    void foo(int);
};

#endif // LOCALCTX_H
