import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyApp extends StatefulWidget{
    @override
    _MyAppState createState()=>_MyAppState();
}

class _MyAppState extends State<MyApp>{

   GoogleMapController myController;          //controls google map
   static final LatLng _placeCoordinates=const LatLng(45.521563, -122.677433);  //variable _placeCoordinates of LatLng type to set location of map

   MapType _currentMapType = MapType.normal;   //view of map that should be displayed



   //***************for markers in map *****************

   final Set<Marker> _markers={};             //set of markers for google map

   LatLng _currentMapPosition = _placeCoordinates; //make _placeCoordinates static else will give error in this line

   void _onAddMarkerButtonPressed(){         //when this button is presses it displays markers
     setState((){
         _markers.add(  Marker(                                        //adding marker (giving  its properties) to set of markers "_markers"
             markerId: MarkerId(_currentMapPosition.toString()),
              position:_currentMapPosition,
              infoWindow: InfoWindow(
                  title: '36 Avenue Street',
                  snippet: 'New York City'
              ),
              icon:BitmapDescriptor.defaultMarker,         //icon for marker

         )
         );
     });
   }
  //***********************marker code ended******************************


   void _onMapTypeButtonPressed(){
     setState((){
          _currentMapType= (_currentMapType == MapType.normal) ? MapType.satellite:MapType.normal;      //if the view is normal then on pressing button it should give satellite view
     });
   }
   //creates map
   void _createMap(GoogleMapController controller) {   //creates map with controller
     myController = controller;
   }

   @override
  Widget build(BuildContext context){
     return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title:Text('Flutter Maps Demo'),
            backgroundColor: Colors.green,
          ),
          body: Stack(
            children:[
              GoogleMap(            //GoogleMap widget is given to add google maps to app
                onMapCreated:_createMap,
                 initialCameraPosition: CameraPosition(
                                       target:_placeCoordinates,    //initial position for map
                                       zoom:10.0,
                                     ),
                markers: _markers,
                mapType:_currentMapType,
              ),

              Padding(
                padding:EdgeInsets.all(14.0),
                child: Align(
                  alignment:Alignment.topRight,
                  child:FloatingActionButton(
                                 onPressed: _onMapTypeButtonPressed,
                                 materialTapTargetSize:MaterialTapTargetSize.padded,
                                  backgroundColor:Colors.green,
                                  child:Icon(Icons.map,size:30.0)
                              )
              ),
              ),

              Padding(
                padding:EdgeInsets.fromLTRB(14,80,14,14),
                child:Align(
                        alignment:Alignment.topRight,
                       child:FloatingActionButton(
                                 onPressed: _onAddMarkerButtonPressed,
                                 materialTapTargetSize: MaterialTapTargetSize.padded,
                                 backgroundColor:Colors.green,
                                 child:Icon(Icons.location_on_rounded,size:30.0),

                       )
                )
              )
            ]
          )
        )
     );
   }
}