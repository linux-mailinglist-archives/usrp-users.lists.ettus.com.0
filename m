Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B90100BF0
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 20:04:16 +0100 (CET)
Received: from [::1] (port=58422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWmJn-0001qx-8l; Mon, 18 Nov 2019 14:04:11 -0500
Received: from mail-pf1-f181.google.com ([209.85.210.181]:43248)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sprager@usc.edu>) id 1iWmJi-0001gn-Of
 for usrp-users@lists.ettus.com; Mon, 18 Nov 2019 14:04:07 -0500
Received: by mail-pf1-f181.google.com with SMTP id 3so10814075pfb.10
 for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2019 11:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usc-edu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
 bh=7mxRlpjOf8DbWWlhcShxQlW/dOnhDhrY187yP+al3Jo=;
 b=oM4OHgQDfwUYJC634IbrR7KNeSm7oAwYjzy/oYYg5UlLsU7RmJRoGWAYYMJPD8Lixz
 mCF8RaaENtrESDP7Jkn78pNkE4W3CHRx4fIg/WHHs2mzwZBJJodKWRPfwIPVPu4WUOIT
 Qn1ru/8nqsqQLgz+cGh82bFWAMPtgyM2Q6VKp9hhvo0zkqdDUjzWO3TpCx8iqSoG6mZV
 bWM/+UUUKZPzRepYcp8DtrIZ7tGt9d8x1X44Y3WHwzDpB0fJ3CMmB6z1QQ4KRYtSjnvQ
 oka+Kz+dPRTRQmq/Uhq0+s06S4cVRbCozh/rw2Zb8TB+NbJJa5Jvk32H7H/yb1wtjaIC
 xj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
 :subject:mime-version;
 bh=7mxRlpjOf8DbWWlhcShxQlW/dOnhDhrY187yP+al3Jo=;
 b=JpSYKwwVcFpM1AE8DMoljbjAPlRWA4wD52WmMx8bF9ZS2uSGVjiWapD+EJfbPLciUV
 VTHLDbGqah707UyfGtnW/k/fUAJJWA9vGzS7tewYH72vHcBbV/y1cdhJZWtznCvjmH/K
 IA7RX7UERqRzIpJJhdR5AQQrO/QDD7LSfNWx7T8zv8QS9OEIO72fEXS7LEKeSn2MBXsW
 E7rDxAI8CpCqh7pIW52KNf1/VjDi6c1CKesV8K1qIN0CCEwyKzQcMayv3uJG6ViTNVZ9
 ENoUophhEKF4uKxEUBHCUW8u9ZEVXe+RAqp7kwgLx/NncGJPPjq/tebGFM22RrqC9QnM
 zzew==
X-Gm-Message-State: APjAAAUmpaaGnb/i8vhAV8vFLaZxfAJNQmqX1NP+QLEbU9Z7dqCxK4ts
 VkCl+6R2sCbeGvN88AZrKZ7tuvPxEF8=
X-Google-Smtp-Source: APXvYqysbUNNKXZlbQlJWiV3UZ83hJbWWLf60Lmi7/xCepXA5Mz6vmrVoNYQIpyn0gzPoKhuHaiiZg==
X-Received: by 2002:a62:8010:: with SMTP id j16mr834644pfd.249.1574103804226; 
 Mon, 18 Nov 2019 11:03:24 -0800 (PST)
Received: from [10.26.248.96] ([128.125.148.81])
 by smtp.gmail.com with ESMTPSA id c12sm23621059pfp.67.2019.11.18.11.03.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Nov 2019 11:03:23 -0800 (PST)
Date: Mon, 18 Nov 2019 11:03:14 -0800
To: "=?utf-8?Q?usrp-users=40lists.ettus.com?="
 <usrp-users@lists.ettus.com>, "=?utf-8?Q?Beeman=2C_Isaac_L.?="
 <ilbeeman@wpi.edu>
Message-ID: <ca8afdc9-3e54-4080-a38c-c88d84039757@Spark>
In-Reply-To: <66d2663a-0304-4cdf-9a6f-9059ac1c2018@Spark>
References: <BN7PR01MB3859F04224D313F8F5F458C6CB770@BN7PR01MB3859.prod.exchangelabs.com>
 <CAGNhwTOTi=LN+g-qCdK3_7XW6FZkDvRDbTaWZQpOrunQAFDhdg@mail.gmail.com>
 <6bafb417-0ef5-4654-85bd-9a519c733590@Spark>
 <BN7PR01MB3859F631BBBA41B8AA029C15CB4D0@BN7PR01MB3859.prod.exchangelabs.com>
 <66d2663a-0304-4cdf-9a6f-9059ac1c2018@Spark>
X-Readdle-Message-ID: ca8afdc9-3e54-4080-a38c-c88d84039757@Spark
MIME-Version: 1.0
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
From: Samuel Prager via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Samuel Prager <sprager@usc.edu>
Content-Type: multipart/mixed; boundary="===============6481164912036542926=="
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

--===============6481164912036542926==
Content-Type: multipart/alternative; boundary="5dd2eaf8_109cf92e_1ef4"

--5dd2eaf8_109cf92e_1ef4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi Isaac,

Yes this is exactly the error we had seen before.=C2=A0I was able to repr=
oduce these errors on our E312.

=46or some reason it looks like the auto discover isn=E2=80=99t working p=
roperly (not finding correct device type and not assigning correct I2c bu=
s or=C2=A0I2CSlaveAddress).

You should be able to fix the issue by following these steps:

1) root=40ettus-e3xx-sg3:=7E=23 mv /etc/RTIMULib.ini /etc/RTIMULib.ini.ba=
ckup

This will force creation of a new /etc/RTIMULib.ini file

2) Now run the program. You should see the following output (as before):

root=40ettus-e3xx-sg3:=7E=23 E312IMUTest
Do something here with example option input: for example
Settings file not found. Using defaults and creating settings file
=46ailed to open I2C bus 1
=46ailed to open SPI bus 0, select 0
No IMU detected
Using fusion algorithm RTQ=46
No IMU found

3) In the newly created /etc/RTIMULib.ini file make the following changes=
:

IMUType=3D2

=23
=23 =46usion type type -
=23 =C2=A0 0 - Null. Use if only sensor data required without fusion
=23 =C2=A0 1 - Kalman STATE4
=23 =C2=A0 2 - RTQ=46
=46usionType=3D2

=23
=23 Is bus I2C: 'true' for I2C, 'false' for SPI
BusIsI2C=3Dtrue

=23
=23 I2C Bus (between 0 and 7)
I2CBus=3D0

=23
=23 SPI Bus (between 0 and 7)
SPIBus=3D0

=23
=23 SPI select (between 0 and 1)
SPISelect=3D0

=23
=23 SPI Speed in Hz
SPISpeed=3D500000

=23
=23 I2C slave address (filled in automatically by auto discover)
I2CSlaveAddress=3D105


5) You should now be able to run the program successfully (If you get=C2=A0=
I2C read errors,=C2=A0try restarting the E310. Everything should work aft=
erwards).

=46or reference, I have included my complete /etc/RTIMULib.ini file:

root=40ettus-e3xx-sg3:=7E=23 cat /etc/RTIMULib.ini
=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 RTIMULib settings file

=23 General settings
=23

