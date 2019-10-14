import 'package:bravass/pages/form_tambah.dart';
import 'package:flutter/material.dart';
import 'package:bravass/data/api_service.dart';
import 'package:bravass/model/Profile.dart';

class HomeProfile extends StatefulWidget {
  @override
  _HomeProfileState createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  BuildContext context;
  ApiService apiService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiService = ApiService();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return SafeArea(
      child: FutureBuilder(
        future: apiService.getProfile(),
        builder: (BuildContext context, AsyncSnapshot<List<Profile>> snapshot){
          if(snapshot.hasError){
            return Center(
              child: Text("Ada Yang Salah dengan Pesan: ${snapshot.error.toString()}"),
            );
          } else if(snapshot.connectionState == ConnectionState.done){
            List<Profile> profiles = snapshot.data;
            return _buildListView(profiles);
          } else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }


  Widget _buildListView (List<Profile> profiles){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: new ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context,index){
            Profile profile = profiles[index];
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(profile.name??'Name',
                        style: Theme.of(context).textTheme.title),
                      new Text(profile.email??'Email'),
                      new Text(profile.age.toString()??'Usia'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                      return AlertDialog(
                                        title: Text("Warning"),
                                        content: Text(
                                          "ingin menghapus delete data ${profile.name}?"
                                        ),
                                        actions: <Widget>[
                                          FlatButton(
                                            child: Text("Yess"),
                                            onPressed: (){
                                              Navigator.pop(context);
                                              apiService
                                                  .deleteProfile(profile.id)
                                                  .then((isSuccess){
                                                 if(isSuccess){
                                                   setState(() {});
                                                   Scaffold.of(this.context)
                                                        .showSnackBar(SnackBar(
                                                          content: Text("Delete Data Berhasil"),
                                                        ));
                                                 } else {
                                                   Scaffold.of(this.context)
                                                       .showSnackBar(SnackBar(
                                                          content: Text("Delete Data Gagal!"),
                                                        ));
                                                 }
                                              });
                                            },
                                          ),
                                          FlatButton(
                                            child: Text("No"),
                                            onPressed: (){
                                              Navigator.pop(context);
                                            },
                                          )
                                        ],

                                      );
                                  });
                            },
                            child: Text(
                              "Delete",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          FlatButton(
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context){
                                    return FormTambah(profile: profile);
                                  }));
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(color: Colors.blue),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: profiles.length,
        ),
    );
  }
}

