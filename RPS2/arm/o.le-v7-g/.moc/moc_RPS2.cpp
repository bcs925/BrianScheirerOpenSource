/****************************************************************************
** Meta object code from reading C++ file 'RPS2.hpp'
**
** Created: Wed Nov 7 21:19:14 2012
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/RPS2.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'RPS2.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_RPS2[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: signature, parameters, type, tag, flags
      22,   10,    6,    5, 0x02,
      43,   10,    6,    5, 0x02,
      65,   10,    6,    5, 0x02,
      97,   90,    6,    5, 0x02,

       0        // eod
};

static const char qt_meta_stringdata_RPS2[] = {
    "RPS2\0\0int\0user1,user2\0clickedRock(int,int)\0"
    "clickedPaper(int,int)\0clickedScissors(int,int)\0"
    "record\0codeWinning(int)\0"
};

void RPS2::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        RPS2 *_t = static_cast<RPS2 *>(_o);
        switch (_id) {
        case 0: { int _r = _t->clickedRock((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        case 1: { int _r = _t->clickedPaper((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        case 2: { int _r = _t->clickedScissors((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        case 3: { int _r = _t->codeWinning((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObjectExtraData RPS2::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject RPS2::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_RPS2,
      qt_meta_data_RPS2, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &RPS2::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *RPS2::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *RPS2::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_RPS2))
        return static_cast<void*>(const_cast< RPS2*>(this));
    return QObject::qt_metacast(_clname);
}

int RPS2::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
