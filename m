Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E82B31080A9
	for <lists+usrp-users@lfdr.de>; Sat, 23 Nov 2019 21:50:18 +0100 (CET)
Received: from [::1] (port=57552 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYcM8-0005GI-3b; Sat, 23 Nov 2019 15:50:12 -0500
Received: from mail-il1-f177.google.com ([209.85.166.177]:33217)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1iYcM4-0005CA-GJ
 for usrp-users@lists.ettus.com; Sat, 23 Nov 2019 15:50:08 -0500
Received: by mail-il1-f177.google.com with SMTP id y16so3069134iln.0
 for <usrp-users@lists.ettus.com>; Sat, 23 Nov 2019 12:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=tchBY6VO5UfZvjWF8Ya2ijM1JP2eANO2CpiTW5aHmw4=;
 b=gDOYzXqjhGiN++C2KOAJg3f6dWAh3sb2gYnuwl9iSabwiaxgUHInYv8QUZZ2H0aQSw
 GE2imuFM1m5v0maCgSOfvfw9obJUyzwZBod/S6qv9Wu6MeyKW0ebV7OlypdLxq3+adks
 x2w6KqiBmWV9CqV7OrhlF02w6Hu/UemVAmF27ygG/822eHLc3LTPyE4Yyr4mvgOZmVUL
 QlvSAVB5qGOvPQfDen+O+U1s6mKEJ8LNlGV1rOcWLAvqyAtPbFjzE1g1/mGceKEBIDO5
 nYTBc+WyDCxk5zblALl+3IkSLYU54Q5LnDTk11k5OsIJTevxO3tsa18admOi6U2+rZAR
 4yjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tchBY6VO5UfZvjWF8Ya2ijM1JP2eANO2CpiTW5aHmw4=;
 b=E9CZglNGp6I5sJ+FqMJaHFTKCNLnuzwLLB19tjL+MWKZicj2oYSc8qVeBwRCqf8dup
 hqEPsk1+UM5KuBKxPE01iYSuBn95UgMYZD7RZtZCc17BY5aqapQ+EwQ1elv/lU0nvWc8
 uEiwjLhy6Dj/sEeu48iZ0bSewi1k5ULyL25VpC3rdh6xuJzUSUshi2id1UAUSAj/VJF9
 ljVebr5tYhZSSwEJVq/2jlJo6Sx3QNRC1Pzwb4uvbfclQwcKQWwdx1NCT1eZLat3KIJd
 QI20nyG7ABAEJIS8VqctJP7I5MesjhkIlOG9XoC6BOaddBNbG5ISmkCqPpCqQS0Xi46Y
 hwSw==
X-Gm-Message-State: APjAAAWCiXIeugR3d0rRwJj7FpsiWleWfFuCW5kZUJHVWop9NLXJbjwi
 gOVAVuSer4nyJQKneGXOQ4AKlINudN30q4uv0XVgD3eDLDM=
X-Google-Smtp-Source: APXvYqxeXXDmiNuQms/z0Li9S4g72AZzCMVWIIErUA6PzR98Xn608NERT0WxyFuiE2EQFsQ6PotrFksVH0A831aVNYk=
X-Received: by 2002:a92:5899:: with SMTP id z25mr24265582ilf.187.1574542167365; 
 Sat, 23 Nov 2019 12:49:27 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 23 Nov 2019 12:49:16 -0800
Message-ID: <CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP N310 Losing Connection Occassionally
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
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Content-Type: multipart/mixed; boundary="===============2733466661648658714=="
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

--===============2733466661648658714==
Content-Type: multipart/alternative; boundary="00000000000091dc7b059809aa49"

--00000000000091dc7b059809aa49
Content-Type: text/plain; charset="UTF-8"

I am trying to run a Gnu Radio python file via the terminal and only want
to run in for a few seconds and then kill it. Then, wait a little bit, and
rerun the script again. My problem is that sometimes, when I rerun it, I
get an issue with my USRP N310 in that it decides to just disconnect with
either a "No devices found for" or "Someone tried to claim this device
again" message. I have posted the error messages below from two different
instances.

When this happens, running uhd_find_devices does not find the N310, neither
does uhd_find_devices --args=addr=192.168.10.2.

Upon restarting the N310 by manually pressing the power button, it is able
to be found by uhd_find_devices, and I can continue running the script
until the error happens, and I have to go manually restart the USRP.

I am trying to make an entire automated system and this is the one thing
that requires manual effort, which is to get up and restart the USRP.

I am looking for a way to either, reboot the USRP via commands for when the
error occurs, or a solution/workaround to the problem if it exists.

Is there any way to keep the USRP claimed and just tell the GNU part of the
script to run each time I want to rerun it? Because each time I have to run
the script, the USRP has to again be claimed and initiated. How can I keep
it on at all times, or just skip the claiming step each time?

Thank you in advance for any help you can provide!

Here are the error messages:
*[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
UHD_3.14.0.HEAD-0-g6875d061*















*Traceback (most recent call last):  File
"/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, in
<module>    main()  File
"/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 284, in main
tb = top_block_cls()  File
"/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, in __init__
  channels=range(4),  File
"/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
122, in constructor_interceptor    return old_constructor(*args)  File
"/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
2782, in make    return _uhd_swig.usrp_source_make(*args)RuntimeError:
LookupError: KeyError: No devices found for ----->Device Address:    addr:
192.168.10.2    rx_lo_source: external    init_cals:
BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY*

*Here is the second time it happened:*














*[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
UHD_3.14.0.HEAD-0-g6875d061[INFO] [MPMD] Initializing 1 device(s) in
parallel with args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY[ERROR]
[RPC] Someone tried to claim this device again (From:
192.168.10.1)Traceback (most recent call last):  File
"/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, in
<module>    main()  File
"/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 284, in main
tb = top_block_cls()  File
"/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, in __init__
  channels=range(4),  File
"/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
122, in constructor_interceptor    return old_constructor(*args)  File
"/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
2782, in make    return _uhd_swig.usrp_source_make(*args)RuntimeError:
RuntimeError: Error during RPC call to `claim'. Error message: Someone
tried to claim this device again (From: 192.168.10.1)*

--00000000000091dc7b059809aa49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to run a Gnu Radio python file via the termina=
l and only want to run in for a few seconds and then kill it. Then, wait a =
little bit, and rerun the script again. My problem is that sometimes, when =
I rerun it, I get an issue with my USRP N310 in that it decides to just dis=
connect with either a &quot;No devices found for&quot; or &quot;Someone tri=
ed to claim this device again&quot; message. I have posted the error messag=
es below from two different instances.<div><br></div><div><div>When this ha=
ppens, running uhd_find_devices does not find the N310, neither does uhd_fi=
nd_devices --args=3Daddr=3D192.168.10.2.</div><div><br></div><div>Upon rest=
arting the N310 by manually pressing the power button, it is able to be fou=
nd by uhd_find_devices, and I can continue running the script until the err=
or happens, and I have to go manually restart the USRP.</div></div><div><br=
></div><div>I am trying to make an entire automated system and this is the =
one thing that requires manual effort, which is to get up and restart the U=
SRP.</div><div><br></div><div>I am looking for a way to either, reboot the =
USRP via commands for when the error occurs, or a solution/workaround to th=
e problem if it exists.=C2=A0</div><div><br></div><div>Is there any way to =
keep the USRP claimed and just tell the GNU part of the script to run each =
time I want to rerun it? Because each time I have to run the script, the US=
RP has to again be claimed and initiated. How can I keep it on at all times=
, or just skip the claiming step each time?</div><div><br></div><div>Thank =
you in advance for any help you can provide!</div><div><br></div><div>Here =
are the error messages:</div><div><i>[INFO] [UHD] linux; GNU C++ version 8.=
3.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061</i></div><i>Traceback (most =
recent call last):<br>=C2=A0 File &quot;/home/ugikie/Desktop/PositionContro=
l/ArrayTest2.py&quot;, line 296, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<=
br>=C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2.py&quo=
t;, line 284, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls()<br>=C2=A0 Fil=
e &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2.py&quot;, line 79, =
in __init__<br>=C2=A0 =C2=A0 channels=3Drange(4),<br>=C2=A0 File &quot;/usr=
/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py&quot;, line 122=
, in constructor_interceptor<br>=C2=A0 =C2=A0 return old_constructor(*args)=
<br>=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/u=
hd_swig.py&quot;, line 2782, in make<br>=C2=A0 =C2=A0 return _uhd_swig.usrp=
_source_make(*args)<br>RuntimeError: LookupError: KeyError: No devices foun=
d for -----&gt;<br>Device Address:<br>=C2=A0 =C2=A0 addr: 192.168.10.2<br>=
=C2=A0 =C2=A0 rx_lo_source: external<br>=C2=A0 =C2=A0 init_cals: BASIC|TX_A=
TTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_R=
X_LO_DELAY</i><br><div><i><br></i></div><div><b style=3D"">Here is the seco=
nd time it happened:</b></div><div><i>[INFO] [UHD] linux; GNU C++ version 8=
.3.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061<br>[INFO] [MPMD] Initializi=
ng 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,=
product=3Dn310,serial=3D3177E63,claimed=3DTrue,addr=3D192.168.10.2,rx_lo_so=
urce=3Dexternal,init_cals=3DBASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_D=
ELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY<br>[ERROR] [RPC] Someone t=
ried to claim this device again (From: 192.168.10.1)<br>Traceback (most rec=
ent call last):<br>=C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/A=
rrayTest2.py&quot;, line 296, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=
=C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2.py&quot;,=
 line 284, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls()<br>=C2=A0 File &=
quot;/home/ugikie/Desktop/PositionControl/ArrayTest2.py&quot;, line 79, in =
__init__<br>=C2=A0 =C2=A0 channels=3Drange(4),<br>=C2=A0 File &quot;/usr/lo=
cal/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py&quot;, line 122, i=
n constructor_interceptor<br>=C2=A0 =C2=A0 return old_constructor(*args)<br=
>=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_=
swig.py&quot;, line 2782, in make<br>=C2=A0 =C2=A0 return _uhd_swig.usrp_so=
urce_make(*args)<br>RuntimeError: RuntimeError: Error during RPC call to `c=
laim&#39;. Error message: Someone tried to claim this device again (From: 1=
92.168.10.1)</i><b style=3D""><br></b></div></div>

--00000000000091dc7b059809aa49--


--===============2733466661648658714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2733466661648658714==--

