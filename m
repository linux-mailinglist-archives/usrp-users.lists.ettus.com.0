Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC218F9D7C
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 23:51:15 +0100 (CET)
Received: from [::1] (port=52158 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUf09-0001cb-9H; Tue, 12 Nov 2019 17:51:09 -0500
Received: from mail-oi1-f182.google.com ([209.85.167.182]:34139)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sprager@usc.edu>) id 1iUf04-0001XS-Ut
 for usrp-users@lists.ettus.com; Tue, 12 Nov 2019 17:51:05 -0500
Received: by mail-oi1-f182.google.com with SMTP id l202so16466548oig.1
 for <usrp-users@lists.ettus.com>; Tue, 12 Nov 2019 14:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usc-edu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version; bh=r6/2v04eqLtD3lajaOIubf1sNOm4WYhzE/xdYZmdais=;
 b=sInSNh8bpyd6Yq7wKYMD61d3ZLjGU2U5CVefmWsHg1bJSAN3h6gyji0OP8MG6duWJp
 gr5rkjA1wJsZ9f+J1bXIEvCUkZwVxkdk+jLWjhoKmuvN6gQ5bHc5xJAWLH0E2StAi/88
 WD6NbyBs/BWhvhkPNFKNHv+EWUN6UVAVg/RNU2JLDbmEQ+H08Y/ePe8eq8e77F27MRhJ
 W4bagiJPpgM1yw75qp60uTPWtA4Zjk2gcrS0cHPrJqlR0nPo7hYXWDDx1UaL7IK7DhM8
 gxyUUA8XXb1D7ftam1UMPdfbjoJ8NjNCol5tlFnhTKvz8cUcwdaW1SNbMGNzQuEwvkw+
 DJpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version;
 bh=r6/2v04eqLtD3lajaOIubf1sNOm4WYhzE/xdYZmdais=;
 b=HJGnhjGtRgjxK7ieTnkqyBnZwbN3ojVXGLxTiiVMzCNe5rUVo/mQlz0g2U1ONM010i
 yOMI/9TWCIP1KyN49S5Nj/nTEoqHhoJkQ1WsKthFqV09sxJ16RRXRppQk75jEBYbxQJ3
 XSJeUhjB7sYfKk4Jeew41WuziomNwCFARLsGqqZW8YMQEbi3jGu4ydP7RuF+LNueWSS6
 y+uUcia+Z2Gx2gO303oAcxifK6fbYw+iZOr9PzZ3lizgtvfy6isDD08RG2Du0NDtI6VP
 lqct8cIbHpbkDSwkXknLV13VGNnh3kPaGPqWKgfJkMwcJLKsVvSxBVIr19wsEJfuuZ4H
 X/bg==
X-Gm-Message-State: APjAAAWp9b4LPf3TT1oQlnfclntDwyMxIu6CCaRnAjmZ3voG5dnRufWb
 9Y/HxpS2HXefD4/UlOGDi616EA==
X-Google-Smtp-Source: APXvYqwD0nl6H5rUq2uIhIQYlo1M0MHkIA+LJDjj6rV3a7vCjl+AXx2Eg/v+QhHFTrE69a1C5RCqDg==
X-Received: by 2002:a54:4796:: with SMTP id o22mr135385oic.52.1573599024106;
 Tue, 12 Nov 2019 14:50:24 -0800 (PST)
Received: from [2600:1700:e200:2ac0:90e9:d304:70::]
 ([2600:1700:e200:2ac0:d0f0:123:965c:8d8c])
 by smtp.gmail.com with ESMTPSA id 2sm87850ots.21.2019.11.12.14.50.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 14:50:23 -0800 (PST)
Date: Tue, 12 Nov 2019 14:50:15 -0800
To: "=?utf-8?Q?Beeman=2C_Isaac_L.?=" <ilbeeman@wpi.edu>, Michael Dickens
 <michael.dickens@ettus.com>
