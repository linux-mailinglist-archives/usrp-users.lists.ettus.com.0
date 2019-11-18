Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D3D100C09
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 20:12:57 +0100 (CET)
Received: from [::1] (port=34924 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWmSG-0003XF-0h; Mon, 18 Nov 2019 14:12:56 -0500
Received: from starfish.geekisp.com ([216.168.135.166]:18099)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1iWmSC-0003Hb-5b
 for usrp-users@lists.ettus.com; Mon, 18 Nov 2019 14:12:52 -0500
Received: (qmail 30936 invoked by uid 1003); 18 Nov 2019 19:11:54 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 18 Nov 2019 19:11:54 -0000
To: Samuel Prager <sprager@usc.edu>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "Beeman, Isaac L." <ilbeeman@wpi.edu>
References: <BN7PR01MB3859F04224D313F8F5F458C6CB770@BN7PR01MB3859.prod.exchangelabs.com>
 <CAGNhwTOTi=LN+g-qCdK3_7XW6FZkDvRDbTaWZQpOrunQAFDhdg@mail.gmail.com>
 <6bafb417-0ef5-4654-85bd-9a519c733590@Spark>
 <BN7PR01MB3859F631BBBA41B8AA029C15CB4D0@BN7PR01MB3859.prod.exchangelabs.com>
 <66d2663a-0304-4cdf-9a6f-9059ac1c2018@Spark>
 <ca8afdc9-3e54-4080-a38c-c88d84039757@Spark>
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
 mQENBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAG0JVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz6JAT4EEwECACgCGyMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
 nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
 3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
 YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
 3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
 yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4Yxi5AQ0ETo83gQEIAPs+ZC0R
 gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
 GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
 uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
 LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
 gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAYkBJQQYAQIADwIbDAUC
 WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
 1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
 ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
 icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
 ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
 6eUfr0u7CwnEyqiQ
Message-ID: <c1af005a-9b3c-9586-7381-b392bb4f1fa2@balister.org>
Date: Mon, 18 Nov 2019 14:12:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <ca8afdc9-3e54-4080-a38c-c88d84039757@Spark>
Content-Language: en-US
Subject: Re: [USRP-users] [EXT] Re: Question about the IMU (MPU-9150) on the
 E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This might help:

https://github.com/EttusResearch/meta-ettus/blob/fido/e300-bsp/recipes-supp=
port/rtimulib/rtimulib/ettus-e300/RTIMULib.ini

At some point the rtimulib source moved around and was a bit funny to
build and was dropped from the image. The comment about probing and the
ini file made me think to look at the old build to see how I handled it.

Philip

On 11/18/19 2:03 PM, Samuel Prager via USRP-users wrote:
> Hi Isaac,
> =

> Yes this is exactly the error we had seen before.=A0I was able to reprodu=
ce these errors on our E312.
> =

> For some reason it looks like the auto discover isn=92t working properly =
(not finding correct device type and not assigning correct I2c bus or=A0I2C=
SlaveAddress).
> =

> You should be able to fix the issue by following these steps:
> =

> 1) root@ettus-e3xx-sg3:~# mv /etc/RTIMULib.ini /etc/RTIMULib.ini.backup
> =

> This will force creation of a new /etc/RTIMULib.ini file
> =

> 2) Now run the program. You should see the following output (as before):
> =

> root@ettus-e3xx-sg3:~# E312IMUTest
> Do something here with example option input: for example
> Settings file not found. Using defaults and creating settings file
> Failed to open I2C bus 1
> Failed to open SPI bus 0, select 0
> No IMU detected
> Using fusion algorithm RTQF
> No IMU found
> =

> 3) In the newly created /etc/RTIMULib.ini file make the following changes:
> =

> IMUType=3D2
> =

> #
> # Fusion type type -
> # =A0 0 - Null. Use if only sensor data required without fusion
> # =A0 1 - Kalman STATE4
> # =A0 2 - RTQF
> FusionType=3D2
> =

> #
> # Is bus I2C: 'true' for I2C, 'false' for SPI
> BusIsI2C=3Dtrue
> =

> #
> # I2C Bus (between 0 and 7)
> I2CBus=3D0
> =

> #
> # SPI Bus (between 0 and 7)
> SPIBus=3D0
> =

> #
> # SPI select (between 0 and 1)
> SPISelect=3D0
> =

> #
> # SPI Speed in Hz
> SPISpeed=3D500000
> =

