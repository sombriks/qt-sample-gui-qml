#include "localctx.h"

#include <QDebug>

LocalCtx::LocalCtx(QObject *parent) : QObject(parent)
{

}

QString LocalCtx::getNome()
{
    return nome;
}

void LocalCtx::setNome(QString nome)
{
    this->nome = nome;
}

void LocalCtx::foo(int x)
{
    qInfo() << "Recebido: " << x;
    qInfo() << "Nome: " << nome;
}
