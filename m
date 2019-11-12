Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8AFF9AB4
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 21:30:09 +0100 (CET)
Received: from [::1] (port=57284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUcnc-0002PE-6A; Tue, 12 Nov 2019 15:30:04 -0500
Received: from mail-ot1-f53.google.com ([209.85.210.53]:39353)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iUcnY-0002ER-EC
 for usrp-users@lists.ettus.com; Tue, 12 Nov 2019 15:30:00 -0500
Received: by mail-ot1-f53.google.com with SMTP id z9so2363615otq.6
 for <usrp-users@lists.ettus.com>; Tue, 12 Nov 2019 12:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GDEd5AEk9Hdgaf6dvdXKT5buvq/nHhKefmtwRuh+hpY=;
 b=GNJDnYXgfA6cPPCZzalwsbNBehUy2eRaVSnKA5Z4SbSfxm2Wgv+1vBFSpxCSel+DwQ
 28VR1m49yiujobE6suckXL7AmnKZO7SLplXwK7yzxLlGLbSvkIsi560TN2MkhvijvRyv
 5EReupQiMucBPYdTdnHSzaAM5jSIX8o/C1N45U1WRP3W+17MIwwa9V4zSBV/mE4LLpgX
 4NSJu4g6iAscVjpo5KsxAhTIEFAHLaicslpGtiQhAlzVIB6wNiTeZgnr1THPj8Fc+zv2
 VGo724g1u3Z6dH0U3V8gRaXUPinDTg1QunYHdmsUMBvT+oUGVlstQfsVtd2XOcx5R7us
 yDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GDEd5AEk9Hdgaf6dvdXKT5buvq/nHhKefmtwRuh+hpY=;
 b=SIrkVVMq1E6uRuqKr7hYawCK6fLdF72vCFbXuKlQQcyZm/6bE8gFFI2MfnZstYfyE7
 B3tdht7j2RyHJqyGh3z5hbswjzG91KvSLC2rah6pHg2xuu/mVBxIIqEDSIjnNyptvZJz
 9lhQTI3SzlxWca35x4IjroJSh2FEdEB5r3iWorZ7BtQgjTEfCird/w9BnK5u68t+pJbA
 GCg7ht87vb4z29O/IQj5SMzY4anSZHkg1iX9bcbCTTJyag/DOOMbtuOvyghn4kc1eR7k
 vZbByX+AjD8MvQjpMUBJPjZvDU8qKP45v1Xmoi0mbeJ9QL4pmW/sYaasD+Qb4/Fc1IfS
 wJgg==
X-Gm-Message-State: APjAAAWDiFugJRIqvxFuwFw0ojHh0lJmokDwZj+9hbJcioimoOEC2Kyq
 P5QpSCcwtXCC/wMGZ5v98ydvGz1UnL69sjTe/f8FmmRp
X-Google-Smtp-Source: APXvYqwhQQsdRC7qUvCgUwO31oKiKAl08B7Y05Ukx7lCMLfjCrqgbbuQNYEeCLDOme9VQmRKJzFRpResDMgn7t9eauE=
X-Received: by 2002:a9d:422:: with SMTP id 31mr25922153otc.107.1573590559666; 
 Tue, 12 Nov 2019 12:29:19 -0800 (PST)
MIME-Version: 1.0
References: <BN7PR01MB3859F04224D313F8F5F458C6CB770@BN7PR01MB3859.prod.exchangelabs.com>
In-Reply-To: <BN7PR01MB3859F04224D313F8F5F458C6CB770@BN7PR01MB3859.prod.exchangelabs.com>
Date: Tue, 12 Nov 2019 15:29:09 -0500
Message-ID: <CAGNhwTOTi=LN+g-qCdK3_7XW6FZkDvRDbTaWZQpOrunQAFDhdg@mail.gmail.com>
To: "Beeman, Isaac L." <ilbeeman@wpi.edu>
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4422578422785950171=="
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

--===============4422578422785950171==
Content-Type: multipart/alternative; boundary="00000000000054c78f05972c1a07"

--00000000000054c78f05972c1a07
Content-Type: text/plain; charset="UTF-8"

Hi Isaac - UHD itself provides no API to the IMU; never has. The RTIMULib,
possibly an older version than current and assuming it can be built and
installed on the E310, should be able to access the IMU to provide
information from it. Note "possibly", "assuming", "should" ... clearly this
isn't a majorly supported feature of the E310! Good luck! - MLD

On Tue, Nov 12, 2019 at 12:37 PM Beeman, Isaac L. via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Marcus and List,
>
> I was hoping someone knew the steps involved to get the RTIMULib setup on
> the USRP. I tried building and installing both the RTIMULib and Linux
> folders, but the Linux one fails:
>
>
> -- Found unsuitable Qt version "" from NOTFOUND
> Qt QTOPENGL library not found.
> Qt QTGUI library not found.
> Qt QTCORE library not found.
> CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4_ADD_RESOURCES):
>     Unknown CMake command "QT4_ADD_RESOURCES".
> -- Configuring incomplete, errors occurred!
>
>
> I figured that I can't install the RTIMULibDemo apps because they use a
> GUI, so I built and installed the RTIMULibDrive and RTIMULibCal
> individually. Only, when I try to run one of these apps I get the following
> error:
>
>
> RTIMULibDrive: error while loading shared libraries: libRTIMULib.so.7:
> cannot open shared object file: No such file or directory
>
>
> I don't get how to fix this. When I build and install the same apps on my
> host computer they run fine (but obviously can't find any IMU). Considering
> that any applications I write also use the same libraries, I feel like this
> is going to be an issue.
>
> There isn't any documentation that I can find on the usage of the C++
> library for RTIMULib. Just reading the code in RTIMULibDrive.cpp as an
> example, it doesn't seem too complicated, but it obviously is a generic
> program that isn't using the settings needed to connect to the MPU-9150.
>
> If anyone knows how to get one of these apps (RTIMULibDrive or
> RTIMULibCal) working or how to use RTIMULib.h in connecting to the MPU-9150
> over I2C, it would be much appreciated.
>
> -Isaac Beeman
>
>
>
> P.S. I also tried 'i2cdetect -y 0' to see if the MPU-9150 has the I2C
> address 0x69 like the schematics say, but I only get:
>
> Warning: Can't use SMBus Quick Write command, will skip some addresses
>      0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> 00:
> 10:
> 20:
> 30: -- -- -- -- -- -- -- --
> 40:
> 50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 60:
> 70:
>
> with nothing under 0x69. So that's weird.
>
>
> -----Original Message-----
> From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus
> D. Leech via USRP-users
> Sent: Tuesday, November 12, 2019 10:35 AM
> To: usrp-users@lists.ettus.com
> Subject: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on the
> E310
>
> On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:
> > Hi List,
> >
> > I have recently started working with the E310/E312 and have gotten
> multichannel RX/TX and GPS working, but I can't figure out how to grab data
> off of the internal IMU/MPU-9150. I found some website (
> http://gnuradio.cn/en/html/support/en/page_usrp_e3x0.html) that said that
> the USRP image should contain RTIMULib applications with allow the user to
> test the IMU, but, unless I am looking in the wrong place, the current
> image for the E310 does not have any RTIMULib applications on it.
> >
> > I want to know if there are any API calls or libraries that would allow
> me to do development with the IMU.
> >
> > -Isaac Beeman
> >
> > _______________________________________________
>
> You might start here:
>
> https://github.com/RTIMULib
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--00000000000054c78f05972c1a07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Isaac - UHD itself provides no API to the IMU; never ha=
s. The=C2=A0RTIMULib, possibly an older version than current and assuming i=
t can be built and installed on the E310, should be able to access the IMU =
to provide information from it. Note &quot;possibly&quot;, &quot;assuming&q=
uot;, &quot;should&quot; ... clearly this isn&#39;t a majorly supported fea=
ture of the E310! Good luck! - MLD</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 12, 2019 at 12:37 PM Beeman, =
Isaac L. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Marcus and List,<br>
<br>
I was hoping someone knew the steps involved to get the RTIMULib setup on t=
he USRP. I tried building and installing both the RTIMULib and Linux folder=
s, but the Linux one fails:<br>
<br>
<br>
-- Found unsuitable Qt version &quot;&quot; from NOTFOUND<br>
Qt QTOPENGL library not found.<br>
Qt QTGUI library not found.<br>
Qt QTCORE library not found.<br>
CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4_ADD_RESOURCES):<br>
=C2=A0 =C2=A0 Unknown CMake command &quot;QT4_ADD_RESOURCES&quot;.<br>
-- Configuring incomplete, errors occurred!<br>
<br>
<br>
I figured that I can&#39;t install the RTIMULibDemo apps because they use a=
 GUI, so I built and installed the RTIMULibDrive and RTIMULibCal individual=
ly. Only, when I try to run one of these apps I get the following error:<br=
>
<br>
<br>
RTIMULibDrive: error while loading shared libraries: libRTIMULib.so.7: cann=
ot open shared object file: No such file or directory<br>
<br>
<br>
I don&#39;t get how to fix this. When I build and install the same apps on =
my host computer they run fine (but obviously can&#39;t find any IMU). Cons=
idering that any applications I write also use the same libraries, I feel l=
ike this is going to be an issue.<br>
<br>
There isn&#39;t any documentation that I can find on the usage of the C++ l=
ibrary for RTIMULib. Just reading the code in RTIMULibDrive.cpp as an examp=
le, it doesn&#39;t seem too complicated, but it obviously is a generic prog=
ram that isn&#39;t using the settings needed to connect to the MPU-9150.<br=
>
<br>
If anyone knows how to get one of these apps (RTIMULibDrive or RTIMULibCal)=
 working or how to use RTIMULib.h in connecting to the MPU-9150 over I2C, i=
t would be much appreciated.<br>
<br>
-Isaac Beeman<br>
<br>
<br>
<br>
P.S. I also tried &#39;i2cdetect -y 0&#39; to see if the MPU-9150 has the I=
2C address 0x69 like the schematics say, but I only get:<br>
<br>
Warning: Can&#39;t use SMBus Quick Write command, will skip some addresses<=
br>
=C2=A0 =C2=A0 =C2=A00=C2=A0 1=C2=A0 2=C2=A0 3=C2=A0 4=C2=A0 5=C2=A0 6=C2=A0=
 7=C2=A0 8=C2=A0 9=C2=A0 a=C2=A0 b=C2=A0 c=C2=A0 d=C2=A0 e=C2=A0 f<br>
00:<br>
10:<br>
20:<br>
30: -- -- -- -- -- -- -- --<br>
40:<br>
50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --<br>
60:<br>
70:<br>
<br>
with nothing under 0x69. So that&#39;s weird.<br>
<br>
<br>
-----Original Message-----<br>
From: USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; On Behalf Of M=
arcus D. Leech via USRP-users<br>
Sent: Tuesday, November 12, 2019 10:35 AM<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on the E3=
10<br>
<br>
On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:<br>
&gt; Hi List,<br>
&gt;<br>
&gt; I have recently started working with the E310/E312 and have gotten mul=
tichannel RX/TX and GPS working, but I can&#39;t figure out how to grab dat=
a off of the internal IMU/MPU-9150. I found some website (<a href=3D"http:/=
/gnuradio.cn/en/html/support/en/page_usrp_e3x0.html" rel=3D"noreferrer" tar=
get=3D"_blank">http://gnuradio.cn/en/html/support/en/page_usrp_e3x0.html</a=
>) that said that the USRP image should contain RTIMULib applications with =
allow the user to test the IMU, but, unless I am looking in the wrong place=
, the current image for the E310 does not have any RTIMULib applications on=
 it.<br>
&gt;<br>
&gt; I want to know if there are any API calls or libraries that would allo=
w me to do development with the IMU.<br>
&gt;<br>
&gt; -Isaac Beeman<br>
&gt;<br>
&gt; _______________________________________________<br>
<br>
You might start here:<br>
<br>
<a href=3D"https://github.com/RTIMULib" rel=3D"noreferrer" target=3D"_blank=
">https://github.com/RTIMULib</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--00000000000054c78f05972c1a07--


--===============4422578422785950171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4422578422785950171==--