> #
> # I2C slave address (filled in automatically by auto discover)
> I2CSlaveAddress=3D105
> =

> =

> 5) You should now be able to run the program successfully (If you get=A0I=
2C read errors,=A0try restarting the E310. Everything should work afterward=
s).
> =

> For reference, I have included my complete /etc/RTIMULib.ini file:
> =

> root@ettus-e3xx-sg3:~# cat /etc/RTIMULib.ini
> # #####################################################################
> #
> # RTIMULib settings file
> =

> # General settings
> #
> =

> # IMU type -
> # =A0 0 =3D Auto discover
> # =A0 1 =3D Null (used when data is provided from a remote IMU
> # =A0 2 =3D InvenSense MPU-9150
> # =A0 3 =3D STM L3GD20H + LSM303D
> # =A0 4 =3D STM L3GD20 + LSM303DLHC
> # =A0 5 =3D STM LSM9DS0
> # =A0 6 =3D STM LSM9DS1
> # =A0 7 =3D InvenSense MPU-9250
> # =A0 8 =3D STM L3GD20H + LSM303DLHC
> # =A0 9 =3D Bosch BMX055
> # =A0 10 =3D Bosch BNX055
> IMUType=3D2
> =

> #
> # Fusion type type -
> # =A0 0 - Null. Use if only sensor data required without fusion
> # =A0 1 - Kalman STATE4
> # =A0 2 - RTQF
> FusionType=3D2
> =

> #
> # Is bus I2C: 'true' for I2C, 'false' for SPI
> BusIsI2C=3Dtrue
> =

> #
> # I2C Bus (between 0 and 7)
> I2CBus=3D0
> =

> #
> # SPI Bus (between 0 and 7)
> SPIBus=3D0
> =

> #
> # SPI select (between 0 and 1)
> SPISelect=3D0
> =

> #
> # SPI Speed in Hz
> SPISpeed=3D500000
> =

> #
> # I2C slave address (filled in automatically by auto discover)
> I2CSlaveAddress=3D105
> =

> #
> # IMU axis rotation - see RTIMU.h for details
> AxisRotation=3D0
> =

> # Pressure sensor type -
> # =A0 0 =3D Auto discover
> # =A0 1 =3D Null (no hardware or don't use)
> # =A0 2 =3D BMP180
> # =A0 3 =3D LPS25H
> # =A0 4 =3D MS5611
> # =A0 5 =3D MS5637
> PressureType=3D0
> =

> #
> # I2C pressure sensor address (filled in automatically by auto discover)
> I2CPressureAddress=3D0
> =

> # Humidity sensor type -
> # =A0 0 =3D Auto discover
> # =A0 1 =3D Null (no hardware or don't use)
> # =A0 2 =3D HTS221
> # =A0 3 =3D HTU21D
> HumidityType=3D0
> =

> #
> # I2C humidity sensor address (filled in automatically by auto discover)
> I2CHumidityAddress=3D0
> =

> # #####################################################################
> #
> =

> # Compass calibration settings
> CompassCalValid=3Dfalse
> CompassCalMinX=3D0.000000
> CompassCalMinY=3D0.000000
> CompassCalMinZ=3D0.000000
> CompassCalMaxX=3D0.000000
> CompassCalMaxY=3D0.000000
> CompassCalMaxZ=3D0.000000
> =

> # #####################################################################
> #
> =

> # Compass adjustment settings
> # Compass declination is in radians and is subtracted from calculated hea=
ding
> compassAdjDeclination=3D0.000000
> =

> # #####################################################################
> #
> =

> # Compass ellipsoid calibration
> compassCalEllipsoidValid=3Dfalse
> compassCalOffsetX=3D0.000000
> compassCalOffsetY=3D0.000000
> compassCalOffsetZ=3D0.000000
> compassCalCorr11=3D1.000000
> compassCalCorr12=3D0.000000
> compassCalCorr13=3D0.000000
> compassCalCorr21=3D0.000000
> compassCalCorr22=3D1.000000
> compassCalCorr23=3D0.000000
> compassCalCorr31=3D0.000000
> compassCalCorr32=3D0.000000
> compassCalCorr33=3D1.000000
> =

> # #####################################################################
> #
> =

> # Accel calibration
> AccelCalValid=3Dfalse
> AccelCalMinX=3D0.000000
> AccelCalMinY=3D0.000000
> AccelCalMinZ=3D0.000000
> AccelCalMaxX=3D0.000000
> AccelCalMaxY=3D0.000000
> AccelCalMaxZ=3D0.000000
> =

