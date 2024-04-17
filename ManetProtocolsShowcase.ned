//ManetProtocolsShowcase.ned
package inet.examples.assign;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.ManetRouter;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;

network ManetprotocolsShowcaseB
{
    parameters:
        @display("bgb=400,400");
        @statistic[numRcvdPk](source=count(source.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; transform=scale(0.5); pos=50,300; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; transform=scale(0.5); pos=50,400; label="Pings lost"; decimalPlaces=4);

    submodules:
        source: ManetRouter {
            @display("p=104,335");
        }
        node1: ManetRouter {
            @display("p=104,226");
        }
        node2: ManetRouter {
            @display("p=175,140");
        }
        node3: ManetRouter {
            @display("p=238,276");
        }
        node4: ManetRouter {
            @display("p=312,196");
        }
        node6: ManetRouter {
            @display("p=147,67");
        }
        node7: ManetRouter {
            @display("p=60,125");
        }
        destination: ManetRouter {
            @display("p=292,80");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=38,28");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=38.461544,66.863914");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=38.461544,106.50889");
        }
}