=23 IMU type -
=23 =C2=A0 0 =3D Auto discover
=23 =C2=A0 1 =3D Null (used when data is provided from a remote IMU
=23 =C2=A0 2 =3D InvenSense MPU-9150
=23 =C2=A0 3 =3D STM L3GD20H + LSM303D
=23 =C2=A0 4 =3D STM L3GD20 + LSM303DLHC
=23 =C2=A0 5 =3D STM LSM9DS0
=23 =C2=A0 6 =3D STM LSM9DS1
=23 =C2=A0 7 =3D InvenSense MPU-9250
=23 =C2=A0 8 =3D STM L3GD20H + LSM303DLHC
=23 =C2=A0 9 =3D Bosch BMX055
=23 =C2=A0 10 =3D Bosch BNX055
IMUType=3D2

=23
=23 =46usion type type -
=23 =C2=A0 0 - Null. Use if only sensor data required without fusion
=23 =C2=A0 1 - Kalman STATE4
=23 =C2=A0 2 - RTQ=46
=46usionType=3D2

=23
=23 Is bus I2C: 'true' for I2C, 'false' for SPI
BusIsI2C=3Dtrue

=23
=23 I2C Bus (between 0 and 7)
I2CBus=3D0

=23
=23 SPI Bus (between 0 and 7)
SPIBus=3D0

=23
=23 SPI select (between 0 and 1)
SPISelect=3D0

=23
=23 SPI Speed in Hz
SPISpeed=3D500000

=23
=23 I2C slave address (filled in automatically by auto discover)
I2CSlaveAddress=3D105

=23
=23 IMU axis rotation - see RTIMU.h for details
AxisRotation=3D0

=23 Pressure sensor type -
=23 =C2=A0 0 =3D Auto discover
=23 =C2=A0 1 =3D Null (no hardware or don't use)
=23 =C2=A0 2 =3D BMP180
=23 =C2=A0 3 =3D LPS25H
=23 =C2=A0 4 =3D MS5611
=23 =C2=A0 5 =3D MS5637
PressureType=3D0

=23
=23 I2C pressure sensor address (filled in automatically by auto discover=
)
I2CPressureAddress=3D0

=23 Humidity sensor type -
=23 =C2=A0 0 =3D Auto discover
=23 =C2=A0 1 =3D Null (no hardware or don't use)
=23 =C2=A0 2 =3D HTS221
=23 =C2=A0 3 =3D HTU21D
HumidityType=3D0

=23
=23 I2C humidity sensor address (filled in automatically by auto discover=
)
I2CHumidityAddress=3D0

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23

=23 Compass calibration settings
CompassCalValid=3Dfalse
CompassCalMinX=3D0.000000
CompassCalMinY=3D0.000000
CompassCalMinZ=3D0.000000
CompassCalMaxX=3D0.000000
CompassCalMaxY=3D0.000000
CompassCalMaxZ=3D0.000000

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23

=23 Compass adjustment settings
=23 Compass declination is in radians and is subtracted from calculated h=
eading
compassAdjDeclination=3D0.000000

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23

=23 Compass ellipsoid calibration
compassCalEllipsoidValid=3Dfalse
compassCalOffsetX=3D0.000000
compassCalOffsetY=3D0.000000
compassCalOffsetZ=3D0.000000
compassCalCorr11=3D1.000000
compassCalCorr12=3D0.000000
compassCalCorr13=3D0.000000
compassCalCorr21=3D0.000000
compassCalCorr22=3D1.000000
compassCalCorr23=3D0.000000
compassCalCorr31=3D0.000000
compassCalCorr32=3D0.000000
compassCalCorr33=3D1.000000

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23

=23 Accel calibration
AccelCalValid=3Dfalse
AccelCalMinX=3D0.000000
AccelCalMinY=3D0.000000
AccelCalMinZ=3D0.000000
AccelCalMaxX=3D0.000000
AccelCalMaxY=3D0.000000
AccelCalMaxZ=3D0.000000

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23

=23 Saved gyro bias data
GyroBiasValid=3Dtrue
GyroBiasX=3D-0.031280
GyroBiasY=3D-0.017285
GyroBiasZ=3D-0.020221

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 MPU-9150 settings
=23

=23 Gyro sample rate (between 5Hz and 1000Hz)
MPU9150GyroAccelSampleRate=3D900

=23
=23 Compass sample rate (between 1Hz and 100Hz)
MPU9150CompassSampleRate=3D80

=23
=23 Gyro/accel low pass filter -
=23 =C2=A0 0 - gyro: 256Hz, accel: 260Hz
=23 =C2=A0 1 - gyro: 188Hz, accel: 184Hz
=23 =C2=A0 2 - gyro: 98Hz, accel: 98Hz
=23 =C2=A0 3 - gyro: 42Hz, accel: 44Hz
=23 =C2=A0 4 - gyro: 20Hz, accel: 21Hz
=23 =C2=A0 5 - gyro: 10Hz, accel: 10Hz
=23 =C2=A0 6 - gyro: 5Hz, accel: 5Hz
MPU9150GyroAccelLpf=3D4

=23
=23 Gyro full scale range -
=23 =C2=A0 0 =C2=A0- +/- 250 degress per second
=23 =C2=A0 8 =C2=A0- +/- 500 degress per second
=23 =C2=A0 16 - +/- 1000 degress per second
=23 =C2=A0 24 - +/- 2000 degress per second
MPU9150Gyro=46SR=3D8

=23
=23 Accel full scale range -
=23 =C2=A0 0 =C2=A0- +/- 2g
=23 =C2=A0 8 =C2=A0- +/- 4g
=23 =C2=A0 16 - +/- 8g
=23 =C2=A0 24 - +/- 16g
MPU9150Accel=46SR=3D0

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 MPU-9250 settings
=23

=23 Gyro sample rate (between 5Hz and 1000Hz plus 8000Hz and 32000Hz)
MPU9250GyroAccelSampleRate=3D80

=23
=23 Compass sample rate (between 1Hz and 100Hz)
MPU9250CompassSampleRate=3D40

=23
=23 Gyro low pass filter -
=23 =C2=A0 0x11 - 8800Hz, 0.64mS delay
=23 =C2=A0 0x10 - 3600Hz, 0.11mS delay
=23 =C2=A0 0x00 - 250Hz, 0.97mS delay
=23 =C2=A0 0x01 - 184Hz, 2.9mS delay
=23 =C2=A0 0x02 - 92Hz, 3.9mS delay
=23 =C2=A0 0x03 - 41Hz, 5.9mS delay
=23 =C2=A0 0x04 - 20Hz, 9.9mS delay
=23 =C2=A0 0x05 - 10Hz, 17.85mS delay
=23 =C2=A0 0x06 - 5Hz, 33.48mS delay
MPU9250GyroLpf=3D3

=23
=23 Accel low pass filter -
=23 =C2=A0 0x08 - 1130Hz, 0.75mS delay
=23 =C2=A0 0x00 - 460Hz, 1.94mS delay
=23 =C2=A0 0x01 - 184Hz, 5.80mS delay
=23 =C2=A0 0x02 - 92Hz, 7.80mS delay
=23 =C2=A0 0x03 - 41Hz, 11.80mS delay
=23 =C2=A0 0x04 - 20Hz, 19.80mS delay
=23 =C2=A0 0x05 - 10Hz, 35.70mS delay
=23 =C2=A0 0x06 - 5Hz, 66.96mS delay
MPU9250AccelLpf=3D3

=23
=23 Gyro full scale range -
=23 =C2=A0 0 =C2=A0- +/- 250 degress per second
=23 =C2=A0 8 =C2=A0- +/- 500 degress per second
=23 =C2=A0 16 - +/- 1000 degress per second
=23 =C2=A0 24 - +/- 2000 degress per second
MPU9250Gyro=46SR=3D16

=23
=23 Accel full scale range -
=23 =C2=A0 0 =C2=A0- +/- 2g
=23 =C2=A0 8 =C2=A0- +/- 4g
=23 =C2=A0 16 - +/- 8g
=23 =C2=A0 24 - +/- 16g
MPU9250Accel=46SR=3D16

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 L3GD20H + LSM303D settings

=23
=23 Gyro sample rate -
=23 =C2=A0 0 =3D 12.5Hz
=23 =C2=A0 1 =3D 25Hz
=23 =C2=A0 2 =3D 50Hz
=23 =C2=A0 3 =3D 100Hz
=23 =C2=A0 4 =3D 200Hz
=23 =C2=A0 5 =3D 400Hz
=23 =C2=A0 6 =3D 800Hz
GD20HM303DGyroSampleRate=3D2

=23
=23 Gyro full scale range -
=23 =C2=A0 0 =3D 245 degrees per second
=23 =C2=A0 1 =3D 500 degrees per second
=23 =C2=A0 2 =3D 2000 degrees per second
GD20HM303DGyro=46sr=3D1

=23
=23 Gyro high pass filter -
=23 =C2=A0 0 - 9 but see the L3GD20H manual for details
GD20HM303DGyroHpf=3D4

=23
=23 Gyro bandwidth -
=23 =C2=A0 0 - 3 but see the L3GD20H manual for details
GD20HM303DGyroBW=3D1

=23 Accel sample rate -
=23 =C2=A0 1 =3D 3.125Hz
=23 =C2=A0 2 =3D 6.25Hz
=23 =C2=A0 3 =3D 12.5Hz
=23 =C2=A0 4 =3D 25Hz
=23 =C2=A0 5 =3D 50Hz
=23 =C2=A0 6 =3D 100Hz
=23 =C2=A0 7 =3D 200Hz
=23 =C2=A0 8 =3D 400Hz
=23 =C2=A0 9 =3D 800Hz
=23 =C2=A0 10 =3D 1600Hz
GD20HM303DAccelSampleRate=3D5

=23
=23 Accel full scale range -
=23 =C2=A0 0 =3D +/- 2g
=23 =C2=A0 1 =3D +/- 4g
=23 =C2=A0 2 =3D +/- 6g
=23 =C2=A0 3 =3D +/- 8g
=23 =C2=A0 4 =3D +/- 16g
GD20HM303DAccel=46sr=3D3

=23
=23 Accel low pass filter -
=23 =C2=A0 0 =3D 773Hz
=23 =C2=A0 1 =3D 194Hz
=23 =C2=A0 2 =3D 362Hz
=23 =C2=A0 3 =3D 50Hz
GD20HM303DAccelLpf=3D3

=23
=23 Compass sample rate -
=23 =C2=A0 0 =3D 3.125Hz
=23 =C2=A0 1 =3D 6.25Hz
=23 =C2=A0 2 =3D 12.5Hz
=23 =C2=A0 3 =3D 25Hz
=23 =C2=A0 4 =3D 50Hz
=23 =C2=A0 5 =3D 100Hz
GD20HM303DCompassSampleRate=3D4

=23
=23 Compass full scale range -
=23 =C2=A0 0 =3D +/- 200 uT
=23 =C2=A0 1 =3D +/- 400 uT
=23 =C2=A0 2 =3D +/- 800 uT
=23 =C2=A0 3 =3D +/- 1200 uT
GD20HM303DCompass=46sr=3D0

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 L3GD20 + LSM303DLHC settings
=23

=23 Gyro sample rate -
=23 =C2=A0 0 =3D 95z
=23 =C2=A0 1 =3D 190Hz
=23 =C2=A0 2 =3D 380Hz
=23 =C2=A0 3 =3D 760Hz
GD20M303DLHCGyroSampleRate=3D0

=23
=23 Gyro full scale range -
=23 =C2=A0 0 =3D 250 degrees per second
=23 =C2=A0 1 =3D 500 degrees per second
=23 =C2=A0 2 =3D 2000 degrees per second
GD20M303DLHCGyro=46sr=3D1

=23
=23 Gyro high pass filter -
=23 =C2=A0 0 - 9 but see the L3GD20 manual for details
GD20M303DLHCGyroHpf=3D4

=23
=23 Gyro bandwidth -
=23 =C2=A0 0 - 3 but see the L3GD20 manual for details
GD20M303DLHCGyroBW=3D1

=23 Accel sample rate -
=23 =C2=A0 1 =3D 1Hz
=23 =C2=A0 2 =3D 10Hz
=23 =C2=A0 3 =3D 25Hz
=23 =C2=A0 4 =3D 50Hz
=23 =C2=A0 5 =3D 100Hz
=23 =C2=A0 6 =3D 200Hz
=23 =C2=A0 7 =3D 400Hz
GD20M303DLHCAccelSampleRate=3D4

=23
=23 Accel full scale range -
=23 =C2=A0 0 =3D +/- 2g
=23 =C2=A0 1 =3D +/- 4g
=23 =C2=A0 2 =3D +/- 8g
=23 =C2=A0 3 =3D +/- 16g
GD20M303DLHCAccel=46sr=3D2

=23
=23 Compass sample rate -
=23 =C2=A0 0 =3D 0.75Hz
=23 =C2=A0 1 =3D 1.5Hz
=23 =C2=A0 2 =3D 3Hz
=23 =C2=A0 3 =3D 7.5Hz
=23 =C2=A0 4 =3D 15Hz
=23 =C2=A0 5 =3D 30Hz
=23 =C2=A0 6 =3D 75Hz
=23 =C2=A0 7 =3D 220Hz
GD20M303DLHCCompassSampleRate=3D5

=23
=23 Compass full scale range -
=23 =C2=A0 1 =3D +/- 130 uT
=23 =C2=A0 2 =3D +/- 190 uT
=23 =C2=A0 3 =3D +/- 250 uT
=23 =C2=A0 4 =3D +/- 400 uT
=23 =C2=A0 5 =3D +/- 470 uT
=23 =C2=A0 6 =3D +/- 560 uT
=23 =C2=A0 7 =3D +/- 810 uT
GD20M303DLHCCompass=46sr=3D1

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 L3GD20H + LSM303DLHC settings
=23

=23
=23 Gyro sample rate -
=23 =C2=A0 0 =3D 12.5Hz
=23 =C2=A0 1 =3D 25Hz
=23 =C2=A0 2 =3D 50Hz
=23 =C2=A0 3 =3D 100Hz
=23 =C2=A0 4 =3D 200Hz
=23 =C2=A0 5 =3D 400Hz
=23 =C2=A0 6 =3D 800Hz
GD20HM303DLHCGyroSampleRate=3D2

=23
=23 Gyro full scale range -
=23 =C2=A0 0 =3D 245 degrees per second
=23 =C2=A0 1 =3D 500 degrees per second
=23 =C2=A0 2 =3D 2000 degrees per second
GD20HM303DLHCGyro=46sr=3D1

=23
=23 Gyro high pass filter -
=23 =C2=A0 0 - 9 but see the L3GD20H manual for details
GD20HM303DLHCGyroHpf=3D4

=23
=23 Gyro bandwidth -
=23 =C2=A0 0 - 3 but see the L3GD20H manual for details
GD20HM303DLHCGyroBW=3D1

=23 Accel sample rate -
=23 =C2=A0 1 =3D 1Hz
=23 =C2=A0 2 =3D 10Hz
=23 =C2=A0 3 =3D 25Hz
=23 =C2=A0 4 =3D 50Hz
=23 =C2=A0 5 =3D 100Hz
=23 =C2=A0 6 =3D 200Hz
=23 =C2=A0 7 =3D 400Hz
GD20HM303DLHCAccelSampleRate=3D4

=23
=23 Accel full scale range -
=23 =C2=A0 0 =3D +/- 2g
=23 =C2=A0 1 =3D +/- 4g
=23 =C2=A0 2 =3D +/- 8g
=23 =C2=A0 3 =3D +/- 16g
GD20HM303DLHCAccel=46sr=3D2

=23
=23 Compass sample rate -
=23 =C2=A0 0 =3D 0.75Hz
=23 =C2=A0 1 =3D 1.5Hz
=23 =C2=A0 2 =3D 3Hz
=23 =C2=A0 3 =3D 7.5Hz
=23 =C2=A0 4 =3D 15Hz
=23 =C2=A0 5 =3D 30Hz
=23 =C2=A0 6 =3D 75Hz
=23 =C2=A0 7 =3D 220Hz
GD20HM303DLHCCompassSampleRate=3D5

=23
=23 Compass full scale range -
=23 =C2=A0 1 =3D +/- 130 uT
=23 =C2=A0 2 =3D +/- 190 uT
=23 =C2=A0 3 =3D +/- 250 uT
=23 =C2=A0 4 =3D +/- 400 uT
=23 =C2=A0 5 =3D +/- 470 uT
=23 =C2=A0 6 =3D +/- 560 uT
=23 =C2=A0 7 =3D +/- 810 uT
GD20HM303DLHCCompass=46sr=3D1

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 LSM9DS0 settings
=23

=23 Gyro sample rate -
=23 =C2=A0 0 =3D 95z
=23 =C2=A0 1 =3D 190Hz
=23 =C2=A0 2 =3D 380Hz
=23 =C2=A0 3 =3D 760Hz
LSM9DS0GyroSampleRate=3D0

=23
=23 Gyro full scale range -
=23 =C2=A0 0 =3D 250 degrees per second
=23 =C2=A0 1 =3D 500 degrees per second
=23 =C2=A0 2 =3D 2000 degrees per second
LSM9DS0Gyro=46sr=3D1

=23
=23 Gyro high pass filter -
=23 =C2=A0 0 - 9 but see the LSM9DS0 manual for details
LSM9DS0GyroHpf=3D4

=23
=23 Gyro bandwidth -
=23 =C2=A0 0 - 3 but see the LSM9DS0 manual for details
LSM9DS0GyroBW=3D1

=23 Accel sample rate -
=23 =C2=A0 1 =3D 3.125Hz
=23 =C2=A0 2 =3D 6.25Hz
=23 =C2=A0 3 =3D 12.5Hz
=23 =C2=A0 4 =3D 25Hz
=23 =C2=A0 5 =3D 50Hz
=23 =C2=A0 6 =3D 100Hz
=23 =C2=A0 7 =3D 200Hz
=23 =C2=A0 8 =3D 400Hz
=23 =C2=A0 9 =3D 800Hz
=23 =C2=A0 10 =3D 1600Hz
LSM9DS0AccelSampleRate=3D5

=23
=23 Accel full scale range -
=23 =C2=A0 0 =3D +/- 2g
=23 =C2=A0 1 =3D +/- 4g
=23 =C2=A0 2 =3D +/- 6g
=23 =C2=A0 3 =3D +/- 8g
=23 =C2=A0 4 =3D +/- 16g
LSM9DS0Accel=46sr=3D3

=23
=23 Accel low pass filter -
=23 =C2=A0 0 =3D 773Hz
=23 =C2=A0 1 =3D 194Hz
=23 =C2=A0 2 =3D 362Hz
=23 =C2=A0 3 =3D 50Hz
LSM9DS0AccelLpf=3D3

=23
=23 Compass sample rate -
=23 =C2=A0 0 =3D 3.125Hz
=23 =C2=A0 1 =3D 6.25Hz
=23 =C2=A0 2 =3D 12.5Hz
=23 =C2=A0 3 =3D 25Hz
=23 =C2=A0 4 =3D 50Hz
=23 =C2=A0 5 =3D 100Hz
LSM9DS0CompassSampleRate=3D4

=23
=23 Compass full scale range -
=23 =C2=A0 0 =3D +/- 200 uT
=23 =C2=A0 1 =3D +/- 400 uT
=23 =C2=A0 2 =3D +/- 800 uT
=23 =C2=A0 3 =3D +/- 1200 uT
LSM9DS0Compass=46sr=3D0

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 LSM9DS1 settings
=23

=23 Gyro sample rate -
=23 =C2=A0 0 =3D 95Hz
=23 =C2=A0 1 =3D 190Hz
=23 =C2=A0 2 =3D 380Hz
=23 =C2=A0 3 =3D 760Hz
LSM9DS1GyroSampleRate=3D2

=23
=23 Gyro full scale range -
=23 =C2=A0 0 =3D 250 degrees per second
=23 =C2=A0 1 =3D 500 degrees per second
=23 =C2=A0 2 =3D 2000 degrees per second
LSM9DS1Gyro=46sr=3D1

=23
=23 Gyro high pass filter -
=23 =C2=A0 0 - 9 but see the LSM9DS1 manual for details
LSM9DS1GyroHpf=3D4

=23
=23 Gyro bandwidth -
=23 =C2=A0 0 - 3 but see the LSM9DS1 manual for details
LSM9DS1GyroBW=3D1

=23 Accel sample rate -
=23 =C2=A0 1 =3D 14.9Hz
=23 =C2=A0 2 =3D 59.5Hz
=23 =C2=A0 3 =3D 119Hz
=23 =C2=A0 4 =3D 238Hz
=23 =C2=A0 5 =3D 476Hz
=23 =C2=A0 6 =3D 952Hz
LSM9DS1AccelSampleRate=3D3

=23
=23 Accel full scale range -
=23 =C2=A0 0 =3D +/- 2g
=23 =C2=A0 1 =3D +/- 16g
=23 =C2=A0 2 =3D +/- 4g
=23 =C2=A0 3 =3D +/- 8g
LSM9DS1Accel=46sr=3D3

=23
=23 Accel low pass filter -
=23 =C2=A0 0 =3D 408Hz
=23 =C2=A0 1 =3D 211Hz
=23 =C2=A0 2 =3D 105Hz
=23 =C2=A0 3 =3D 50Hz
LSM9DS1AccelLpf=3D3

=23
=23 Compass sample rate -
=23 =C2=A0 0 =3D 0.625Hz
=23 =C2=A0 1 =3D 1.25Hz
=23 =C2=A0 2 =3D 2.5Hz
=23 =C2=A0 3 =3D 5Hz
=23 =C2=A0 4 =3D 10Hz
=23 =C2=A0 5 =3D 20Hz
=23 =C2=A0 6 =3D 40Hz
=23 =C2=A0 7 =3D 80Hz
LSM9DS1CompassSampleRate=3D5

=23
=23 Compass full scale range -
=23 =C2=A0 0 =3D +/- 400 uT
=23 =C2=A0 1 =3D +/- 800 uT
=23 =C2=A0 2 =3D +/- 1200 uT
=23 =C2=A0 3 =3D +/- 1600 uT
LSM9DS1Compass=46sr=3D0

=23 =23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23
=23
=23 BMX055 settings
=23

=23
=23 Gyro sample rate -
=23 =C2=A0 0 =3D 2000Hz (532Hz filter)
=23 =C2=A0 1 =3D 2000Hz (230Hz filter)
=23 =C2=A0 2 =3D 1000Hz (116Hz filter)
=23 =C2=A0 3 =3D 400Hz (47Hz filter)
=23 =C2=A0 4 =3D 200Hz (23Hz filter)
=23 =C2=A0 5 =3D 100Hz (12Hz filter)
=23 =C2=A0 6 =3D 200Hz (64Hz filter)
=23 =C2=A0 7 =3D 100Hz (32Hz filter)
BMX055GyroSampleRate=3D7

=23
=23 Gyro full scale range -
=23 =C2=A0 0 =3D 2000 deg/s
=23 =C2=A0 1 =3D 1000 deg/s
=23 =C2=A0 2 =3D 500 deg/s
=23 =C2=A0 3 =3D 250 deg/s
=23 =C2=A0 4 =3D 125 deg/s
BMX055Gyro=46sr=3D2

=23
=23 Accel sample rate -
=23 =C2=A0 0 =3D 15.63Hz
=23 =C2=A0 1 =3D 31.25
=23 =C2=A0 2 =3D 62.5
=23 =C2=A0 3 =3D 125
=23 =C2=A0 4 =3D 250
=23 =C2=A0 5 =3D 500
=23 =C2=A0 6 =3D 1000
=23 =C2=A0 7 =3D 2000
BMX055AccelSampleRate=3D3

=23
=23 Accel full scale range -
=23 =C2=A0 0 =3D +/- 2g
=23 =C2=A0 1 =3D +/- 4g
=23 =C2=A0 2 =3D +/- 8g
=23 =C2=A0 3 =3D +/- 16g
BMX055Accel=46sr=3D2

=23
=23 Mag presets -
=23 =C2=A0 0 =3D Low power
=23 =C2=A0 1 =3D Regular
=23 =C2=A0 2 =3D Enhanced
=23 =C2=A0 3 =3D High accuracy
BMX055MagPreset=3D1



Hope this helps,
-Sam
On Nov 18, 2019, 9:31 AM -0800, Samuel Prager <sprager=40usc.edu>, wrote:=

> Hi Isaac,
>
> I vaguely remember seeing this behavior on one of our e312s but it=E2=80=
=99s been a while. If I recall, the solution involved the RTIMULib.ini fi=
le (which should be created in /etc). Either the ini file was set to use =
the wrong SPI bus or the ini file was being saved in the wrong place or n=
ot at all. I would start there.
>
> Sam
> On Nov 18, 2019, 8:24 AM -0800, Beeman, Isaac L. , wrote:
> > Hi Sam,
> >
> > Thanks for linking your simple example program for streaming IMU data=
. I finally got the RTIMULib built and installed on the E312, but when I =
run your program I get this output:
> >
> > root=40ni-e31x-:=7E/usr/E312IMUTest/build=23 ./E312IMUTest
> > Do something here with example option input: for example
> > Settings file not found. Using defaults and creating settings file
> > =46ailed to open I2C bus 1
> > =46ailed to open SPI bus 0, select 0
> > =46ailed to open SPI bus 0, select 1
> > No IMU detected
> > Using fusion algorithm RTQ=46
> > No IMU found
> > Error intializing IMU
> >
> > Was there any other setup I needed to do before running it (i.e. crea=
ting a settings file for the radio)=3F Do you think using a newer version=
 of UHD and the E312 image might cause this issue=3F
> >
> > Isaac Beeman
> >
> > =46rom: Samuel Prager <sprager=40usc.edu>
> > Sent: Tuesday, November 12, 2019 5:50 PM
> > To: Beeman, Isaac L. <ilbeeman=40wpi.edu>; Michael Dickens <michael.d=
ickens=40ettus.com>
> > Cc: usrp-users=40lists.ettus.com <usrp-users=40lists.ettus.com>
> > Subject: =5BEXT=5D Re: =5BUSRP-users=5D Question about the IMU (MPU-9=
150) on the E310
> >
> > Hi Isaac,
> >
> > Here is a simple example program I wrote a while back for continuousl=
y streaming IMU data on the E310/E312.
> >
> > https://github.com/samprager/E312IMUTest
> >
> > See the README for RTIMULib installation instructions (the correct li=
brary is=C2=A0https://github.com/RPi-Distro/RTIMULib).
> >
> > Sam
> > On Nov 12, 2019, 12:30 PM -0800, Michael Dickens via USRP-users <usrp=
-users=40lists.ettus.com>, wrote:
> > > Hi Isaac - UHD itself provides no API to the IMU; never has. The=C2=
=A0RTIMULib, possibly an older version than current and assuming it can b=
e built and installed on the E310, should be able to access the IMU to pr=
ovide information from it. Note =22possibly=22, =22assuming=22, =22should=
=22 ... clearly this isn't a majorly supported feature of the E310=21 Goo=
d luck=21 - MLD
> > >
> > > On Tue, Nov 12, 2019 at 12:37 PM Beeman, Isaac L. via USRP-users <u=
srp-users=40lists.ettus.com> wrote:
> > > > Marcus and List,
> > > >
> > > > I was hoping someone knew the steps involved to get the RTIMULib =
setup on the USRP. I tried building and installing both the RTIMULib and =
Linux folders, but the Linux one fails:
> > > >
> > > >
> > > > -- =46ound unsuitable Qt version =22=22 from NOT=46OUND
> > > > Qt QTOPENGL library not found.
> > > > Qt QTGUI library not found.
> > > > Qt QTCORE library not found.
> > > > CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4=5FADD=5FRESOURCE=
S):
> > > > =C2=A0 =C2=A0 Unknown CMake command =22QT4=5FADD=5FRESOURCES=22.
> > > > -- Configuring incomplete, errors occurred=21
> > > >
> > > >
> > > > I figured that I can't install the RTIMULibDemo apps because they=
 use a GUI, so I built and installed the RTIMULibDrive and RTIMULibCal in=
dividually. Only, when I try to run one of these apps I get the following=
 error:
> > > >
> > > >
> > > > RTIMULibDrive: error while loading shared libraries: libRTIMULib.=
so.7: cannot open shared object file: No such file or directory
> > > >
> > > >
> > > > I don't get how to fix this. When I build and install the same ap=
ps on my host computer they run fine (but obviously can't find any IMU). =
Considering that any applications I write also use the same libraries, I =
feel like this is going to be an issue.
> > > >
> > > > There isn't any documentation that I can find on the usage of the=
 C++ library for RTIMULib. Just reading the code in RTIMULibDrive.cpp as =
an example, it doesn't seem too complicated, but it obviously is a generi=
c program that isn't using the settings needed to connect to the MPU-9150=
.
> > > >
> > > > If anyone knows how to get one of these apps (RTIMULibDrive or RT=
IMULibCal) working or how to use RTIMULib.h in connecting to the MPU-9150=
 over I2C, it would be much appreciated.
> > > >
> > > > -Isaac Beeman
> > > >
> > > >
> > > >
> > > > P.S. I also tried 'i2cdetect -y 0' to see if the MPU-9150 has the=
 I2C address 0x69 like the schematics say, but I only get:
> > > >
> > > > Warning: Can't use SMBus Quick Write command, will skip some addr=
esses
> > > > =C2=A0 =C2=A0 =C2=A00=C2=A0 1=C2=A0 2=C2=A0 3=C2=A0 4=C2=A0 5=C2=A0=
 6=C2=A0 7=C2=A0 8=C2=A0 9=C2=A0 a=C2=A0 b=C2=A0 c=C2=A0 d=C2=A0 e=C2=A0 =
f
> > > > 00:
> > > > 10:
> > > > 20:
> > > > 30: -- -- -- -- -- -- -- --
> > > > 40:
> > > > 50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
> > > > 60:
> > > > 70:
> > > >
> > > > with nothing under 0x69. So that's weird.
> > > >
> > > >
> > > > -----Original Message-----
> > > > =46rom: USRP-users <usrp-users-bounces=40lists.ettus.com> On Beha=
lf Of Marcus D. Leech via USRP-users
> > > > Sent: Tuesday, November 12, 2019 10:35 AM
> > > > To: usrp-users=40lists.ettus.com
> > > > Subject: =5BEXT=5D Re: =5BUSRP-users=5D Question about the IMU (M=
PU-9150) on the E310
> > > >
> > > > On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:
> > > > > Hi List,
> > > > >
> > > > > I have recently started working with the E310/E312 and have got=
ten multichannel RX/TX and GPS working, but I can't figure out how to gra=
b data off of the internal IMU/MPU-9150. I found some website (http://gnu=
radio.cn/en/html/support/en/page=5Fusrp=5Fe3x0.html) that said that the U=
SRP image should contain RTIMULib applications with allow the user to tes=
t the IMU, but, unless I am looking in the wrong place, the current image=
 for the E310 does not have any RTIMULib applications on it.
> > > > >
> > > > > I want to know if there are any API calls or libraries that wou=
ld allow me to do development with the IMU.
> > > > >
> > > > > -Isaac Beeman
> > > > >
> > > > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F
> > > >
> > > > You might start here:
> > > >
> > > > https://github.com/RTIMULib
> > > >
> > > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=

> > > > USRP-users mailing list
> > > > USRP-users=40lists.ettus.com
> > > > http://lists.ettus.com/mailman/listinfo/usrp-users=5Flists.ettus.=
com
> > >
> > >
> > > --
> > > Michael Dickens
> > > Ettus Research Technical Support
> > > Email: support=40ettus.com
> > > Web: https://ettus.com/
> > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > > USRP-users mailing list
> > > USRP-users=40lists.ettus.com
> > > https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Flists.e=
ttus.com=5Fmailman=5Flistinfo=5Fusrp-2Dusers-5=46lists.ettus.com&d=3DDwIC=
Ag&c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&r=3DopIuWAKmyw=46059=
tAs2i3Pg&m=3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&s=3D8wPPng=
BEnPiaAxtUARbH1opcSV3Pgih5Konyr2kf9-c&e=3D

--5dd2eaf8_109cf92e_1ef4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div style=3D=22caret-color: rgb(213, 218, 222);=22>
<div class=3D=22user-editable=22 data-text=3D=22Say something=22 dir=3D=22=
auto=22 style=3D=22min-height: 17px; padding: 22px 22px 10px 28px;=22>Hi =
Isaac,
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>Yes this is exactly the error we had seen before.&=23=
160;<span style=3D=22caret-color: rgb(213, 218, 222);=22>I was able to re=
produce these errors on our E312.&=23160;</span></div>
<div dir=3D=22auto=22><span style=3D=22caret-color: rgb(213, 218, 222);=22=
><br /></span></div>
<div dir=3D=22auto=22>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22>=46o=
r some reason it looks like the auto discover isn=E2=80=99t working prope=
rly (not finding correct device type and not assigning correct I2c bus or=
&=23160;<span style=3D=22caret-color: rgb(213, 218, 222);=22><font face=3D=
=22.AppleSystemUI=46ont=22>I2CSlaveAddress</font><font face=3D=22Menlo, m=
onospace=22 style=3D=22font-size: 12px;=22>).</font></span></div>
</div>
<div dir=3D=22auto=22><span style=3D=22caret-color: rgb(213, 218, 222);=22=
><br /></span></div>
<div dir=3D=22auto=22><span style=3D=22caret-color: rgb(213, 218, 222);=22=
>You should be able to fix the issue by following these steps:</span></di=
v>
<div dir=3D=22auto=22>
<div dir=3D=22auto=22>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><br =
/></div>
<div dir=3D=22auto=22>
<div dir=3D=22auto=22><i>1) root=40ettus-e3xx-sg3:=7E=23 mv /etc/RTIMULib=
.ini /etc/RTIMULib.ini.backup</i></div>
<div dir=3D=22auto=22><br /></div>
</div>
<div dir=3D=22auto=22>This will force creation of a new /etc/RTIMULib.ini=
 file</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>2) Now run the program. You should see the followin=
g output (as before):</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>
<div dir=3D=22auto=22><i>root=40ettus-e3xx-sg3:=7E=23 E312IMUTest&=23160;=
</i></div>
<div dir=3D=22auto=22><i>Do something here with example option input: for=
 example</i></div>
<div dir=3D=22auto=22><i>Settings file not found. Using defaults and crea=
ting settings file</i></div>
<div dir=3D=22auto=22><i>=46ailed to open I2C bus 1</i></div>
<div dir=3D=22auto=22><i>=46ailed to open SPI bus 0, select 0</i></div>
<div dir=3D=22auto=22><i>No IMU detected</i></div>
<div dir=3D=22auto=22><i>Using fusion algorithm RTQ=46</i></div>
<div dir=3D=22auto=22><i>No IMU found</i></div>
</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>3) In the newly created /etc/RTIMULib.ini file make=
 the following changes:</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>
<div dir=3D=22auto=22><i>IMUType=3D2</i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22><i>=23&=23160;</i></div>
<div dir=3D=22auto=22><i>=23 =46usion type type -&=23160;</i></div>
<div dir=3D=22auto=22><i>=23 &=23160; 0 - Null. Use if only sensor data r=
equired without fusion</i></div>
<div dir=3D=22auto=22><i>=23 &=23160; 1 - Kalman STATE4</i></div>
<div dir=3D=22auto=22><i>=23 &=23160; 2 - RTQ=46</i></div>
<div dir=3D=22auto=22><i>=46usionType=3D2</i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22><i>=23&=23160;</i></div>
<div dir=3D=22auto=22><i>=23 Is bus I2C: 'true' for I2C, 'false' for SPI<=
/i></div>
<div dir=3D=22auto=22><i>BusIsI2C=3Dtrue</i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22><i>=23&=23160;</i></div>
<div dir=3D=22auto=22><i>=23 I2C Bus (between 0 and 7)&=23160;</i></div>
<div dir=3D=22auto=22><i>I2CBus=3D0</i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22><i>=23&=23160;</i></div>
<div dir=3D=22auto=22><i>=23 SPI Bus (between 0 and 7)&=23160;</i></div>
<div dir=3D=22auto=22><i>SPIBus=3D0</i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22><i>=23&=23160;</i></div>
<div dir=3D=22auto=22><i>=23 SPI select (between 0 and 1)&=23160;</i></di=
v>
<div dir=3D=22auto=22><i>SPISelect=3D0</i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22><i>=23&=23160;</i></div>
<div dir=3D=22auto=22><i>=23 SPI Speed in Hz</i></div>
<div dir=3D=22auto=22><i>SPISpeed=3D500000</i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22><i>=23&=23160;</i></div>
<div dir=3D=22auto=22><i>=23 I2C slave address (filled in automatically b=
y auto discover)&=23160;</i></div>
<div dir=3D=22auto=22><i>I2CSlaveAddress=3D105</i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22><i><br /></i></div>
<div dir=3D=22auto=22>5) You should now be able to run the program succes=
sfully (If you get<i>&=23160;I2C read errors,&=23160;</i>try restarting t=
he E310. Everything should work afterwards).</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>=46or reference, I have included my complete /etc/R=
TIMULib.ini file:</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>root=40=
ettus-e3xx-sg3:=7E=23 cat /etc/RTIMULib.ini&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 RTI=
MULib settings file</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gen=
eral settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 IMU=
 type -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D Auto discover</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D Null (used when data is provided from a remote IMU</font></i><=
/div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D InvenSense MPU-9150</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D STM L3GD20H + LSM303D</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D STM L3GD20 + LSM303DLHC</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D STM LSM9DS0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D STM LSM9DS1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D InvenSense MPU-9250</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 8 =3D STM L3GD20H + LSM303DLHC</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 9 =3D Bosch BMX055</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 10 =3D Bosch BNX055</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>IMUType=
=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =46=
usion type type -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - Null. Use if only sensor data required without fusion</font></i>=
</div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 - Kalman STATE4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 - RTQ=46</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=46usio=
nType=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Is =
bus I2C: 'true' for I2C, 'false' for SPI</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>BusIsI2=
C=3Dtrue</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 I2C=
 Bus (between 0 and 7)&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>I2CBus=3D=
0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 SPI=
 Bus (between 0 and 7)&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>SPIBus=3D=
0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 SPI=
 select (between 0 and 1)&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>SPISele=
ct=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 SPI=
 Speed in Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>SPISpee=
d=3D500000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 I2C=
 slave address (filled in automatically by auto discover)&=23160;</font><=
/i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>I2CSlav=
eAddress=3D105</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 IMU=
 axis rotation - see RTIMU.h for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>AxisRot=
ation=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Pre=
ssure sensor type -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D Auto discover</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D Null (no hardware or don't use)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D BMP180</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D LPS25H</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D MS5611</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D MS5637</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Pressur=
eType=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 I2C=
 pressure sensor address (filled in automatically by auto discover)&=2316=
0;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>I2CPres=
sureAddress=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Hum=
idity sensor type -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D Auto discover</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D Null (no hardware or don't use)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D HTS221</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D HTU21D</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Humidit=
yType=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 I2C=
 humidity sensor address (filled in automatically by auto discover)&=2316=
0;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>I2CHumi=
dityAddress=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass calibration settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Compass=
CalValid=3Dfalse</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Compass=
CalMinX=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Compass=
CalMinY=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Compass=
CalMinZ=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Compass=
CalMaxX=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Compass=
CalMaxY=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>Compass=
CalMaxZ=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass adjustment settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass declination is in radians and is subtracted from calculated heading<=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
AdjDeclination=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass ellipsoid calibration</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalEllipsoidValid=3Dfalse</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalOffsetX=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalOffsetY=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalOffsetZ=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr11=3D1.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr12=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr13=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr21=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr22=3D1.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr23=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr31=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr32=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>compass=
CalCorr33=3D1.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el calibration</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>AccelCa=
lValid=3Dfalse</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>AccelCa=
lMinX=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>AccelCa=
lMinY=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>AccelCa=
lMinZ=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>AccelCa=
lMaxX=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>AccelCa=
lMaxY=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>AccelCa=
lMaxZ=3D0.000000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Sav=
ed gyro bias data</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GyroBia=
sValid=3Dtrue</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GyroBia=
sX=3D-0.031280</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GyroBia=
sY=3D-0.017285</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GyroBia=
sZ=3D-0.020221</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 MPU=
-9150 settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o sample rate (between 5Hz and 1000Hz)&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9150=
GyroAccelSampleRate=3D900</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass sample rate (between 1Hz and 100Hz)&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9150=
CompassSampleRate=3D80</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o/accel low pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - gyro: 256Hz, accel: 260Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 - gyro: 188Hz, accel: 184Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 - gyro: 98Hz, accel: 98Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 - gyro: 42Hz, accel: 44Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 - gyro: 20Hz, accel: 21Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 - gyro: 10Hz, accel: 10Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 - gyro: 5Hz, accel: 5Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9150=
GyroAccelLpf=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 &=23160;- +/- 250 degress per second</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 8 &=23160;- +/- 500 degress per second</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 16 - +/- 1000 degress per second</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 24 - +/- 2000 degress per second</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9150=
Gyro=46SR=3D8</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 &=23160;- +/- 2g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 8 &=23160;- +/- 4g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 16 - +/- 8g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 24 - +/- 16g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9150=
Accel=46SR=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 MPU=
-9250 settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o sample rate (between 5Hz and 1000Hz plus 8000Hz and 32000Hz)&=23160;</f=
ont></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9250=
GyroAccelSampleRate=3D80</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass sample rate (between 1Hz and 100Hz)&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9250=
CompassSampleRate=3D40</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o low pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x11 - 8800Hz, 0.64mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x10 - 3600Hz, 0.11mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x00 - 250Hz, 0.97mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x01 - 184Hz, 2.9mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x02 - 92Hz, 3.9mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x03 - 41Hz, 5.9mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x04 - 20Hz, 9.9mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x05 - 10Hz, 17.85mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x06 - 5Hz, 33.48mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9250=
GyroLpf=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el low pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x08 - 1130Hz, 0.75mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x00 - 460Hz, 1.94mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x01 - 184Hz, 5.80mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x02 - 92Hz, 7.80mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x03 - 41Hz, 11.80mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x04 - 20Hz, 19.80mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x05 - 10Hz, 35.70mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0x06 - 5Hz, 66.96mS delay</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9250=
AccelLpf=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 &=23160;- +/- 250 degress per second</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 8 &=23160;- +/- 500 degress per second</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 16 - +/- 1000 degress per second</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 24 - +/- 2000 degress per second</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9250=
Gyro=46SR=3D16</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 &=23160;- +/- 2g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 8 &=23160;- +/- 4g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 16 - +/- 8g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 24 - +/- 16g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>MPU9250=
Accel=46SR=3D16</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 L3G=
D20H + LSM303D settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 12.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 50Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 100Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 200Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 400Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 800Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DGyroSampleRate=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 245 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 500 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 2000 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DGyro=46sr=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o high pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 9 but see the L3GD20H manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DGyroHpf=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o bandwidth -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 3 but see the L3GD20H manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DGyroBW=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 3.125Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 6.25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 12.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 50Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 100Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 200Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 8 =3D 400Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 9 =3D 800Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 10 =3D 1600Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DAccelSampleRate=3D5</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 2g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 4g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 6g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 8g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D +/- 16g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DAccel=46sr=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el low pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 773Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 194Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 362Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 50Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DAccelLpf=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 3.125Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 6.25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 12.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 50Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 100Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DCompassSampleRate=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 200 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 400 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 800 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 1200 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DCompass=46sr=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 L3G=
D20 + LSM303DLHC settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 95z&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 190Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 380Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 760Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20M30=
3DLHCGyroSampleRate=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 250 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 500 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 2000 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20M30=
3DLHCGyro=46sr=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o high pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 9 but see the L3GD20 manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20M30=
3DLHCGyroHpf=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o bandwidth -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 3 but see the L3GD20 manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20M30=
3DLHCGyroBW=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 1Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 10Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 50Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 100Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 200Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 400Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20M30=
3DLHCAccelSampleRate=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 2g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 4g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 8g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 16g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20M30=
3DLHCAccel=46sr=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 0.75Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 1.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 3Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 7.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 15Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 30Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 75Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 220Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20M30=
3DLHCCompassSampleRate=3D5</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 130 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 190 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 250 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D +/- 400 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D +/- 470 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D +/- 560 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D +/- 810 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20M30=
3DLHCCompass=46sr=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 L3G=
D20H + LSM303DLHC settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 12.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 50Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 100Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 200Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 400Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 800Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DLHCGyroSampleRate=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 245 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 500 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 2000 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DLHCGyro=46sr=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o high pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 9 but see the L3GD20H manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DLHCGyroHpf=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o bandwidth -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 3 but see the L3GD20H manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DLHCGyroBW=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 1Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 10Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 50Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 100Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 200Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 400Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DLHCAccelSampleRate=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 2g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 4g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 8g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 16g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DLHCAccel=46sr=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 0.75Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 1.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 3Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 7.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 15Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 30Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 75Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 220Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DLHCCompassSampleRate=3D5</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 130 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 190 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 250 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D +/- 400 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D +/- 470 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D +/- 560 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D +/- 810 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>GD20HM3=
03DLHCCompass=46sr=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 LSM=
9DS0 settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 95z&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 190Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 380Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 760Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
GyroSampleRate=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 250 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 500 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 2000 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
Gyro=46sr=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o high pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 9 but see the LSM9DS0 manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
GyroHpf=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o bandwidth -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 3 but see the LSM9DS0 manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
GyroBW=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 3.125Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 6.25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 12.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 50Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 100Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 200Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 8 =3D 400Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 9 =3D 800Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 10 =3D 1600Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
AccelSampleRate=3D5</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 2g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 4g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 6g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 8g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D +/- 16g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
Accel=46sr=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el low pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 773Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 194Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 362Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 50Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
AccelLpf=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 3.125Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 6.25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 12.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 50Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 100Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
CompassSampleRate=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 200 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 400 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 800 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 1200 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS0=
Compass=46sr=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 LSM=
9DS1 settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 95Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 190Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 380Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 760Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
GyroSampleRate=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 250 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 500 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 2000 degrees per second&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
Gyro=46sr=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o high pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 9 but see the LSM9DS1 manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
GyroHpf=3D4</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o bandwidth -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 - 3 but see the LSM9DS1 manual for details</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
GyroBW=3D1</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 14.9Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 59.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 119Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 238Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 476Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 952Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
AccelSampleRate=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 2g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 16g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 4g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 8g&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
Accel=46sr=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el low pass filter -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 408Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 211Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 105Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 50Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
AccelLpf=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 0.625Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 1.25Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 2.5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 5Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 10Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 20Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 40Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 80Hz&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
CompassSampleRate=3D5</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Com=
pass full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 400 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 800 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 1200 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 1600 uT&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>LSM9DS1=
Compass=46sr=3D0</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 =23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=
=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23=23</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 BMX=
055 settings</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 2000Hz (532Hz filter)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 2000Hz (230Hz filter)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 1000Hz (116Hz filter)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 400Hz (47Hz filter)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 200Hz (23Hz filter)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 100Hz (12Hz filter)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 200Hz (64Hz filter)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 100Hz (32Hz filter)</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>BMX055G=
yroSampleRate=3D7</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Gyr=
o full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 2000 deg/s</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 1000 deg/s</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 500 deg/s</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 250 deg/s</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 125 deg/s</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>BMX055G=
yro=46sr=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el sample rate -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D 15.63Hz</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D 31.25</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D 62.5</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D 125</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 4 =3D 250</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 5 =3D 500</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 6 =3D 1000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 7 =3D 2000</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>BMX055A=
ccelSampleRate=3D3</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Acc=
el full scale range -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D +/- 2g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D +/- 4g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D +/- 8g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D +/- 16g</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>BMX055A=
ccel=46sr=3D2</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22><br /><=
/font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23&=23=
160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 Mag=
 presets -&=23160;</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 0 =3D Low power</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 1 =3D Regular</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 2 =3D Enhanced</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>=23 &=23=
160; 3 =3D High accuracy</font></i></div>
<div dir=3D=22auto=22 style=3D=22caret-color: rgb(213, 218, 222);=22><i><=
font face=3D=22Menlo, monospace=22 style=3D=22font-size: 12px;=22>BMX055M=
agPreset=3D1</font></i></div>
</div>
</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>Hope this helps,</div>
</div>
</div>
</div>
</div>
<div class=3D=22visible=22 style=3D=22caret-color: rgb(213, 218, 222);=22=
>
<div class=3D=22rounded-decoration rounded-decoration-focus=22><a class=3D=
=22visible=22 href=3D=22=23=22 draggable=3D=22false=22 style=3D=22positio=
n: absolute; display: block; width: 18px; height: 24px; top: 3px; left: 4=
px; -webkit-user-select: none; background-image: image-set(url(&quot;file=
:///Applications/Spark.app/Contents/Resources/smx-composer.bundle/smx-but=
ton-icon-popup.png&quot;) 1x, url(&quot;file:///Applications/Spark.app/Co=
ntents/Resources/smx-composer.bundle/smx-button-icon-popup=402x.png&quot;=
) 2x); background-size: 16px 16px; background-position: center center; ba=
ckground-repeat: no-repeat no-repeat;=22></a>
<div class=3D=22user-editable=22 spellcheck=3D=22false=22 dir=3D=22auto=22=
 data-text=3D=22No signature=22 style=3D=22padding: 0px 22px;=22>
<div class=3D=22match=46ont=22 dir=3D=22auto=22>-Sam</div>
</div>
</div>
</div>
</div>
<div name=3D=22messageReplySection=22>On Nov 18, 2019, 9:31 AM -0800, Sam=
uel Prager &lt;sprager=40usc.edu&gt;, wrote:<br />
<blockquote type=3D=22cite=22 class=3D=22spark=5Fquote=22 style=3D=22marg=
in: 5px 5px; padding-left: 10px; border-left: thin solid =231abc9c;=22>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hi Isaac,
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>I vaguely remember seeing this behavior on one of o=
ur e312s but it=E2=80=99s been a while. If I recall, the solution involve=
d the RTIMULib.ini file (which should be created in /etc). Either the ini=
 file was set to use the wrong SPI bus or the ini file was being saved in=
 the wrong place or not at all. I would start there.&=23160;</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>Sam</div>
</div>
</div>
<div name=3D=22messageReplySection=22>On Nov 18, 2019, 8:24 AM -0800, Bee=
man, Isaac L. , wrote:<br />
<blockquote type=3D=22cite=22 class=3D=22spark=5Fquote=22 style=3D=22marg=
in: 5px 5px; padding-left: 10px; border-left: thin solid =23e67e22;=22>
<div style=3D=22font-family: Calibri, Arial, Helvetica, sans-serif; font-=
size: 12pt; color: rgb(0, 0, 0);=22>Hi Sam,</div>
<div style=3D=22font-family: Calibri, Arial, Helvetica, sans-serif; font-=
size: 12pt; color: rgb(0, 0, 0);=22><br /></div>
<div style=3D=22font-family: Calibri, Arial, Helvetica, sans-serif; font-=
size: 12pt; color: rgb(0, 0, 0);=22>Thanks for linking your simple exampl=
e program for streaming IMU data. I finally got the RTIMULib built and in=
stalled on the E312, but when I run your program I get this output:</div>=

<div style=3D=22font-family: Calibri, Arial, Helvetica, sans-serif; font-=
size: 12pt; color: rgb(0, 0, 0);=22><br /></div>
<div style=3D=22font-family: Calibri, Arial, Helvetica, sans-serif; font-=
size: 12pt; color: rgb(0, 0, 0);=22></div>
<span style=3D=22font-family: Consolas, Courier, monospace;=22>root=40ni-=
e31x-:=7E/usr/E312IMUTest/build=23 ./E312IMUTest</span> <span><br /></spa=
n>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>Do so=
mething here with example option input: for example</span><br /></div>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>Setti=
ngs file not found. Using defaults and creating settings file</span><br /=
></div>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>=46ai=
led to open I2C bus 1</span><br /></div>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>=46ai=
led to open SPI bus 0, select 0</span><br /></div>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>=46ai=
led to open SPI bus 0, select 1</span><br /></div>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>No IM=
U detected</span><br /></div>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>Using=
 fusion algorithm RTQ=46</span><br /></div>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>No IM=
U found</span><br /></div>
<div><span style=3D=22font-family: Consolas, Courier, monospace;=22>Error=
 intializing IMU</span><br /></div>
<span></span>
<div style=3D=22font-family: Calibri, Arial, Helvetica, sans-serif; font-=
size: 12pt; color: rgb(0, 0, 0);=22><br /></div>
<div id=3D=22Signature=22>
<div id=3D=22divtagdefaultwrapper=22 dir=3D=22ltr=22 style=3D=22font-size=
:12pt; color:=23000000; font-family:Calibri,Arial,Helvetica,sans-serif=22=
>
<p style=3D=22margin-top: 0px; margin-bottom: 0px;=22><span id=3D=22ms-rt=
erangepaste-start=22></span></p>
<div style=3D=22color:rgb(33,33,33); font-family:wf=5Fsegoe-ui=5Fnormal,&=
quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,Em=
oji=46ont; font-size:15px; margin:0px=22><font size=3D=223=22 face=3D=22T=
imes New Roman,serif=22><span style=3D=22font-size:12pt=22><font face=3D=22=
Calibri,sans-serif=22 color=3D=22black=22>Was there any other setup I nee=
ded to do before running it (i.e. creating a settings file for the radio)=
=3F Do you think using a newer version of UHD and the E312 image might ca=
use this issue=3F<br /></font></span></font></div>
<div style=3D=22color:rgb(33,33,33); font-family:wf=5Fsegoe-ui=5Fnormal,&=
quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,Em=
oji=46ont; font-size:15px; margin:0px=22><font size=3D=223=22 face=3D=22T=
imes New Roman,serif=22><span style=3D=22font-size:12pt=22><font face=3D=22=
Calibri,sans-serif=22 color=3D=22black=22><br /></font></span></font></di=
v>
<div style=3D=22color:rgb(33,33,33); font-family:wf=5Fsegoe-ui=5Fnormal,&=
quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,Em=
oji=46ont; font-size:15px; margin:0px=22><font size=3D=223=22 face=3D=22T=
imes New Roman,serif=22><span style=3D=22font-size:12pt=22><font face=3D=22=
Calibri,sans-serif=22 color=3D=22black=22>Isaac Beeman</font></span></fon=
t></div>
<br />
<p style=3D=22margin-top: 0px; margin-bottom: 0px;=22></p>
</div>
</div>
<div id=3D=22appendonsend=22></div>
<hr style=3D=22display:inline-block;width:98%=22 tabindex=3D=22-1=22 />
<div id=3D=22divRply=46wdMsg=22 dir=3D=22ltr=22><font face=3D=22Calibri, =
sans-serif=22 style=3D=22font-size:11pt=22 color=3D=22=23000000=22><b>=46=
rom:</b> Samuel Prager &lt;sprager=40usc.edu&gt;<br />
<b>Sent:</b> Tuesday, November 12, 2019 5:50 PM<br />
<b>To:</b> Beeman, Isaac L. &lt;ilbeeman=40wpi.edu&gt;; Michael Dickens &=
lt;michael.dickens=40ettus.com&gt;<br />
<b>Cc:</b> usrp-users=40lists.ettus.com &lt;usrp-users=40lists.ettus.com&=
gt;<br />
<b>Subject:</b> =5BEXT=5D Re: =5BUSRP-users=5D Question about the IMU (MP=
U-9150) on the E310</font>
<div>&=23160;</div>
</div>
<div>
<div name=3D=22x=5FmessageBodySection=22>
<div dir=3D=22auto=22>Hi Isaac,
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>Here is a simple example program I wrote a while ba=
ck for continuously streaming IMU data on the E310/E312.&=23160;</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22><a href=3D=22https://urldefense.proofpoint.com/v2/u=
rl=3Fu=3Dhttps-3A=5F=5Fnam03.safelinks.protection.outlook.com=5F-3=46url-=
3Dhttps-253A-252=46-252=46github.com-252=46samprager-252=46E312IMUTest-26=
data-3D02-257C01-257Cilbeeman-2540wpi.edu-257Ccef26121da504f6f64ef08d767c=
2b4d7-257C589c76f5ca1541f9884b55ec15a0672a-257C0-257C0-257C63709195827071=
2195-26sdata-3D3pQUZTIvh45i=46S8enyrS1MPGDiscUBdpVv0mHpg5W0o-253D-26reser=
ved-3D0&amp;d=3DDwM=46Ag&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=
=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3DayO-PKOkEUfA482phquaUVVLNP=
nHPrrP3JaUxuEdE9I&amp;s=3DUDHiS=5Ftg6U=5FKyXcPPZYRak2AXT=46SzhWo=5F5-w=5F=
Xqw=5FzQ&amp;e=3D=22 originalsrc=3D=22https://github.com/samprager/E312IM=
UTest=22 shash=3D=22CiJiyOcM6/BUwtxqiU4HpP7CtaciKT4iA1NOiqppLejWx2Y4V2kY6=
Jcn6QEMqyrqDmE8z3uNy0eTxxcLqqQy5A68b6qZwEQqVx0nOCYSDTSaCBsDMmPPaxnuD268b0=
vSJlh=461QuR97yqghmULoPSMXgTyVsu+JdjWy/MNaDw1ms=3D=22>https://github.com/=
samprager/E312IMUTest</a><br /></div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>See the README for RTIMULib installation instructio=
ns (the correct library is&=23160;<a href=3D=22https://urldefense.proofpo=
int.com/v2/url=3Fu=3Dhttps-3A=5F=5Fnam03.safelinks.protection.outlook.com=
=5F-3=46url-3Dhttps-253A-252=46-252=46github.com-252=46RPi-2DDistro-252=46=
RTIMULib-26data-3D02-257C01-257Cilbeeman-2540wpi.edu-257Ccef26121da504f6f=
64ef08d767c2b4d7-257C589c76f5ca1541f9884b55ec15a0672a-257C0-257C0-257C637=
091958270722198-26sdata-3D=46w44bv=46609L1W4chj1NfTr1dr42qRkkm71JnaqZRP98=
-253D-26reserved-3D0&amp;d=3DDwM=46Ag&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUH=
hpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3DayO-PKOkEUfA4=
82phquaUVVLNPnHPrrP3JaUxuEdE9I&amp;s=3DY1qxUzwB6JdD5H8ngg8cs4D4jomPZhQmYV=
T74fUfNig&amp;e=3D=22 originalsrc=3D=22https://github.com/RPi-Distro/RTIM=
ULib=22 shash=3D=22fhXu6g5kWLCBf2YyIDTuoSzHy6d7X1rkgxIKyUv2gLR1z9WLGl+vsj=
JLWGEQx6lG4h7J3y8v55T=46ZGk7CL7+X6yN=46rWj7LKkEp+bGJInMSnLUcVEQWmq4yYeeLM=
IsZXBTgVHySqs4b3=466WIi3GCPSyR6O3BCm/CdqNpNTTDNbwc=3D=22>https://github.c=
om/RPi-Distro/RTIMULib</a>).</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>Sam</div>
</div>
</div>
<div name=3D=22x=5FmessageReplySection=22>On Nov 12, 2019, 12:30 PM -0800=
, Michael Dickens via USRP-users &lt;usrp-users=40lists.ettus.com&gt;, wr=
ote:<br />
<blockquote type=3D=22cite=22 class=3D=22x=5Fspark=5Fquote spark=5Fquote=22=
 style=3D=22margin: 5px 5px; padding-left: 10px; border-left: thin solid =
=233498db;=22>
<div dir=3D=22ltr=22>Hi Isaac - UHD itself provides no API to the IMU; ne=
ver has. The&=23160;RTIMULib, possibly an older version than current and =
assuming it can be built and installed on the E310, should be able to acc=
ess the IMU to provide information from it. Note =22possibly=22, =22assum=
ing=22, =22should=22 ... clearly this isn't a majorly supported feature o=
f the E310=21 Good luck=21 - MLD</div>
<br />
<div class=3D=22x=5Fgmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22x=5Fgmail=5Fattr=22>On Tue, Nov 12, 2019 =
at 12:37 PM Beeman, Isaac L. via USRP-users &lt;<a href=3D=22mailto:usrp-=
users=40lists.ettus.com=22>usrp-users=40lists.ettus.com</a>&gt; wrote:<br=
 /></div>
<blockquote class=3D=22x=5Fgmail=5Fquote x=5Fspark=5Fquote spark=5Fquote=22=
 style=3D=22margin: 5px 5px; padding-left: 10px; border-left: thin solid =
=23d35400;=22>Marcus and List,<br />
<br />
I was hoping someone knew the steps involved to get the RTIMULib setup on=
 the USRP. I tried building and installing both the RTIMULib and Linux fo=
lders, but the Linux one fails:<br />
<br />
<br />
-- =46ound unsuitable Qt version =22=22 from NOT=46OUND<br />
Qt QTOPENGL library not found.<br />
Qt QTGUI library not found.<br />
Qt QTCORE library not found.<br />
CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4=5FADD=5FRESOURCES):<br /=
>
&=23160; &=23160; Unknown CMake command =22QT4=5FADD=5FRESOURCES=22.<br /=
>
-- Configuring incomplete, errors occurred=21<br />
<br />
<br />
I figured that I can't install the RTIMULibDemo apps because they use a G=
UI, so I built and installed the RTIMULibDrive and RTIMULibCal individual=
ly. Only, when I try to run one of these apps I get the following error:<=
br />
<br />
<br />
RTIMULibDrive: error while loading shared libraries: libRTIMULib.so.7: ca=
nnot open shared object file: No such file or directory<br />
<br />
<br />
I don't get how to fix this. When I build and install the same apps on my=
 host computer they run fine (but obviously can't find any IMU). Consider=
ing that any applications I write also use the same libraries, I feel lik=
e this is going to be an issue.<br />
<br />
There isn't any documentation that I can find on the usage of the C++ lib=
rary for RTIMULib. Just reading the code in RTIMULibDrive.cpp as an examp=
le, it doesn't seem too complicated, but it obviously is a generic progra=
m that isn't using the settings needed to connect to the MPU-9150.<br />
<br />
If anyone knows how to get one of these apps (RTIMULibDrive or RTIMULibCa=
l) working or how to use RTIMULib.h in connecting to the MPU-9150 over I2=
C, it would be much appreciated.<br />
<br />
-Isaac Beeman<br />
<br />
<br />
<br />
P.S. I also tried 'i2cdetect -y 0' to see if the MPU-9150 has the I2C add=
ress 0x69 like the schematics say, but I only get:<br />
<br />
Warning: Can't use SMBus Quick Write command, will skip some addresses<br=
 />
&=23160; &=23160; &=23160;0&=23160; 1&=23160; 2&=23160; 3&=23160; 4&=2316=
0; 5&=23160; 6&=23160; 7&=23160; 8&=23160; 9&=23160; a&=23160; b&=23160; =
c&=23160; d&=23160; e&=23160; f<br />
00:<br />
10:<br />
20:<br />
30: -- -- -- -- -- -- -- --<br />
40:<br />
50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --<br />
60:<br />
70:<br />
<br />
with nothing under 0x69. So that's weird.<br />
<br />
<br />
-----Original Message-----<br />
=46rom: USRP-users &lt;<a href=3D=22mailto:usrp-users-bounces=40lists.ett=
us.com=22 target=3D=22=5Fblank=22>usrp-users-bounces=40lists.ettus.com</a=
>&gt; On Behalf Of Marcus D. Leech via USRP-users<br />
Sent: Tuesday, November 12, 2019 10:35 AM<br />
To: <a href=3D=22mailto:usrp-users=40lists.ettus.com=22 target=3D=22=5Fbl=
ank=22>usrp-users=40lists.ettus.com</a><br />
Subject: =5BEXT=5D Re: =5BUSRP-users=5D Question about the IMU (MPU-9150)=
 on the E310<br />
<br />
On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:<br />
&gt; Hi List,<br />
&gt;<br />
&gt; I have recently started working with the E310/E312 and have gotten m=
ultichannel RX/TX and GPS working, but I can't figure out how to grab dat=
a off of the internal IMU/MPU-9150. I found some website (<a href=3D=22ht=
tps://urldefense.proofpoint.com/v2/url=3Fu=3Dhttps-3A=5F=5Fnam03.safelink=
s.protection.outlook.com=5F-3=46url-3Dhttps-253A-252=46-252=46urldefense.=
proofpoint.com-252=46v2-252=46url-253=46u-253Dhttp-2D3A-5=46-5=46gnuradio=
.cn-5=46en-5=46html-5=46support-5=46en-5=46page-2D5=46usrp-2D5=46e3x0.htm=
l-2526d-253DDwM=46aQ-2526c-253DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc-5=
=46gI-2526r-253DopIuWAKmyw=46059tAs2i3Pg-2526m-253DrGLxgINOMrS4sAfnjQ9m=46=
=469r3gnmnGlRtI8Lfh1c-5=469g-2526s-253DfT3qR8x5-2DPwNd6mUUK4W-5=460mJBVKo=
BdE53vAvmpA=46z6M-2526e-253D-26data-3D02-257C01-257Cilbeeman-2540wpi.edu-=
257Ccef26121da504f6f64ef08d767c2b4d7-257C589c76f5ca1541f9884b55ec15a0672a=
-257C0-257C0-257C637091958270722198-26sdata-3DiwZjSXpqEEE1kJ-252=46S9w-25=
2=46UrDgu6ogXQIsj38VxZwelHNE-253D-26reserved-3D0&amp;d=3DDwM=46Ag&amp;c=3D=
clK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs=
2i3Pg&amp;m=3DayO-PKOkEUfA482phquaUVVLNPnHPrrP3JaUxuEdE9I&amp;s=3DpPv7chu=
lsOOfzGqNpg-IzTfxdRDJ6wQ1m7Zyk6s36bs&amp;e=3D=22 originalsrc=3D=22https:/=
/urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Fgnuradio.cn=5Fen=5Fh=
tml=5Fsupport=5Fen=5Fpage-5=46usrp-5=46e3x0.html&amp;d=3DDwM=46aQ&amp;c=3D=
clK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs=
2i3Pg&amp;m=3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&amp;s=3Df=
T3qR8x5-PwNd6mUUK4W=5F0mJBVKoBdE53vAvmpA=46z6M&amp;e=3D=22 shash=3D=22k96=
/+xKrhGz7zC7c8YEXrOrioUH3ev5rN/PBgLjaUl5ozl2aJ+r0uEkzP1oXgMBlotzA1TEvVmDs=
o6Ulet=46u5cNGJaD9v8tf3Jy9f6tfjAGJsbr/LnY7M5SjT5DLlOYhs+WklKbztjfqSo4Jd6C=
tPH+H5+edKloRpY6uAUh42Qw=3D=22 rel=3D=22noreferrer=22 target=3D=22=5Fblan=
k=22>http://gnuradio.cn/en/html/support/en/page=5Fusrp=5Fe3x0.html</a>) t=
hat said that the USRP image should contain RTIMULib applications with al=
low the user to test the IMU, but, unless I am looking in the wrong place=
, the current image for the E310 does not have any RTIMULib applications =
on it.<br />
&gt;<br />
&gt; I want to know if there are any API calls or libraries that would al=
low me to do development with the IMU.<br />
&gt;<br />
&gt; -Isaac Beeman<br />
&gt;<br />
&gt; =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<=
br />
<br />
You might start here:<br />
<br />
<a href=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttps-3A=5F=5F=
nam03.safelinks.protection.outlook.com=5F-3=46url-3Dhttps-253A-252=46-252=
=46urldefense.proofpoint.com-252=46v2-252=46url-253=46u-253Dhttps-2D3A-5=46=
-5=46github.com-5=46RTIMULib-2526d-253DDwM=46aQ-2526c-253DclK7kQUTWtAVEOV=
Igvi0NU5BOUHhpN0H8p7CSfnc-5=46gI-2526r-253DopIuWAKmyw=46059tAs2i3Pg-2526m=
-253DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c-5=469g-2526s-253DNIewtd=
UlqSB7hPPCxPdlvxHxo4oRBNidm-2DDf5qiTL=46c-2526e-253D-26data-3D02-257C01-2=
57Cilbeeman-2540wpi.edu-257Ccef26121da504f6f64ef08d767c2b4d7-257C589c76f5=
ca1541f9884b55ec15a0672a-257C0-257C0-257C637091958270732197-26sdata-3Dfe5=
5C-252BuNXLda1CKtlfeK0OvJbaAZvH5Unr=46nlM61PI4-253D-26reserved-3D0&amp;d=3D=
DwM=46Ag&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3Dop=
IuWAKmyw=46059tAs2i3Pg&amp;m=3DayO-PKOkEUfA482phquaUVVLNPnHPrrP3JaUxuEdE9=
I&amp;s=3DRmS80wzEVUgoXzmsEMb7lOcKRm8maz68bNWRoi=5F1IjM&amp;e=3D=22 origi=
nalsrc=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttps-3A=5F=5F=
github.com=5FRTIMULib&amp;d=3DDwM=46aQ&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOU=
HhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3DrGLxgINOMrS4=
sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&amp;s=3DNIewtdUlqSB7hPPCxPdlvxHxo4o=
RBNidm-Df5qiTL=46c&amp;e=3D=22 shash=3D=22kocyRkcWKXUymcbVVYECV=46uC8b4ja=
mLX5PwaJUB=46wB/KuyV83Twpq240t6Of/pzWJ4tiDdux4aBql5Vq=46BKQBaXrTr=465CpI0=
EJoD2wdxfbtAxa6Dd7c=46unX1p0xGM6GiU819Pz7K2vo8VZVgwCH5ZoRMuZEiu0SpWSGYq3c=
b5mk=3D=22 rel=3D=22noreferrer=22 target=3D=22=5Fblank=22>https://github.=
com/RTIMULib</a><br />
<br />
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list<br />
<a href=3D=22mailto:USRP-users=40lists.ettus.com=22 target=3D=22=5Fblank=22=
>USRP-users=40lists.ettus.com</a><br />
<a href=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttps-3A=5F=5F=
nam03.safelinks.protection.outlook.com=5F-3=46url-3Dhttps-253A-252=46-252=
=46urldefense.proofpoint.com-252=46v2-252=46url-253=46u-253Dhttp-2D3A-5=46=
-5=46lists.ettus.com-5=46mailman-5=46listinfo-5=46usrp-2D2Dusers-2D5=46li=
sts.ettus.com-2526d-253DDwM=46aQ-2526c-253DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN=
0H8p7CSfnc-5=46gI-2526r-253DopIuWAKmyw=46059tAs2i3Pg-2526m-253DrGLxgINOMr=
S4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c-5=469g-2526s-253D8wPPngBEnPiaAxtUARbH1=
opcSV3Pgih5Konyr2kf9-2Dc-2526e-253D-26data-3D02-257C01-257Cilbeeman-2540w=
pi.edu-257Ccef26121da504f6f64ef08d767c2b4d7-257C589c76f5ca1541f9884b55ec1=
5a0672a-257C0-257C0-257C637091958270742195-26sdata-3DlAzQHTWL-252=46Minep=
=4693tvzrt=46VBG=46LSQjCI8meyoB59tc-253D-26reserved-3D0&amp;d=3DDwM=46Ag&=
amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46=
059tAs2i3Pg&amp;m=3DayO-PKOkEUfA482phquaUVVLNPnHPrrP3JaUxuEdE9I&amp;s=3DH=
JItX5a6QIXCi5p3NMUfhEVjpk8R=5F2s2N9gbt5LWVVw&amp;e=3D=22 originalsrc=3D=22=
https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Flists.ettus.c=
om=5Fmailman=5Flistinfo=5Fusrp-2Dusers-5=46lists.ettus.com&amp;d=3DDwM=46=
aQ&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKm=
yw=46059tAs2i3Pg&amp;m=3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9=
g&amp;s=3D8wPPngBEnPiaAxtUARbH1opcSV3Pgih5Konyr2kf9-c&amp;e=3D=22 shash=3D=
=22MkwZ5Ik5bEoQaji3YXQ0YY5ZCgrGK7dOpSqU8+vGQ+4Z6v1uXbd0I6wRRPeLRygpyAXTLp=
9jVv4YHSaJxd4BfU8UR728gzmY8HSlH+EkNop0c2z9eYBECew4mt4XGEAD2c8uD7dCvBIr6ls=
hwVYOcoY=46WGn8kjjCAW8MC7v8Nm0=3D=22 rel=3D=22noreferrer=22 target=3D=22=5F=
blank=22>http://lists.ettus.com/mailman/listinfo/usrp-users=5Flists.ettus=
.com</a><br /></blockquote>
</div>
<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22 class=3D=22x=5Fgmail=5Fsignature=22>
<div dir=3D=22ltr=22>
<div>
<div dir=3D=22ltr=22>Michael Dickens<br />
Ettus Research Technical Support<br />
Email: <a href=3D=22mailto:support=40ettus.com=22 target=3D=22=5Fblank=22=
>support=40ettus.com</a><br />
Web: <a href=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttps-3A=
=5F=5Fnam03.safelinks.protection.outlook.com=5F-3=46url-3Dhttps-253A-252=46=
-252=46urldefense.proofpoint.com-252=46v2-252=46url-253=46u-253Dhttps-2D3=
A-5=46-5=46ettus.com-5=46-2526d-253DDwM=46aQ-2526c-253DclK7kQUTWtAVEOVIgv=
i0NU5BOUHhpN0H8p7CSfnc-5=46gI-2526r-253DopIuWAKmyw=46059tAs2i3Pg-2526m-25=
3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c-5=469g-2526s-253D=46VmNPR5=
VsaN=46Su2W3JXNVpqQiNivgYWHJAGCOGvRw3c-2526e-253D-26data-3D02-257C01-257C=
ilbeeman-2540wpi.edu-257Ccef26121da504f6f64ef08d767c2b4d7-257C589c76f5ca1=
541f9884b55ec15a0672a-257C0-257C0-257C637091958270742195-26sdata-3DXGZ-25=
2BclK=46jKQlvHy4ig5up44eShLfbBogAEy-252=461S9E=46pA-253D-26reserved-3D0&a=
mp;d=3DDwM=46Ag&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp=
;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3DayO-PKOkEUfA482phquaUVVLNPnHPrrP3Ja=
UxuEdE9I&amp;s=3DzAqswui63-iRv8wxCwh4oyuEnXpfx4T0tp-7XZSIBuQ&amp;e=3D=22 =
originalsrc=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttps-3A=5F=
=5Fettus.com=5F&amp;d=3DDwM=46aQ&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H=
8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3DrGLxgINOMrS4sAfnjQ=
9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&amp;s=3D=46VmNPR5VsaN=46Su2W3JXNVpqQiNivg=
YWHJAGCOGvRw3c&amp;e=3D=22 shash=3D=22C5SaHOP3lYibfdC26pxLx7ViCqgQ4KgVCx1=
zJWfv74sThbv=46GGk5SIf2s9/acxL+hPKtM9Sf4bovzZYSiAJ+l8echZ8cc1CgEg8twI3iEW=
oz=46G7UtdEBDk2LIJGZdJ7GGuvPjBOn7Zcm0mVfj8wf97KMKdbghguLV8WejPRyUy4=3D=22=
 target=3D=22=5Fblank=22>https://ettus.com/</a></div>
</div>
</div>
</div>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list<br />
USRP-users=40lists.ettus.com<br />
https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Flists.ettus.c=
om=5Fmailman=5Flistinfo=5Fusrp-2Dusers-5=46lists.ettus.com&amp;d=3DDwICAg=
&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=
=46059tAs2i3Pg&amp;m=3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&=
amp;s=3D8wPPngBEnPiaAxtUARbH1opcSV3Pgih5Konyr2kf9-c&amp;e=3D<br /></block=
quote>
</div>
</div>
</blockquote>
</div>
</blockquote>
</div>
</body>
</html>

--5dd2eaf8_109cf92e_1ef4--



--===============6481164912036542926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6481164912036542926==--