> # #####################################################################
> #
> =

> # Saved gyro bias data
> GyroBiasValid=3Dtrue
> GyroBiasX=3D-0.031280
> GyroBiasY=3D-0.017285
> GyroBiasZ=3D-0.020221
> =

> # #####################################################################
> #
> # MPU-9150 settings
> #
> =

> # Gyro sample rate (between 5Hz and 1000Hz)
> MPU9150GyroAccelSampleRate=3D900
> =

> #
> # Compass sample rate (between 1Hz and 100Hz)
> MPU9150CompassSampleRate=3D80
> =

> #
> # Gyro/accel low pass filter -
> # =A0 0 - gyro: 256Hz, accel: 260Hz
> # =A0 1 - gyro: 188Hz, accel: 184Hz
> # =A0 2 - gyro: 98Hz, accel: 98Hz
> # =A0 3 - gyro: 42Hz, accel: 44Hz
> # =A0 4 - gyro: 20Hz, accel: 21Hz
> # =A0 5 - gyro: 10Hz, accel: 10Hz
> # =A0 6 - gyro: 5Hz, accel: 5Hz
> MPU9150GyroAccelLpf=3D4
> =

> #
> # Gyro full scale range -
> # =A0 0 =A0- +/- 250 degress per second
> # =A0 8 =A0- +/- 500 degress per second
> # =A0 16 - +/- 1000 degress per second
> # =A0 24 - +/- 2000 degress per second
> MPU9150GyroFSR=3D8
> =

> #
> # Accel full scale range -
> # =A0 0 =A0- +/- 2g
> # =A0 8 =A0- +/- 4g
> # =A0 16 - +/- 8g
> # =A0 24 - +/- 16g
> MPU9150AccelFSR=3D0
> =

> # #####################################################################
> #
> # MPU-9250 settings
> #
> =

> # Gyro sample rate (between 5Hz and 1000Hz plus 8000Hz and 32000Hz)
> MPU9250GyroAccelSampleRate=3D80
> =

> #
> # Compass sample rate (between 1Hz and 100Hz)
> MPU9250CompassSampleRate=3D40
> =

> #
> # Gyro low pass filter -
> # =A0 0x11 - 8800Hz, 0.64mS delay
> # =A0 0x10 - 3600Hz, 0.11mS delay
> # =A0 0x00 - 250Hz, 0.97mS delay
> # =A0 0x01 - 184Hz, 2.9mS delay
> # =A0 0x02 - 92Hz, 3.9mS delay
> # =A0 0x03 - 41Hz, 5.9mS delay
> # =A0 0x04 - 20Hz, 9.9mS delay
> # =A0 0x05 - 10Hz, 17.85mS delay
> # =A0 0x06 - 5Hz, 33.48mS delay
> MPU9250GyroLpf=3D3
> =

> #
> # Accel low pass filter -
> # =A0 0x08 - 1130Hz, 0.75mS delay
> # =A0 0x00 - 460Hz, 1.94mS delay
> # =A0 0x01 - 184Hz, 5.80mS delay
> # =A0 0x02 - 92Hz, 7.80mS delay
> # =A0 0x03 - 41Hz, 11.80mS delay
> # =A0 0x04 - 20Hz, 19.80mS delay
> # =A0 0x05 - 10Hz, 35.70mS delay
> # =A0 0x06 - 5Hz, 66.96mS delay
> MPU9250AccelLpf=3D3
> =

> #
> # Gyro full scale range -
> # =A0 0 =A0- +/- 250 degress per second
> # =A0 8 =A0- +/- 500 degress per second
> # =A0 16 - +/- 1000 degress per second
> # =A0 24 - +/- 2000 degress per second
> MPU9250GyroFSR=3D16
> =

> #
> # Accel full scale range -
> # =A0 0 =A0- +/- 2g
> # =A0 8 =A0- +/- 4g
> # =A0 16 - +/- 8g
> # =A0 24 - +/- 16g
> MPU9250AccelFSR=3D16
> =

> # #####################################################################
> #
> # L3GD20H + LSM303D settings
> =

> #
> # Gyro sample rate -
> # =A0 0 =3D 12.5Hz
> # =A0 1 =3D 25Hz
> # =A0 2 =3D 50Hz
> # =A0 3 =3D 100Hz
> # =A0 4 =3D 200Hz
> # =A0 5 =3D 400Hz
> # =A0 6 =3D 800Hz
> GD20HM303DGyroSampleRate=3D2
> =

