Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4465C100A48
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 18:32:04 +0100 (CET)
Received: from [::1] (port=35936 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWksc-0001HL-J1; Mon, 18 Nov 2019 12:32:02 -0500
Received: from mail-pj1-f53.google.com ([209.85.216.53]:39392)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sprager@usc.edu>) id 1iWksY-0000Ty-Fm
 for usrp-users@lists.ettus.com; Mon, 18 Nov 2019 12:31:58 -0500
Received: by mail-pj1-f53.google.com with SMTP id t103so1685030pjb.6
 for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2019 09:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usc-edu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
 bh=b5m3QAlrAutJDrYQDfnz3tLvCDrBp9gnndvVyRF6V2Y=;
 b=eNFJAczx2nq1Cn98osWwfYLU2gIRYLjqri+y+k+fNFLYs7YmdMF008hK2cEsFNfbzg
 H25r71nq7pgo/2jbqEtbAfJ32sMUs92h6dDkISZEnGBpll4tG+0w8LRRLqOd7BPCHra0
 wMpkESOak0GYOh/x0KdWYILqGyVlEixlnXbG47YG2CFsWbu+PyBO7Fuy+3yCM/hwwvLQ
 4dAXbiQa70jMEi0mQxqHYKwy4G+cprpoOUF2KptRge8lFdfFINiQQCpX9Sno674eyFbd
 FtmlKE0CkIgyfbdGq76w8yttj0p4DKxvbKAH5TTJoVeRcHgCpEUWaCEbWdPLn7aFEbdO
 ycaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
 :subject:mime-version;
 bh=b5m3QAlrAutJDrYQDfnz3tLvCDrBp9gnndvVyRF6V2Y=;
 b=iKwy+fQm8MfNiaNE+iP56OCNbw4YLiMVZOeX9XF3YgUQS9746ygwtTkiZ0GaLiejOp
 nzHsLdmXJvUtelV7KZ2Tg8jGGx4XTrc+ZA/Vgkjfl+MSB+8WQiTrevd9N0rAiFvn+4UD
 qROoy4ntxrvWO0HyRnTU9nYrolM0I9xGxRDgQ6Xny8fzz+dwBS0CTdp9tB5igbssEPEj
 8ywASS3ph5a4/twew23kMjFcxfIysbbwvlERmj+QQKQOSWdUHuBy92wqvdeC2P0Yk7Xc
 ukv/aDDGBuhQWAcaPaxFwdAfK+D99s6hBVnJZe536kxmdkyQX6Jts2TWnWYjkrPKjSvT
 lzKw==
X-Gm-Message-State: APjAAAU/2GM0A0Kqy6gFYELMPNzLgBz2UsV6nIZabEpBRrLPKLOgR2oC
 3XdH88xzSnn/sm7q0M7WgDGcras5V1o=
X-Google-Smtp-Source: APXvYqzzk9QFfQxTh9QWADWvQ65QHhZCewBtaHTiQ6jFonj3QJL0jdbpCeQ5rsxNkHbZJbBpPYaYLQ==
X-Received: by 2002:a17:902:6a88:: with SMTP id n8mr34960plk.226.1574098276458; 
 Mon, 18 Nov 2019 09:31:16 -0800 (PST)
Received: from [2600:380:4b7a:254d:f0a8:3f4b:100::]
 ([2600:380:4b7a:254d:2140:e4ac:58cd:5aea])
 by smtp.gmail.com with ESMTPSA id a12sm22983923pfk.188.2019.11.18.09.31.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Nov 2019 09:31:15 -0800 (PST)
Date: Mon, 18 Nov 2019 09:29:47 -0800
To: "=?utf-8?Q?usrp-users=40lists.ettus.com?="
 <usrp-users@lists.ettus.com>, "=?utf-8?Q?Beeman=2C_Isaac_L.?="
 <ilbeeman@wpi.edu>
Message-ID: <66d2663a-0304-4cdf-9a6f-9059ac1c2018@Spark>
In-Reply-To: <BN7PR01MB3859F631BBBA41B8AA029C15CB4D0@BN7PR01MB3859.prod.exchangelabs.com>
References: <BN7PR01MB3859F04224D313F8F5F458C6CB770@BN7PR01MB3859.prod.exchangelabs.com>
 <CAGNhwTOTi=LN+g-qCdK3_7XW6FZkDvRDbTaWZQpOrunQAFDhdg@mail.gmail.com>
 <6bafb417-0ef5-4654-85bd-9a519c733590@Spark>
 <BN7PR01MB3859F631BBBA41B8AA029C15CB4D0@BN7PR01MB3859.prod.exchangelabs.com>
