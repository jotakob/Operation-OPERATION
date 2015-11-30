// Author Ron Dekker
using UnityEngine;
using System;
using System.Collections;
using System.Diagnostics;
using System.Net;
using System.Net.Sockets;
using System.Threading;

public class WiiBoardUDPClient : MonoBehaviour {

    private Process serverUDP;
    private Thread receiveThread;
    private UdpClient clientUDP;
    private byte[] data = new byte[16];

    public bool hideServerWindow = false;
    public int port = 25601;
    
    private float[] offsetMargin = new float[4] { 0f, 0f, 0f, 0f };
    private float[] boardSize = new float[2] { 43.5f, 23.5f };

    public void Start() {
        Application.runInBackground = true;

        //Startup UDP server
        serverUDP = new Process();
        serverUDP.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
        serverUDP.StartInfo.CreateNoWindow = hideServerWindow;
        serverUDP.StartInfo.UseShellExecute = false;
        serverUDP.StartInfo.FileName = Application.dataPath + "\\WiiBoard\\WiiBoardUDPServer.exe"; 
        serverUDP.EnableRaisingEvents = true;
        serverUDP.Start();

        //Start listening to UDP client
        receiveThread = new Thread(new ThreadStart(ReceiveData));
        receiveThread.IsBackground = true;
        receiveThread.Start();

        // Calibrates the board
        calibrate();
    }

    private void ReceiveData() {
        clientUDP = new UdpClient(port);
        IPEndPoint anyIP = new IPEndPoint(IPAddress.Broadcast, port);
        while (true) {
            data = clientUDP.Receive(ref anyIP);
        }
    }

    private void OnDisable() {
        serverUDP.Close();
        if (receiveThread != null)
            receiveThread.Abort();
        clientUDP.Close();
    }

    // Recalibrates the board.
    public void calibrate(float delay=2) {
        StartCoroutine(calibrateRoutine(delay));
    }

    private IEnumerator calibrateRoutine(float delay) {
        yield return new WaitForSeconds(delay);
        float[] rawValues = getValuesRaw();
        offsetMargin = new float[4] { -rawValues[0], -rawValues[1], -rawValues[2], -rawValues[3] };
    }

    // Turns the data into float values.
    public float[] getValuesRaw() {
        float valueTL = BitConverter.ToSingle(new byte[4] {data[0],data[1],data[2],data[3]}, 0);
        float valueTR = BitConverter.ToSingle(new byte[4] {data[4],data[5],data[6],data[7]}, 0);
        float valueBL = BitConverter.ToSingle(new byte[4] {data[8],data[9],data[10],data[11]}, 0);
        float valueBR = BitConverter.ToSingle(new byte[4] {data[12],data[13],data[14],data[15]}, 0);
        return new float[4] { valueTL, valueTR, valueBL, valueBR };
    }

    // Adds the offset to the raw values.
    public float[] getValues() {
        float[] values = getValuesRaw();
        values[0] += offsetMargin[0];
        values[1] += offsetMargin[1];
        values[2] += offsetMargin[2];
        values[3] += offsetMargin[3];
        return values;
    }

    // Returns the total weigth that is on the board.
    public float getWeight() {
        float[] values = getValues();
        return (values[0] +values[1] +values[2] +values[3]) /4;
    }

    // Returns the center of mass on the board.
    public float[] getCenterOfMass() {
        float[] values = getValues();
        float weigthX = (values[0] +values[2]) /(values[1] +values[3]);
        float weigthY = (values[0] +values[1]) /(values[2] +values[3]);
        float x = ((weigthX -1) /(weigthX +1)) *(-boardSize[0] /2);
        float y = ((weigthY -1) /(weigthY +1)) *(-boardSize[1] /2);
        return new float[2] {x,y};
    }
}