> #
> # Gyro full scale range -
> # =A0 0 =3D 245 degrees per second
> # =A0 1 =3D 500 degrees per second
> # =A0 2 =3D 2000 degrees per second
> GD20HM303DGyroFsr=3D1
> =

> #
> # Gyro high pass filter -
> # =A0 0 - 9 but see the L3GD20H manual for details
> GD20HM303DGyroHpf=3D4
> =

> #
> # Gyro bandwidth -
> # =A0 0 - 3 but see the L3GD20H manual for details
> GD20HM303DGyroBW=3D1
> =

> # Accel sample rate -
> # =A0 1 =3D 3.125Hz
> # =A0 2 =3D 6.25Hz
> # =A0 3 =3D 12.5Hz
> # =A0 4 =3D 25Hz
> # =A0 5 =3D 50Hz
> # =A0 6 =3D 100Hz
> # =A0 7 =3D 200Hz
> # =A0 8 =3D 400Hz
> # =A0 9 =3D 800Hz
> # =A0 10 =3D 1600Hz
> GD20HM303DAccelSampleRate=3D5
> =

> #
> # Accel full scale range -
> # =A0 0 =3D +/- 2g
> # =A0 1 =3D +/- 4g
> # =A0 2 =3D +/- 6g
> # =A0 3 =3D +/- 8g
> # =A0 4 =3D +/- 16g
> GD20HM303DAccelFsr=3D3
> =

> #
> # Accel low pass filter -
> # =A0 0 =3D 773Hz
> # =A0 1 =3D 194Hz
> # =A0 2 =3D 362Hz
> # =A0 3 =3D 50Hz
> GD20HM303DAccelLpf=3D3
> =

> #
> # Compass sample rate -
> # =A0 0 =3D 3.125Hz
> # =A0 1 =3D 6.25Hz
> # =A0 2 =3D 12.5Hz
> # =A0 3 =3D 25Hz
> # =A0 4 =3D 50Hz
> # =A0 5 =3D 100Hz
> GD20HM303DCompassSampleRate=3D4
> =

> #
> # Compass full scale range -
> # =A0 0 =3D +/- 200 uT
> # =A0 1 =3D +/- 400 uT
> # =A0 2 =3D +/- 800 uT
> # =A0 3 =3D +/- 1200 uT
> GD20HM303DCompassFsr=3D0
> =

> # #####################################################################
> #
> # L3GD20 + LSM303DLHC settings
> #
> =

> # Gyro sample rate -
> # =A0 0 =3D 95z
> # =A0 1 =3D 190Hz
> # =A0 2 =3D 380Hz
> # =A0 3 =3D 760Hz
> GD20M303DLHCGyroSampleRate=3D0
> =

> #
> # Gyro full scale range -
> # =A0 0 =3D 250 degrees per second
> # =A0 1 =3D 500 degrees per second
> # =A0 2 =3D 2000 degrees per second
> GD20M303DLHCGyroFsr=3D1
> =

> #
> # Gyro high pass filter -
> # =A0 0 - 9 but see the L3GD20 manual for details
> GD20M303DLHCGyroHpf=3D4
> =

> #
> # Gyro bandwidth -
> # =A0 0 - 3 but see the L3GD20 manual for details
> GD20M303DLHCGyroBW=3D1
> =

> # Accel sample rate -
> # =A0 1 =3D 1Hz
> # =A0 2 =3D 10Hz
> # =A0 3 =3D 25Hz
> # =A0 4 =3D 50Hz
> # =A0 5 =3D 100Hz
> # =A0 6 =3D 200Hz
> # =A0 7 =3D 400Hz
> GD20M303DLHCAccelSampleRate=3D4
> =

> #
> # Accel full scale range -
> # =A0 0 =3D +/- 2g
> # =A0 1 =3D +/- 4g
> # =A0 2 =3D +/- 8g
> # =A0 3 =3D +/- 16g
> GD20M303DLHCAccelFsr=3D2
> =

> #
> # Compass sample rate -
> # =A0 0 =3D 0.75Hz
> # =A0 1 =3D 1.5Hz
> # =A0 2 =3D 3Hz
> # =A0 3 =3D 7.5Hz
> # =A0 4 =3D 15Hz
> # =A0 5 =3D 30Hz
> # =A0 6 =3D 75Hz
> # =A0 7 =3D 220Hz
> GD20M303DLHCCompassSampleRate=3D5
> =

