Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F52AF4B4
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 05:36:23 +0200 (CEST)
Received: from [::1] (port=37036 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i7tQb-0003lm-Lv; Tue, 10 Sep 2019 23:36:21 -0400
Received: from mail-lf1-f45.google.com ([209.85.167.45]:35836)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1i7tQX-0003iD-SA
 for usrp-users@lists.ettus.com; Tue, 10 Sep 2019 23:36:18 -0400
Received: by mail-lf1-f45.google.com with SMTP id w6so15251927lfl.2
 for <usrp-users@lists.ettus.com>; Tue, 10 Sep 2019 20:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2sJVeh1mjLk7rISZ6Z2GTm/sqg5EaZA2ok1i1LRwdwI=;
 b=pw2PiOOy9zAE92M55lLfwgglZeigdUNXNbjnoFlbfIJfbPey6BjVR+5VKHYE88PX20
 9vN2tdGyewmkTvf/RKLWaZmEOZWGjcTn5Ok8l35H6+pn4yDGD2YywTQ7PCK9Q1Jj8byW
 GeGfV4PQd+PtvnSgtO/81IYAHcm9gjlnY2Eht7WrFwsXvOLwAGAOvKJeBJFlVrlsFUvT
 +UdKhmeB4ZgShooxUED0iw2tYIP5XVOVv2HLKKdEzYpEaC7/dP0F2fFmxT367j3yb+CF
 M2UOwB934OU0HusisTFRHhw64y+V0GC17nh8FLeCzBJoCoSjI8JsZEu8nNIeJMoFFfN9
 STmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2sJVeh1mjLk7rISZ6Z2GTm/sqg5EaZA2ok1i1LRwdwI=;
 b=laIprt84fMxSlh6Al/D6tAMS727yuCw2g1nFSG8TUdD8uSfqxEY6SBe/mzSYwLRmBX
 qH8SdWC4Fsiojeb5V55v+zw+zopfkzpchq03nYw7wzvB9wFu5hyqw+KnyOu1xRZOgsg2
 p9hmipSmP3eBuOEJBV2E23/uEeyXRY/1BAD0KMOCgVBJGjJ7GrqYB/qZdyh5U5ZgBTnt
 o9Crf1KzWVpapfKdOfJgInlaz+Vv5AlK+6SkRg4jblnH9mwEogW6uOrtrJd3mGec6qBb
 sYDihrjliaEQ9xTGy+LctHY9nRD5bOddTmTiHk9nKPs6ee6JE47Y+NUG/ymS7ntvO9MK
 hRiA==
X-Gm-Message-State: APjAAAXFxz3eFWdy04dnOXuEcNe+pvRh/VEvx+4Q8n+RjNO/dh7kmLFn
 ikSt/ehmwzxPfyUKiOcBWa0Je6CCqNvFU4XwdiESMgUh
X-Google-Smtp-Source: APXvYqwc+O281eyIp+V16lEe8RzFXM9UE9/nv7zfMZRra/jrUiDBTReiEJQENoyKS+3DQV6MOWp00vgE4/0pUOveC9I=
X-Received: by 2002:a19:4a10:: with SMTP id x16mr24218881lfa.126.1568172936405; 
 Tue, 10 Sep 2019 20:35:36 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB2340FC4C7B3CCD31AF67D8AFAFB60@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340FC4C7B3CCD31AF67D8AFAFB60@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Tue, 10 Sep 2019 20:35:00 -0700
Message-ID: <CAL7q81u_K6Rmh60FVts8nqtYZemb-OYWBmDhuC8ccsum9rmGCw@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] No block_id specified for channel 0
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4540990001561292349=="
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

--===============4540990001561292349==
Content-Type: multipart/alternative; boundary="000000000000d2350405923eb628"

--000000000000d2350405923eb628
Content-Type: text/plain; charset="UTF-8"

Hi Jason,

Could you try reverting gr-ettus back one commit to 4980cbef and let me
know if that works?

Jonathon

On Tue, Sep 10, 2019 at 5:23 AM Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have an RFNoC  flowgraph and bitfile combo that used to work but is
> erroring out now. I've been using the code successfully on the E320 and
> E310 and decided to re-build for the X310 (and XG flowgraph).  When I run
> my flowgraph, I am see a lot of addition debug that I am not used to seeing
> (which is fine) and then my block in particular seems to cause problems and
> I get the error in the subject.  I am guessing that since I just rebuilt
> everything, some change needs to be made in my impl for my block due to
> some UHD update, but I can't quite figure out anywhere where something
> changes.  The beginning of the output when I run my flowgraph is:
>
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);
> Boost_105300; UHD_3.14.1.1-0-g98c7c986
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1323 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)
> [INFO] [0/DDC_2] Initializing block control (NOC ID: 0xDDC0000000000001)
> [INFO] [0/DDC_3] Initializing block control (NOC ID: 0xDDC0000000000001)
> [INFO] [0/keepMinN_0] Initializing block control (NOC ID:
> 0x229C30C919275220)
> [INFO] [0/keepMinN_1] Initializing block control (NOC ID:
> 0x229C30C919275220)
> [WARNING] [RFNOC] Can't find a block controller for key SplitStream, using
> default block controller!
> [INFO] [0/SplitStream_0] Initializing block control (NOC ID:
> 0x5757000000000000)
> [WARNING] [RFNOC] Can't find a block controller for key SplitStream, using
> default block controller!
> [INFO] [0/SplitStream_1] Initializing block control (NOC ID:
> 0x5757000000000000)
> Finding block for: Radio_1
> Mapped external port 0 to 0
> Mapped port 0 to 0/Radio_1
> Mapped external port 1 to 1
> Mapped port 1 to 0/Radio_1
> TX args:
> RX args:
> 0/Radio_1 has 1 input ports
> 0/Radio_1 has 2 output ports
> getting block control for port 0
> Finding block for: DDC_0
> Mapped external port 0 to 0
> Mapped port 0 to 0/DDC_0
> TX args:
> getting block control for port 0
> getting block control for port 0
>
>
> And the ehnd of that blob shows:
>
> getting block control for port 0
> getting block control for port 0
> thread[thread-per-block[2]: <block keepMinN (10)>]: RuntimeError: Cannot
> create streamers: No block_id specified for channel 0.
>
>
> And finally, if I let it sit there, the X310 must get into a wonky state
> because I start to get:
>
> [ERROR] [X300] 192.168.80.2: x300 fw communication failure #1
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.80.2: x300 fw communication failure #2
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.80.2: x300 fw communication failure #1
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.80.2: x300 fw communication failure #1
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.80.2: x300 fw communication failure #2
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.80.2: x300 fw communication failure #3
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The task
> loop will now exit, things may not work.EnvironmentError: IOError:
> 192.168.80.2: x300 fw communication failure #3
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
>
>
>
> What am I missing here?
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d2350405923eb628
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jason,<div><br></div><div>Could you try reverting gr-et=
tus back one commit to 4980cbef and let me know if that works?</div><div><b=
r></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Sep 10, 2019 at 5:23 AM Jason Matusiak v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I have an RFNoC=C2=A0 flowgraph and bitfile combo that used to work but is =
erroring out now. I&#39;ve been using the code successfully on the E320 and=
 E310 and decided to re-build for the X310 (and XG flowgraph).=C2=A0 When I=
 run my flowgraph, I am see a lot of addition
 debug that I am not used to seeing (which is fine) and then my block in pa=