Message-ID: <6bafb417-0ef5-4654-85bd-9a519c733590@Spark>
In-Reply-To: <CAGNhwTOTi=LN+g-qCdK3_7XW6FZkDvRDbTaWZQpOrunQAFDhdg@mail.gmail.com>
References: <BN7PR01MB3859F04224D313F8F5F458C6CB770@BN7PR01MB3859.prod.exchangelabs.com>
 <CAGNhwTOTi=LN+g-qCdK3_7XW6FZkDvRDbTaWZQpOrunQAFDhdg@mail.gmail.com>
X-Readdle-Message-ID: 6bafb417-0ef5-4654-85bd-9a519c733590@Spark
MIME-Version: 1.0
Subject: Re: [USRP-users] Question about the IMU (MPU-9150) on the E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Cc: "=?utf-8?Q?usrp-users=40lists.ettus.com?=" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4558858798797735615=="
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

--===============4558858798797735615==
Content-Type: multipart/alternative; boundary="5dcb372c_3352255a_2dc7"

--5dcb372c_3352255a_2dc7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi Isaac,

Here is a simple example program I wrote a while back for continuously st=
reaming IMU data on the E310/E312.

https://github.com/samprager/E312IMUTest

See the README for RTIMULib installation instructions (the correct librar=
y is=C2=A0https://github.com/RPi-Distro/RTIMULib).

Sam
On Nov 12, 2019, 12:30 PM -0800, Michael Dickens via USRP-users <usrp-use=
rs=40lists.ettus.com>, wrote:
> Hi Isaac - UHD itself provides no API to the IMU; never has. The=C2=A0R=
TIMULib, possibly an older version than current and assuming it can be bu=
ilt and installed on the E310, should be able to access the IMU to provid=
e information from it. Note =22possibly=22, =22assuming=22, =22should=22 =
... clearly this isn't a majorly supported feature of the E310=21 Good lu=
ck=21 - MLD
>
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
>
>
> --
> Michael Dickens
> Ettus Research Technical Support
> Email: support=40ettus.com
> Web: https://ettus.com/
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> USRP-users mailing list
> USRP-users=40lists.ettus.com
> https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Flists.ettus=
.com=5Fmailman=5Flistinfo=5Fusrp-2Dusers-5=46lists.ettus.com&d=3DDwICAg&c=
=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&r=3DopIuWAKmyw=46059tAs2=
i3Pg&m=3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&s=3D8wPPngBEnP=
iaAxtUARbH1opcSV3Pgih5Konyr2kf9-c&e=3D

--5dcb372c_3352255a_2dc7
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
<div dir=3D=22auto=22>Here is a simple example program I wrote a while ba=
ck for continuously streaming IMU data on the E310/E312.&=23160;</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22><a href=3D=22https://github.com/samprager/E312IMUTe=
st=22>https://github.com/samprager/E312IMUTest</a><br /></div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>See the README for RTIMULib installation instructio=
ns (the correct library is&=23160;<a href=3D=22https://github.com/RPi-Dis=
tro/RTIMULib=22>https://github.com/RPi-Distro/RTIMULib</a>).</div>
<div dir=3D=22auto=22><br /></div>
<div dir=3D=22auto=22>Sam</div>
</div>
</div>
<div name=3D=22messageReplySection=22>On Nov 12, 2019, 12:30 PM -0800, Mi=
chael Dickens via USRP-users &lt;usrp-users=40lists.ettus.com&gt;, wrote:=
<br />
<blockquote type=3D=22cite=22 class=3D=22spark=5Fquote=22 style=3D=22marg=
in: 5px 5px; padding-left: 10px; border-left: thin solid =231abc9c;=22>
<div dir=3D=22ltr=22>Hi Isaac - UHD itself provides no API to the IMU; ne=
ver has. The&=23160;RTIMULib, possibly an older version than current and =
assuming it can be built and installed on the E310, should be able to acc=
ess the IMU to provide information from it. Note =22possibly=22, =22assum=
ing=22, =22should=22 ... clearly this isn't a majorly supported feature o=
f the E310=21 Good luck=21 - MLD</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Tue, Nov 12, 2019 at 1=
2:37 PM Beeman, Isaac L. via USRP-users &lt;<a href=3D=22mailto:usrp-user=
s=40lists.ettus.com=22>usrp-users=40lists.ettus.com</a>&gt; wrote:<br /><=
/div>
<blockquote class=3D=22gmail=5Fquote spark=5Fquote=22 style=3D=22margin: =
5px 5px; padding-left: 10px; border-left: thin solid =23e67e22;=22>Marcus=
 and List,<br />
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
tps://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Fgnuradio.cn=5Fe=
n=5Fhtml=5Fsupport=5Fen=5Fpage-5=46usrp-5=46e3x0.html&amp;d=3DDwM=46aQ&am=
p;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46=
059tAs2i3Pg&amp;m=3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&amp=
;s=3DfT3qR8x5-PwNd6mUUK4W=5F0mJBVKoBdE53vAvmpA=46z6M&amp;e=3D=22 rel=3D=22=
noreferrer=22 target=3D=22=5Fblank=22>http://gnuradio.cn/en/html/support/=
en/page=5Fusrp=5Fe3x0.html</a>) that said that the USRP image should cont=
ain RTIMULib applications with allow the user to test the IMU, but, unles=
s I am looking in the wrong place, the current image for the E310 does no=
t have any RTIMULib applications on it.<br />
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
github.com=5FRTIMULib&amp;d=3DDwM=46aQ&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOU=
HhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3DrGLxgINOMrS4=
sAfnjQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&amp;s=3DNIewtdUlqSB7hPPCxPdlvxHxo4o=
RBNidm-Df5qiTL=46c&amp;e=3D=22 rel=3D=22noreferrer=22 target=3D=22=5Fblan=
k=22>https://github.com/RTIMULib</a><br />
<br />
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list<br />
<a href=3D=22mailto:USRP-users=40lists.ettus.com=22 target=3D=22=5Fblank=22=
>USRP-users=40lists.ettus.com</a><br />
<a href=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5F=
lists.ettus.com=5Fmailman=5Flistinfo=5Fusrp-2Dusers-5=46lists.ettus.com&a=
mp;d=3DDwM=46aQ&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp=
;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3DrGLxgINOMrS4sAfnjQ9m=46=469r3gnmnGl=
RtI8Lfh1c=5F9g&amp;s=3D8wPPngBEnPiaAxtUARbH1opcSV3Pgih5Konyr2kf9-c&amp;e=3D=
=22 rel=3D=22noreferrer=22 target=3D=22=5Fblank=22>http://lists.ettus.com=
/mailman/listinfo/usrp-users=5Flists.ettus.com</a><br /></blockquote>
</div>
<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22 class=3D=22gmail=5Fsignature=22>
<div dir=3D=22ltr=22>
<div>
<div dir=3D=22ltr=22>Michael Dickens<br />
Ettus Research Technical Support<br />
Email: <a href=3D=22mailto:support=40ettus.com=22 target=3D=22=5Fblank=22=
>support=40ettus.com</a><br />
Web: <a href=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttps-3A=
=5F=5Fettus.com=5F&amp;d=3DDwM=46aQ&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhp=
N0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3DrGLxgINOMrS4sAf=
njQ9m=46=469r3gnmnGlRtI8Lfh1c=5F9g&amp;s=3D=46VmNPR5VsaN=46Su2W3JXNVpqQiN=
ivgYWHJAGCOGvRw3c&amp;e=3D=22 target=3D=22=5Fblank=22>https://ettus.com/<=
/a></div>
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
</body>
</html>

--5dcb372c_3352255a_2dc7--



--===============4558858798797735615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4558858798797735615==--