> #
> # Compass full scale range -
> # =A0 1 =3D +/- 130 uT
> # =A0 2 =3D +/- 190 uT
> # =A0 3 =3D +/- 250 uT
> # =A0 4 =3D +/- 400 uT
> # =A0 5 =3D +/- 470 uT
> # =A0 6 =3D +/- 560 uT
> # =A0 7 =3D +/- 810 uT
> GD20M303DLHCCompassFsr=3D1
> =

> # #####################################################################
> #
> # L3GD20H + LSM303DLHC settings
> #
> =

> #
> # Gyro sample rate -
> # =A0 0 =3D 12.5Hz
> # =A0 1 =3D 25Hz
> # =A0 2 =3D 50Hz
> # =A0 3 =3D 100Hz
> # =A0 4 =3D 200Hz
> # =A0 5 =3D 400Hz
> # =A0 6 =3D 800Hz
> GD20HM303DLHCGyroSampleRate=3D2
> =

> #
> # Gyro full scale range -
> # =A0 0 =3D 245 degrees per second
> # =A0 1 =3D 500 degrees per second
> # =A0 2 =3D 2000 degrees per second
> GD20HM303DLHCGyroFsr=3D1
> =

> #
> # Gyro high pass filter -
> # =A0 0 - 9 but see the L3GD20H manual for details
> GD20HM303DLHCGyroHpf=3D4
> =

> #
> # Gyro bandwidth -
> # =A0 0 - 3 but see the L3GD20H manual for details
> GD20HM303DLHCGyroBW=3D1
> =

> # Accel sample rate -
> # =A0 1 =3D 1Hz
> # =A0 2 =3D 10Hz
> # =A0 3 =3D 25Hz
> # =A0 4 =3D 50Hz
> # =A0 5 =3D 100Hz
> # =A0 6 =3D 200Hz
> # =A0 7 =3D 400Hz
> GD20HM303DLHCAccelSampleRate=3D4
> =

> #
> # Accel full scale range -
> # =A0 0 =3D +/- 2g
> # =A0 1 =3D +/- 4g
> # =A0 2 =3D +/- 8g
> # =A0 3 =3D +/- 16g
> GD20HM303DLHCAccelFsr=3D2
> =

> #
> # Compass sample rate -
> # =A0 0 =3D 0.75Hz
> # =A0 1 =3D 1.5Hz
> # =A0 2 =3D 3Hz
> # =A0 3 =3D 7.5Hz
> # =A0 4 =3D 15Hz
> # =A0 5 =3D 30Hz
> # =A0 6 =3D 75Hz
> # =A0 7 =3D 220Hz
> GD20HM303DLHCCompassSampleRate=3D5
> =

> #
> # Compass full scale range -
> # =A0 1 =3D +/- 130 uT
> # =A0 2 =3D +/- 190 uT
> # =A0 3 =3D +/- 250 uT
> # =A0 4 =3D +/- 400 uT
> # =A0 5 =3D +/- 470 uT
> # =A0 6 =3D +/- 560 uT
> # =A0 7 =3D +/- 810 uT
> GD20HM303DLHCCompassFsr=3D1
> =

> # #####################################################################
> #
> # LSM9DS0 settings
> #
> =

> # Gyro sample rate -
> # =A0 0 =3D 95z
> # =A0 1 =3D 190Hz
> # =A0 2 =3D 380Hz
> # =A0 3 =3D 760Hz
> LSM9DS0GyroSampleRate=3D0
> =

> #
> # Gyro full scale range -
> # =A0 0 =3D 250 degrees per second
> # =A0 1 =3D 500 degrees per second
> # =A0 2 =3D 2000 degrees per second
> LSM9DS0GyroFsr=3D1
> =

> #
> # Gyro high pass filter -
> # =A0 0 - 9 but see the LSM9DS0 manual for details
> LSM9DS0GyroHpf=3D4
> =

> #
> # Gyro bandwidth -
> # =A0 0 - 3 but see the LSM9DS0 manual for details
> LSM9DS0GyroBW=3D1
> =

> # Accel sample rate -
> # =A0 1 =3D 3.125Hz
> # =A0 2 =3D 6.25Hz
> # =A0 3 =3D 12.5Hz
> # =A0 4 =3D 25Hz
> # =A0 5 =3D 50Hz
> # =A0 6 =3D 100Hz
> # =A0 7 =3D 200Hz
> # =A0 8 =3D 400Hz
> # =A0 9 =3D 800Hz
> # =A0 10 =3D 1600Hz
> LSM9DS0AccelSampleRate=3D5
> =