rticular seems to cause problems and I get the error in the subject.=C2=A0 =
I am guessing that since I just rebuilt everything, some change needs to be=
 made in my impl for my block due to
 some UHD update, but I can&#39;t quite figure out anywhere where something=
 changes.=C2=A0 The beginning of the output when I run my flowgraph is:</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36)=
; Boost_105300; UHD_3.14.1.1-0-g98c7c986<br>
</span>
<div>[INFO] [X300] X300 initialization sequence...<br>
</div>
<div>[INFO] [X300] Maximum frame size: 8000 bytes.<br>
</div>
<div>[INFO] [X300] Radio 1x clock: 200 MHz<br>
</div>
<div>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000=
00000)<br>
</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)<br>
</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1323 MB/s)<br>
</div>
<div>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000=
001)<br>
</div>
<div>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000=
001)<br>
</div>
<div>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_2] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_3] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/keepMinN_0] Initializing block control (NOC ID: 0x229C30C919=
275220)<br>
</div>
<div>[INFO] [0/keepMinN_1] Initializing block control (NOC ID: 0x229C30C919=
275220)<br>
</div>
<div>[WARNING] [RFNOC] Can&#39;t find a block controller for key SplitStrea=
m, using default block controller!<br>
</div>
<div>[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x5757000=
000000000)<br>
</div>
<div>[WARNING] [RFNOC] Can&#39;t find a block controller for key SplitStrea=
m, using default block controller!<br>
</div>
<div>[INFO] [0/SplitStream_1] Initializing block control (NOC ID: 0x5757000=
000000000)<br>
</div>
<div>Finding block for: Radio_1<br>
</div>
<div>Mapped external port 0 to 0<br>
</div>
<div>Mapped port 0 to 0/Radio_1<br>
</div>
<div>Mapped external port 1 to 1<br>
</div>
<div>Mapped port 1 to 0/Radio_1<br>
</div>
<div>TX args:<br>
</div>
<div>RX args:<br>
</div>
<div>0/Radio_1 has 1 input ports<br>
</div>
<div>0/Radio_1 has 2 output ports<br>
</div>
<div>getting block control for port 0<br>
</div>
<div>Finding block for: DDC_0<br>
</div>
<div>Mapped external port 0 to 0<br>
</div>
<div>Mapped port 0 to 0/DDC_0<br>
</div>
<div>TX args:<br>
</div>
<div>getting block control for port 0<br>
</div>
<div>getting block control for port 0<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
And the ehnd of that blob shows:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>getting block control for port 0<br>
</span>
<div>getting block control for port 0<br>
</div>
<div>thread[thread-per-block[2]: &lt;block keepMinN (10)&gt;]: RuntimeError=
: Cannot create streamers: No block_id specified for channel 0.<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
And finally, if I let it sit there, the X310 must get into a wonky state be=
cause I start to get:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>[ERROR] [X300] <a href=3D"http://192.168.80.2" target=3D"_blank">192.=
168.80.2</a>: x300 fw communication failure #1<br>
</span>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"http://192.168.80.2" target=3D"_blank">192.1=
68.80.2</a>: x300 fw communication failure #2<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"http://192.168.80.2" target=3D"_blank">192.1=
68.80.2</a>: x300 fw communication failure #1<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"http://192.168.80.2" target=3D"_blank">192.1=
68.80.2</a>: x300 fw communication failure #1<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"http://192.168.80.2" target=3D"_blank">192.1=
68.80.2</a>: x300 fw communication failure #2<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"http://192.168.80.2" target=3D"_blank">192.1=
68.80.2</a>: x300 fw communication failure #3<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [UHD] An unexpected exception was caught in a task loop.The ta=
sk loop will now exit, things may not work.EnvironmentError: IOError: <a hr=
ef=3D"http://192.168.80.2" target=3D"_blank">192.168.80.2</a>: x300 fw comm=
unication failure #3<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
What am I missing here?</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d2350405923eb628--


--===============4540990001561292349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4540990001561292349==--