X-Readdle-Message-ID: 66d2663a-0304-4cdf-9a6f-9059ac1c2018@Spark
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
Content-Type: multipart/mixed; boundary="===============2937729709602147646=="
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

--===============2937729709602147646==
Content-Type: multipart/alternative; boundary="5dd2d561_74b0dc51_270a"

--5dd2d561_74b0dc51_270a
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi Isaac,

I vaguely remember seeing this behavior on one of our e312s but it=E2=80=99=
s been a while. If I recall, the solution involved the RTIMULib.ini file =
(which should be created in /etc). Either the ini file was set to use the=
 wrong SPI bus or the ini file was being saved in the wrong place or not =
at all. I would start there.

Sam
On Nov 18, 2019, 8:24 AM -0800, Beeman, Isaac L. , wrote:
> Hi Sam,
>
> Thanks for linking your simple example program for streaming IMU data. =
I finally got the RTIMULib built and installed on the E312, but when I ru=
n your program I get this output:
>
> root=40ni-e31x-:=7E/usr/E312IMUTest/build=23 ./E312IMUTest
> Do something here with example option input: for example
> Settings file not found. Using defaults and creating settings file
> =46ailed to open I2C bus 1
> =46ailed to open SPI bus 0, select 0
> =46ailed to open SPI bus 0, select 1
> No IMU detected
> Using fusion algorithm RTQ=46
> No IMU found
> Error intializing IMU
>
> Was there any other setup I needed to do before running it (i.e. creati=
ng a settings file for the radio)=3F Do you think using a newer version o=
f UHD and the E312 image might cause this issue=3F
>
> Isaac Beeman
>
> =46rom: Samuel Prager <sprager=40usc.edu>
> Sent: Tuesday, November 12, 2019 5:50 PM
> To: Beeman, Isaac L. <ilbeeman=40wpi.edu>; Michael Dickens <michael.dic=
kens=40ettus.com>
> Cc: usrp-users=40lists.ettus.com <usrp-users=40lists.ettus.com>
> Subject: =5BEXT=5D Re: =5BUSRP-users=5D Question about the IMU (MPU-915=
0) on the E310
>
> Hi Isaac,
>
> Here is a simple example program I wrote a while back for continuously =
streaming IMU data on the E310/E312.
>
> https://github.com/samprager/E312IMUTest
>
> See the README for RTIMULib installation instructions (the correct libr=
ary is=C2=A0https://github.com/RPi-Distro/RTIMULib).
>
> Sam
> On Nov 12, 2019, 12:30 PM -0800, Michael Dickens via USRP-users <usrp-u=
sers=40lists.ettus.com>, wrote:
> > Hi Isaac - UHD itself provides no API to the IMU; never has. The=C2=A0=
RTIMULib, possibly an older version than current and assuming it can be b=
uilt and installed on the E310, should be able to access the IMU to provi=
de information from it. Note =22possibly=22, =22assuming=22, =22should=22=
 ... clearly this isn't a majorly supported feature of the E310=21 Good l=
uck=21 - MLD
> >
> > On Tue, Nov 12, 2019 at 12:37 PM Beeman, Isaac L. via USRP-users <usr=
p-users=40lists.ettus.com> wrote:
> > > Marcus and List,
> > >
> > > I was hoping someone knew the steps involved to get the RTIMULib se=
tup on the USRP. I tried building and installing both the RTIMULib and Li=
nux folders, but the Linux one fails:
> > >
> > >
> > > -- =46ound unsuitable Qt version =22=22 from NOT=46OUND
> > > Qt QTOPENGL library not found.
> > > Qt QTGUI library not found.
> > > Qt QTCORE library not found.
> > > CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4=5FADD=5FRESOURCES)=
:
> > > =C2=A0 =C2=A0 Unknown CMake command =22QT4=5FADD=5FRESOURCES=22.
> > > -- Configuring incomplete, errors occurred=21
> > >
> > >
> > > I figured that I can't install the RTIMULibDemo apps because they u=
se a GUI, so I built and installed the RTIMULibDrive and RTIMULibCal indi=
vidually. Only, when I try to run one of these apps I get the following e=
rror:
> > >
> > >
> > > RTIMULibDrive: error while loading shared libraries: libRTIMULib.so=
.7: cannot open shared object file: No such file or directory
> > >
> > >
> > > I don't get how to fix this. When I build and install the same apps=
 on my host computer they run fine (but obviously can't find any IMU). Co=
nsidering that any applications I write also use the same libraries, I fe=
el like this is going to be an issue.
> > >
> > > There isn't any documentation that I can find on the usage of the C=
++ library for RTIMULib. Just reading the code in RTIMULibDrive.cpp as an=
 example, it doesn't seem too complicated, but it obviously is a generic =
program that isn't using the settings needed to connect to the MPU-9150.
> > >
> > > If anyone knows how to get one of these apps (RTIMULibDrive or RTIM=
ULibCal) working or how to use RTIMULib.h in connecting to the MPU-9150 o=
ver I2C, it would be much appreciated.
> > >
> > > -Isaac Beeman
> > >
> > >
> > >
> > > P.S. I also tried 'i2cdetect -y 0' to see if the MPU-9150 has the I=
2C address 0x69 like the schematics say, but I only get:
> > >
> > > Warning: Can't use SMBus Quick Write command, will skip some addres=
ses
> > > =C2=A0 =C2=A0 =C2=A00=C2=A0 1=C2=A0 2=C2=A0 3=C2=A0 4=C2=A0 5=C2=A0=
 6=C2=A0 7=C2=A0 8=C2=A0 9=C2=A0 a=C2=A0 b=C2=A0 c=C2=A0 d=C2=A0 e=C2=A0 =
f
> > > 00:
> > > 10:
> > > 20:
> > > 30: -- -- -- -- -- -- -- --
> > > 40:
> > > 50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
> > > 60:
> > > 70:
> > >
> > > with nothing under 0x69. So that's weird.
> > >
> > >
> > > -----Original Message-----
> > > =46rom: USRP-users <usrp-users-bounces=40lists.ettus.com> On Behalf=
 Of Marcus D. Leech via USRP-users
> > > Sent: Tuesday, November 12, 2019 10:35 AM
> > > To: usrp-users=40lists.ettus.com
> > > Subject: =5BEXT=5D Re: =5BUSRP-users=5D Question about the IMU (MPU=
-9150) on the E310
> > >
> > > On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:
> > > > Hi List,
> > > >
> > > > I have recently started working with the E310/E312 and have gotte=
n multichannel RX/TX and GPS working, but I can't figure out how to grab =
data off of the internal IMU/MPU-9150. I found some website (http://gnura=
dio.cn/en/html/support/en/page=5Fusrp=5Fe3x0.html) that said that the USR=
P image should contain RTIMULib applications with allow the user to test =
the IMU, but, unless I am looking in the wrong place, the current image f=
or the E310 does not have any RTIMULib applications on it.
> > > >
> > > > I want to know if there are any API calls or libraries that would=
 allow me to do development with the IMU.
> > > >
> > > > -Isaac Beeman
> > > >
> > > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=

> > >
> > > You might start here:
> > >
> > > https://github.com/RTIMULib
> > >
> > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > > USRP-users mailing list
> > > USRP-users=40lists.ettus.com
> > > http://lists.ettus.com/mailman/listinfo/usrp-users=5Flists.ettus.co=
m
> >
> >
> > --
> > Michael Dickens
> > Ettus Research Technical Support
> > Email: support=40ettus.com
> > Web: https://ettus.com/
> > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > USRP-users mailing list
> > USRP-users=40lists.ettus.com
> > https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Flists.ett=
us.com=5Fmailman=5Flistinfo=5Fusrp-2Dusers-5=46lists.ettus.com&d=3DDwICAg=
&c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&r=3DopIuWAKmyw=46059tA=
s2i3Pg&m=3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&s=3D8wPPngBE=
nPiaAxtUARbH1opcSV3Pgih5Konyr2kf9-c&e=3D

--5dd2d561_74b0dc51_270a
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
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
in: 5px 5px; padding-left: 10px; border-left: thin solid =231abc9c;=22>
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
=23e67e22;=22>
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
=233498db;=22>Marcus and List,<br />
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
</body>
</html>

--5dd2d561_74b0dc51_270a--



--===============2937729709602147646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2937729709602147646==--


