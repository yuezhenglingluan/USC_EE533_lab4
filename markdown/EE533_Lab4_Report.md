# EE533_Lab4_Report

## 1. Download and Setup Fedora VM

![Screenshot 2025-02-05 102814](<Pic\Screenshot 2025-02-05 102814.png>)

## 2. Compile and generate a design bitfile for NetFPGA

### 2.1 Extract ids_hw and copy all Verilog and ip core files into ids_hw/src

![Screenshot 2025-02-05 130858](<Pic\Screenshot 2025-02-05 130858.png>)

### 2.2 Copy all of source files within ids_hw into corresponding folders into NetFPGA project folder

![Screenshot 2025-02-05 131118](<Pic\Screenshot 2025-02-05 131118.png>)

### 2.3 Compile the design by 'cd' into the synth folder type 'make'

![Screenshot 2025-02-05 131155](<Pic\Screenshot 2025-02-05 131155.png>)

### 2.4 '*.bit' file generated

![Screenshot 2025-02-05 131422](<Pic\Screenshot 2025-02-05 131422.png>)

## 3. Set Up VPN to USC

![Screenshot 2025-02-05 131605](<Pic\Screenshot 2025-02-05 131605.png>)

## 4. NetFPGA Environment
echo test results
![alt text](<Pic/image.png>)

## 5. NetFPGA-based Linux Kernel IP Router

### 5.1 Test NetFPGA as network interface card

![Screenshot 2025-02-08 184228](<Pic\Screenshot 2025-02-08 184228.png>)

### 5.2 Test ping from n0 to n3

![Screenshot 2025-02-08 184801](<Pic\Screenshot 2025-02-08 184801.png>)

### 5.3 Test ping from n0 to n3 by typing IP Address

* Checking n3 IP Address
  * 10.0.15.3

![Screenshot 2025-02-08 184908](<Pic\Screenshot 2025-02-08 184908.png>)

* Ping n3 by IP Address

![Screenshot 2025-02-08 185023](<Pic\Screenshot 2025-02-08 185023.png>)

### 5.4 Test Ping all other nodes from one to another

#### 5.4.1 n0 -> n1, n2, n3

![Screenshot 2025-02-08 185328](<Pic\Screenshot 2025-02-08 185328.png>)

#### 5.4.2 n1 -> n0, n2, n3

![Screenshot 2025-02-08 185411](<Pic\Screenshot 2025-02-08 185411.png>)

#### 5.4.3 n2 -> n0, n1, n3

![Screenshot 2025-02-08 185452](<Pic\Screenshot 2025-02-08 185452.png>)

#### 5.4.4 n3 -> n0, n1, n2

![Screenshot 2025-02-08 185531](<Pic\Screenshot 2025-02-08 185531.png>)

### 5.5 Test with iperf

* Set n0 as TCP Server, the port number is 5003

![Screenshot 2025-02-08 190317](<Pic\Screenshot 2025-02-08 190317.png>)

* Set n1, n2, n3 as TCP Client, and set connection with the server n0 via port 5003

![Screenshot 2025-02-08 195702](<Pic\Screenshot 2025-02-08 195702.png>)

| Server | Client | Protocol | Bandwidth (Mbits/sec) |
| :----: | :----: | :------: | :-------------------: |
|   n0   |   n1   |   TCP    |         94.3          |
|   n0   |   n2   |   TCP    |         96.5          |
|   n0   |   n3   |   TCP    |         89.9          |

### 5.6 Test iperf with script

* n0 as TCP server

![Screenshot 2025-02-08 195702](<Pic\Screenshot 2025-02-08 195702.png>)

* n1 as TCP server

![Screenshot 2025-02-08 200213](<Pic\Screenshot 2025-02-08 200213.png>)

* n2 as TCP server

![Screenshot 2025-02-08 200824](<Pic\Screenshot 2025-02-08 200824.png>)

* n3 as TCP server

![Screenshot 2025-02-08 201039](<Pic\Screenshot 2025-02-08 201039.png>)

| Server | Client | Protocol | Bandwidth (Mbits/sec) |
| :----: | :----: | :------: | :-------------------: |
|   n0   |   n1   |   TCP    |         94.3          |
|   n0   |   n2   |   TCP    |         96.5          |
|   n0   |   n3   |   TCP    |         89.9          |
|   n1   |   n0   |   TCP    |         93.9          |
|   n1   |   n2   |   TCP    |         92.1          |
|   n1   |   n3   |   TCP    |         91.5          |
|   n2   |   n0   |   TCP    |         95.3          |
|   n2   |   n1   |   TCP    |         93.8          |
|   n2   |   n3   |   TCP    |         97.4          |
|   n3   |   n0   |   TCP    |         90.3          |
|   n3   |   n1   |   TCP    |         93.3          |
|   n3   |   n2   |   TCP    |         95.5          |

## 6. NetFPGA Hardware IP Router