> #
> # Accel full scale range -
> # =A0 0 =3D +/- 2g
> # =A0 1 =3D +/- 4g
> # =A0 2 =3D +/- 6g
> # =A0 3 =3D +/- 8g
> # =A0 4 =3D +/- 16g
> LSM9DS0AccelFsr=3D3
> =

> #
> # Accel low pass filter -
> # =A0 0 =3D 773Hz
> # =A0 1 =3D 194Hz
> # =A0 2 =3D 362Hz
> # =A0 3 =3D 50Hz
> LSM9DS0AccelLpf=3D3
> =

> #
> # Compass sample rate -
> # =A0 0 =3D 3.125Hz
> # =A0 1 =3D 6.25Hz
> # =A0 2 =3D 12.5Hz
> # =A0 3 =3D 25Hz
> # =A0 4 =3D 50Hz
> # =A0 5 =3D 100Hz
> LSM9DS0CompassSampleRate=3D4
> =

> #
> # Compass full scale range -
> # =A0 0 =3D +/- 200 uT
> # =A0 1 =3D +/- 400 uT
> # =A0 2 =3D +/- 800 uT
> # =A0 3 =3D +/- 1200 uT
> LSM9DS0CompassFsr=3D0
> =

> # #####################################################################
> #
> # LSM9DS1 settings
> #
> =

> # Gyro sample rate -
> # =A0 0 =3D 95Hz
> # =A0 1 =3D 190Hz
> # =A0 2 =3D 380Hz
> # =A0 3 =3D 760Hz
> LSM9DS1GyroSampleRate=3D2
> =

> #
> # Gyro full scale range -
> # =A0 0 =3D 250 degrees per second
> # =A0 1 =3D 500 degrees per second
> # =A0 2 =3D 2000 degrees per second
> LSM9DS1GyroFsr=3D1
> =

> #
> # Gyro high pass filter -
> # =A0 0 - 9 but see the LSM9DS1 manual for details
> LSM9DS1GyroHpf=3D4
> =

> #
> # Gyro bandwidth -
> # =A0 0 - 3 but see the LSM9DS1 manual for details
> LSM9DS1GyroBW=3D1
> =

> # Accel sample rate -
> # =A0 1 =3D 14.9Hz
> # =A0 2 =3D 59.5Hz
> # =A0 3 =3D 119Hz
> # =A0 4 =3D 238Hz
> # =A0 5 =3D 476Hz
> # =A0 6 =3D 952Hz
> LSM9DS1AccelSampleRate=3D3
> =

> #
> # Accel full scale range -
> # =A0 0 =3D +/- 2g
> # =A0 1 =3D +/- 16g
> # =A0 2 =3D +/- 4g
> # =A0 3 =3D +/- 8g
> LSM9DS1AccelFsr=3D3
> =

> #
> # Accel low pass filter -
> # =A0 0 =3D 408Hz
> # =A0 1 =3D 211Hz
> # =A0 2 =3D 105Hz
> # =A0 3 =3D 50Hz
> LSM9DS1AccelLpf=3D3
> =

> #
> # Compass sample rate -
> # =A0 0 =3D 0.625Hz
> # =A0 1 =3D 1.25Hz
> # =A0 2 =3D 2.5Hz
> # =A0 3 =3D 5Hz
> # =A0 4 =3D 10Hz
> # =A0 5 =3D 20Hz
> # =A0 6 =3D 40Hz
> # =A0 7 =3D 80Hz
> LSM9DS1CompassSampleRate=3D5
> =

> #
> # Compass full scale range -
> # =A0 0 =3D +/- 400 uT
> # =A0 1 =3D +/- 800 uT
> # =A0 2 =3D +/- 1200 uT
> # =A0 3 =3D +/- 1600 uT
> LSM9DS1CompassFsr=3D0
> =

> # #####################################################################
> #
> # BMX055 settings
> #
> =

> #
> # Gyro sample rate -
> # =A0 0 =3D 2000Hz (532Hz filter)
> # =A0 1 =3D 2000Hz (230Hz filter)
> # =A0 2 =3D 1000Hz (116Hz filter)
> # =A0 3 =3D 400Hz (47Hz filter)
> # =A0 4 =3D 200Hz (23Hz filter)
> # =A0 5 =3D 100Hz (12Hz filter)
> # =A0 6 =3D 200Hz (64Hz filter)
> # =A0 7 =3D 100Hz (32Hz filter)
> BMX055GyroSampleRate=3D7
> =

