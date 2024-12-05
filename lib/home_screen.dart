import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GoogleMapController googleMapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
      ),
      body:  GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition: CameraPosition(
          
          zoom: 16,
          target: LatLng(
            23.80737230553727,
            90.35633818718152,
          ),
        ),
      onTap: (LatLng? latLong){
        print(latLong);
      },
      onMapCreated: (GoogleMapController controller){
        googleMapController =controller;
      },
      ),
    );
  }
}