### 6.1 Download reference router into NetFPGA

![Screenshot 2025-02-08 193418](<Pic\Screenshot 2025-02-08 193418.png>)

### 6.2 Check PID and Kill

![Screenshot 2025-02-08 201220](<Pic\Screenshot 2025-02-08 201220.png>)

### 6.3 Re-Run the iperf with reference_router.bit and check Bandwidth

* n0 as TCP server

![Screenshot 2025-02-08 201748](<Pic\Screenshot 2025-02-08 201748.png>)

* n1 as TCP server

![Screenshot 2025-02-08 201930](<Pic\Screenshot 2025-02-08 201930.png>)

* n2 as TCP server

![Screenshot 2025-02-08 202050](<Pic\Screenshot 2025-02-08 202050.png>)

* n3 as TCP server

![Screenshot 2025-02-08 202234](<Pic\Screenshot 2025-02-08 202234.png>)

| Server | Client | Protocol | Bandwidth (Mbits/sec) |
| :----: | :----: | :------: | :-------------------: |
|   n0   |   n1   |   TCP    |          378          |
|   n0   |   n2   |   TCP    |          373          |
|   n0   |   n3   |   TCP    |          372          |
|   n1   |   n0   |   TCP    |          357          |
|   n1   |   n2   |   TCP    |          449          |
|   n1   |   n3   |   TCP    |          349          |
|   n2   |   n0   |   TCP    |          354          |
|   n2   |   n1   |   TCP    |          439          |
|   n2   |   n3   |   TCP    |          354          |
|   n3   |   n0   |   TCP    |          320          |
|   n3   |   n1   |   TCP    |          373          |
|   n3   |   n2   |   TCP    |          359          |

* Has the bandwidth changed? If so, why?

we can see that the bandwith went up by a lot, and that we guess the reason could be that since the netfpga now already knows about the routes and configurations, it would make sending packages between each nodes much quicker since it doesn't have to sent the header to all the nodes and wait for the right nodes to response, hence the latency and bandwith could improve, and therefore the speed improvements

### 6.4 Re-Run the iperf with reference_nic.bit and check Bandwidth

* Kill rkd & download reference_nic.bit

![Screenshot 2025-02-08 202537](<Pic\Screenshot 2025-02-08 202537.png>)

![Screenshot 2025-02-08 203320](<Pic\Screenshot 2025-02-08 203320.png>)

* n0 as UDP server

![Screenshot 2025-02-08 203202](<Pic\Screenshot 2025-02-08 203202.png>)

* n1 as UDP server

![Screenshot 2025-02-08 205146](<Pic\Screenshot 2025-02-08 205146.png>)

* n2 as UDP server

![Screenshot 2025-02-08 205348](<Pic\Screenshot 2025-02-08 205348.png>)

* n3 as UDP server

![Screenshot 2025-02-08 205524](<Pic\Screenshot 2025-02-08 205524.png>)

| Server | Client | Protocol | Bandwidth (Mbits/sec) |
| :----: | :----: | :------: | :-------------------: |
|   n0   |   n1   |   UDP    |         1.05          |
|   n0   |   n2   |   UDP    |         1.05          |
|   n0   |   n3   |   UDP    |         1.05          |
|   n1   |   n0   |   UDP    |         1.05          |
|   n1   |   n2   |   UDP    |         1.05          |
|   n1   |   n3   |   UDP    |         1.05          |
|   n2   |   n0   |   UDP    |         1.05          |
|   n2   |   n1   |   UDP    |         1.05          |
|   n2   |   n3   |   UDP    |         1.05          |
|   n3   |   n0   |   UDP    |         1.05          |
|   n3   |   n1   |   UDP    |         1.05          |
|   n3   |   n2   |   UDP    |         1.05          |


* Why does using small packets stress the system?

Using small packets means that the router has to put more efferts in analysising each packet's header to decide where to sent them, and since every packet is very small in size, the total bandwidth would be limited by the amount of packet header the router could process every second.

### 6.5 Testing bidir UDP on each node

* n0 as UDP server

![Screenshot 2025-02-08 224236](<Pic\Screenshot 2025-02-08 224236.png>)

* n1 as UDP server

![Screenshot 2025-02-08 224507](<Pic\Screenshot 2025-02-08 224507.png>)

* n2 as UDP server

![Screenshot 2025-02-08 224715](<Pic\Screenshot 2025-02-08 224715.png>)

* n3 as UDP server

![Screenshot 2025-02-08 224943](<Pic\Screenshot 2025-02-08 224943.png>)

We can see that the speed of the test did improve but did not reach a point that it uses all 4Gbps of bandwidth, so we don't think that its fair to say that the NetFPGA can route IP trafffic bi-directionally at line speed for a total of 4Gbps of cross-wise bandwidth

## Extra. GitHub Link

* This Lab's update and commit history could be checked by the below link:
  * https://github.com/yuezhenglingluan/USC_EE533_lab4.git
