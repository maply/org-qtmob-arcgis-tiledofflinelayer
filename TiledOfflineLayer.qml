import QtQuick 2.5
import ArcGIS.Runtime 10.26

TiledMapServiceLayer {
    id: tiledOfflineLayer


    onRequestTile: {
        var url = (Qt.platform.os === "android" ? "qrc:/" : "") + tilesResource + "/" + level + "/" + col + "/" + row + "." + tileFormat;
        print(url);
        setTile(level, col, row, url);
    }
    onCancelTile: {

    }

    property string tilesResource: "tiles"
    property string tileFormat: "png"

    minScale: 500000000
    maxScale: 1000
    visible: true

    defaultSpatialReference: SpatialReference {
        wkid: 3857
    }
    fullExtent: Envelope {
        xMin: -2.0037507067161843e+07
        yMin: -1.9971868880408604e+07
        xMax: 2.0037507067161843e+07
        yMax: 1.99718688804085e+07
        spatialReference: defaultSpatialReference
    }
    tileInfo: TileInfo {
        origin: Point {
            x: -2.0037508342787e+07
            y: 2.0037508342787e+07
            spatialReference: defaultSpatialReference
        }
        dpi: 96
        rows: 256
        cols: 256
        lods: [
            /**
            * source: http://services.arcgisonline.com/ArcGIS/rest/services/Canvas/World_Light_Gray_Base/MapServer
            */
            LOD {level: 0; resolution: 156543.03392800014; scale: 5.91657527591555e+08},
            LOD {level: 1; resolution: 78271.51696399994; scale: 2.95828763795777e+08},
            LOD {level: 2; resolution: 39135.75848200009; scale: 1.47914381897889e+08},
            LOD {level: 3; resolution: 19567.87924099992; scale: 7.3957190948944e+07},
            LOD {level: 4; resolution: 9783.93962049996; scale: 3.6978595474472e+07},
            LOD {level: 5; resolution: 4891.96981024998; scale: 1.8489297737236e+07},
            LOD {level: 6; resolution: 2445.98490512499; scale: 9244648.868618},
            LOD {level: 7; resolution: 1222.992452562495; scale: 4622324.434309},
            LOD {level: 8; resolution: 611.4962262813797; scale: 2311162.217155},
            LOD {level: 9; resolution: 305.74811314055756; scale: 1155581.108577},
            LOD {level: 10; resolution: 152.87405657041106; scale: 577790.554289},
            LOD {level: 11; resolution: 76.43702828507324; scale: 288895.277144},
            LOD {level: 12; resolution: 38.21851414253662; scale: 144447.638572},
            LOD {level: 13; resolution: 19.10925707126831; scale: 72223.819286},
            LOD {level: 14; resolution: 9.554628535634155; scale: 36111.909643},
            LOD {level: 15; resolution: 4.77731426794937; scale: 18055.954822},
            LOD {level: 16; resolution: 2.388657133974685; scale: 9027.977411}
        ]
    }
}