> #
> # Gyro full scale range -
> # =A0 0 =3D 2000 deg/s
> # =A0 1 =3D 1000 deg/s
> # =A0 2 =3D 500 deg/s
> # =A0 3 =3D 250 deg/s
> # =A0 4 =3D 125 deg/s
> BMX055GyroFsr=3D2
> =

> #
> # Accel sample rate -
> # =A0 0 =3D 15.63Hz
> # =A0 1 =3D 31.25
> # =A0 2 =3D 62.5
> # =A0 3 =3D 125
> # =A0 4 =3D 250
> # =A0 5 =3D 500
> # =A0 6 =3D 1000
> # =A0 7 =3D 2000
> BMX055AccelSampleRate=3D3
> =

> #
> # Accel full scale range -
> # =A0 0 =3D +/- 2g
> # =A0 1 =3D +/- 4g
> # =A0 2 =3D +/- 8g
> # =A0 3 =3D +/- 16g
> BMX055AccelFsr=3D2
> =

> #
> # Mag presets -
> # =A0 0 =3D Low power
> # =A0 1 =3D Regular
> # =A0 2 =3D Enhanced
> # =A0 3 =3D High accuracy
> BMX055MagPreset=3D1
> =

> =

> =

> Hope this helps,
> -Sam
> On Nov 18, 2019, 9:31 AM -0800, Samuel Prager <sprager@usc.edu>, wrote:
>> Hi Isaac,
>>
>> I vaguely remember seeing this behavior on one of our e312s but it=92s b=
een a while. If I recall, the solution involved the RTIMULib.ini file (whic=
h should be created in /etc). Either the ini file was set to use the wrong =
SPI bus or the ini file was being saved in the wrong place or not at all. I=
 would start there.
>>
>> Sam
>> On Nov 18, 2019, 8:24 AM -0800, Beeman, Isaac L. , wrote:
>>> Hi Sam,
>>>
>>> Thanks for linking your simple example program for streaming IMU data. =
I finally got the RTIMULib built and installed on the E312, but when I run =
your program I get this output:
>>>
>>> root@ni-e31x-:~/usr/E312IMUTest/build# ./E312IMUTest
>>> Do something here with example option input: for example
>>> Settings file not found. Using defaults and creating settings file
>>> Failed to open I2C bus 1
>>> Failed to open SPI bus 0, select 0
>>> Failed to open SPI bus 0, select 1
>>> No IMU detected
>>> Using fusion algorithm RTQF
>>> No IMU found
>>> Error intializing IMU
>>>
>>> Was there any other setup I needed to do before running it (i.e. creati=
ng a settings file for the radio)? Do you think using a newer version of UH=
D and the E312 image might cause this issue?
>>>
>>> Isaac Beeman
>>>
>>> From: Samuel Prager <sprager@usc.edu>
>>> Sent: Tuesday, November 12, 2019 5:50 PM
>>> To: Beeman, Isaac L. <ilbeeman@wpi.edu>; Michael Dickens <michael.dicke=
ns@ettus.com>
>>> Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>> Subject: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on th=
e E310
>>>
>>> Hi Isaac,
>>>
>>> Here is a simple example program I wrote a while back for continuously =
streaming IMU data on the E310/E312.
>>>
>>> https://github.com/samprager/E312IMUTest
>>>
>>> See the README for RTIMULib installation instructions (the correct libr=
ary is=A0https://github.com/RPi-Distro/RTIMULib).
>>>
>>> Sam
>>> On Nov 12, 2019, 12:30 PM -0800, Michael Dickens via USRP-users <usrp-u=
sers@lists.ettus.com>, wrote:
>>>> Hi Isaac - UHD itself provides no API to the IMU; never has. The=A0RTI=
MULib, possibly an older version than current and assuming it can be built =
and installed on the E310, should be able to access the IMU to provide info=
rmation from it. Note "possibly", "assuming", "should" ... clearly this isn=
't a majorly supported feature of the E310! Good luck! - MLD
>>>>
>>>> On Tue, Nov 12, 2019 at 12:37 PM Beeman, Isaac L. via USRP-users <usrp=
-users@lists.ettus.com> wrote:
>>>>> Marcus and List,
>>>>>
>>>>> I was hoping someone knew the steps involved to get the RTIMULib setu=
p on the USRP. I tried building and installing both the RTIMULib and Linux =
folders, but the Linux one fails:
>>>>>
>>>>>
>>>>> -- Found unsuitable Qt version "" from NOTFOUND
>>>>> Qt QTOPENGL library not found.
>>>>> Qt QTGUI library not found.
>>>>> Qt QTCORE library not found.
>>>>> CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4_ADD_RESOURCES):
>>>>> =A0 =A0 Unknown CMake command "QT4_ADD_RESOURCES".
>>>>> -- Configuring incomplete, errors occurred!
>>>>>
>>>>>
>>>>> I figured that I can't install the RTIMULibDemo apps because they use=
 a GUI, so I built and installed the RTIMULibDrive and RTIMULibCal individu=
