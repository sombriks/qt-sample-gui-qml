#include "localctx.h"

#include <QDebug>

LocalCtx::LocalCtx(QObject *parent) : QObject(parent)
{

}

void LocalCtx::foo(int x)
{
    qInfo() << "Recebido: " << x;
}