ally. Only, when I try to run one of these apps I get the following error:
>>>>>
>>>>>
>>>>> RTIMULibDrive: error while loading shared libraries: libRTIMULib.so.7=
: cannot open shared object file: No such file or directory
>>>>>
>>>>>
>>>>> I don't get how to fix this. When I build and install the same apps o=
n my host computer they run fine (but obviously can't find any IMU). Consid=
ering that any applications I write also use the same libraries, I feel lik=
e this is going to be an issue.
>>>>>
>>>>> There isn't any documentation that I can find on the usage of the C++=
 library for RTIMULib. Just reading the code in RTIMULibDrive.cpp as an exa=
mple, it doesn't seem too complicated, but it obviously is a generic progra=
m that isn't using the settings needed to connect to the MPU-9150.
>>>>>
>>>>> If anyone knows how to get one of these apps (RTIMULibDrive or RTIMUL=
ibCal) working or how to use RTIMULib.h in connecting to the MPU-9150 over =
I2C, it would be much appreciated.
>>>>>
>>>>> -Isaac Beeman
>>>>>
>>>>>
>>>>>
>>>>> P.S. I also tried 'i2cdetect -y 0' to see if the MPU-9150 has the I2C=
 address 0x69 like the schematics say, but I only get:
>>>>>
>>>>> Warning: Can't use SMBus Quick Write command, will skip some addresses
>>>>> =A0 =A0 =A00=A0 1=A0 2=A0 3=A0 4=A0 5=A0 6=A0 7=A0 8=A0 9=A0 a=A0 b=
=A0 c=A0 d=A0 e=A0 f
>>>>> 00:
>>>>> 10:
>>>>> 20:
>>>>> 30: -- -- -- -- -- -- -- --
>>>>> 40:
>>>>> 50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
>>>>> 60:
>>>>> 70:
>>>>>
>>>>> with nothing under 0x69. So that's weird.
>>>>>
>>>>>
>>>>> -----Original Message-----
>>>>> From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Ma=
rcus D. Leech via USRP-users
>>>>> Sent: Tuesday, November 12, 2019 10:35 AM
>>>>> To: usrp-users@lists.ettus.com
>>>>> Subject: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on =
the E310
>>>>>
>>>>> On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:
>>>>>> Hi List,
>>>>>>
>>>>>> I have recently started working with the E310/E312 and have gotten m=
ultichannel RX/TX and GPS working, but I can't figure out how to grab data =
off of the internal IMU/MPU-9150. I found some website (http://gnuradio.cn/=
en/html/support/en/page_usrp_e3x0.html) that said that the USRP image shoul=
d contain RTIMULib applications with allow the user to test the IMU, but, u=
nless I am looking in the wrong place, the current image for the E310 does =
not have any RTIMULib applications on it.
>>>>>>
>>>>>> I want to know if there are any API calls or libraries that would al=
low me to do development with the IMU.
>>>>>>
>>>>>> -Isaac Beeman
>>>>>>
>>>>>> _______________________________________________
>>>>>
>>>>> You might start here:
>>>>>
>>>>> https://github.com/RTIMULib
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>>
>>>> --
>>>> Michael Dickens
>>>> Ettus Research Technical Support
>>>> Email: support@ettus.com
>>>> Web: https://ettus.com/
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_=
mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwICAg&c=3DclK7kQUTWtAV=
EOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&r=3DopIuWAKmywF059tAs2i3Pg&m=3DrGLxgINOMrS4=
sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g&s=3D8wPPngBEnPiaAxtUARbH1opcSV3Pgih5Konyr2k=
f9-c&e=3D
> =

> =

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
