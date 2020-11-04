Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 504422A6579
	for <lists+usrp-users@lfdr.de>; Wed,  4 Nov 2020 14:46:10 +0100 (CET)
Received: from [::1] (port=33978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaJ6t-0001gK-Hn; Wed, 04 Nov 2020 08:45:59 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:43180)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <robertbenwilson0@gmail.com>)
 id 1kaJ6p-0001Ys-Dy
 for usrp-users@lists.ettus.com; Wed, 04 Nov 2020 08:45:55 -0500
Received: by mail-ot1-f52.google.com with SMTP id y22so8831599oti.10
 for <usrp-users@lists.ettus.com>; Wed, 04 Nov 2020 05:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tVxl8qWTOiLTbdE+h/psBU8rb0S28DtV/KfMiIk8i0o=;
 b=P4L2iAfj4Rfx7EwwBVFZQvAO6CfS20cF8KoVPUlZnkc12vnw0upoIe0kLtd2hs5bxY
 Lsqe+1Ir/vvbFcYt+ebyc18BQ/s99bXKy/fiKnAO/pVRKVSFxLy56p9j0CcxBtg4bI4z
 GTRo3u9geXB3C89BLjn5MfD0fFfwe+SGcsu8e7OsmQMzamvQ3xXpAazEDufJu5SIrfBd
 LUqTjKJgCrwiTLN6LCFjGKKXU92HeiGmJmXGx23u8YwOPUFgjV3vKHA/Y0nSwWcuwkdr
 w7oENeronDUW4SsUhDe0BecxZ8tVSbmUVzNwkT2/8gMVVuoq/31HVIOxEr7wJ1aoSPNk
 1lTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tVxl8qWTOiLTbdE+h/psBU8rb0S28DtV/KfMiIk8i0o=;
 b=KNZWceKQKxn311ibWFAug8vy/mqB8gxRu/tfUBtSiPmoR7dvDMJQ1zH9Tr7vYAFesz
 RHZr0LiqY59BU+rhv3Xcfjrq3NBRpLbTLEjJl/qCtrsJGYpIy0bKLyyeZTFUj9GHwjiR
 VrvsI/Wyi8ZFsNG2N/E/EjKW58XnNs7GFIQsJaKtn2VF4A2e2WRFoE0tI4MZxFBAYtAK
 8jEMfB61C+1ebE3cVmH1UEhsWJxOTfgRLss5s3k3+JcKmj//svN3YOR0Zfy2h1+khq02
 n0Tj8vzNNaN+cp1Lu9joi8TYOgS/bWXlWYSbX4aN9t6iBN1NH2D0OU5TnO8pbnstXlJv
 l3hg==
X-Gm-Message-State: AOAM530Prei/Ni9rug/t0ylw2InEHL7G0mw5bfwRqpmhdK0tWXOS1WTR
 EjK/rCFZfboC5Z8WHwp7bezI+OE0jtGCmWf0PGbZN9PpxVw=
X-Google-Smtp-Source: ABdhPJweC7vD6FnaSPY1esfLF51QWly4YMZ4opA9Ly7USM/m494l7UCCb0bB3Kta/z5OfMd33kPatdBjnPG0AzC6+jM=
X-Received: by 2002:a9d:6c8d:: with SMTP id c13mr18652091otr.222.1604497514440; 
 Wed, 04 Nov 2020 05:45:14 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
 <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
In-Reply-To: <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
Date: Wed, 4 Nov 2020 08:45:03 -0500
Message-ID: <CAGJu-namsauwtchamfjn_wS=uGwFkx8i4sRaHH3AWk0G=JkLLA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC Fosphor error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robert Wilson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert Wilson <robertbenwilson0@gmail.com>
Content-Type: multipart/mixed; boundary="===============8361942690883826763=="
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

--===============8361942690883826763==
Content-Type: multipart/alternative; boundary="000000000000643ec205b348306d"

--000000000000643ec205b348306d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=99s max MTU is=
 6144
bytes. I=E2=80=99ve changed MTU to the max with no change in gnuRadio respo=
nse. Is
the 6144 bytes not enough?

On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum <jonathon.pendlum@ettus.com=
>
wrote:

> Hi Ben,
>
> Try setting your NIC's MTU to 9000.
>
> Jonathon
>
> On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> OS: Linux Ubuntu 20.04.1 LTS
>> GRC: 3.8
>> UHD: 4.0
>> USRP:X310 (HG)
>>
>> I have been looking at RFNoC only for a few weeks. I have followed the
>> RFNoC Workshop 4 tutorial and successfully built my own custom gain bloc=
k
>> as well as implemented and FFT from existing blocks using the "Getting
>> Started with RFNoC" document online.
>>
>> I am now attempting to get Fosphor up and running on my X310 to further
>> understand bitstream generation from YAML files. At one point I believe
>> there was an example bitstream that had the correct Fosphor configuratio=
n I
>> don't see it in the build of UHD I have.
>>
>> I've attached my .yml file and a copy of my GRC flow graph.
>> Below is the error message I'm receiving.
>>
>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>> UHD_4.0.0.0-1-gcf570707
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 1472 bytes.
>> [INFO] [GPS] No GPSDO found
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>> 0xfd7d809a, 0xffff
>> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this
>> device.
>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
>> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...
>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>>
>> >>> Done (return code -11)
>>
>> More resources of this type of development would be welcome as well.
>>
>> Many Thanks,
>> Ben Wilson
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000643ec205b348306d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=
=80=99s max MTU is 6144 bytes. I=E2=80=99ve changed MTU to the max with no =
change in gnuRadio response. Is the 6144 bytes not enough?=C2=A0</div><div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Nov 3, 2020 at 9:32 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pe=
ndlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,=
204,204)"><div dir=3D"ltr">Hi Ben,<div><br></div><div>Try setting your NIC&=
#39;s MTU to 9000.</div><div><br></div><div>Jonathon</div></div><br><div cl=
ass=3D"gmail_quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div></div><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-colo=
r:rgb(204,204,204)"></blockquote></div><div class=3D"gmail_quote"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,20=
4,204)"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>OS: Linux Ubu=
ntu 20.04.1 LTS<br></div><div>GRC: 3.8</div><div>UHD: 4.0</div><div>USRP:X3=
10 (HG)<br></div><div><br></div><div>I have been looking at RFNoC only for =
a few weeks. I have followed the RFNoC Workshop 4 tutorial and successfully=
 built my own custom gain block as well as implemented and FFT from existin=
g blocks using the &quot;Getting Started with RFNoC&quot; document online.<=
/div><div><br></div><div>I am now attempting to get Fosphor up and running =
on my X310 to further understand bitstream generation from YAML files. At o=
ne point I believe there was an example bitstream that had the correct Fosp=
hor configuration I don&#39;t see it in the build of UHD I have.</div><div>=
<br></div><div>I&#39;ve attached my .yml file and a copy of my GRC flow gra=
ph. <br></div><div>Below is the error message I&#39;m receiving.</div><div>=
<br></div><div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD=
_4.0.0.0-1-gcf570707<br>[INFO] [X300] X300 initialization sequence...<br>[I=
NFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [GPS] No GPSDO found<=
br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[WARNING] [RFNOC::BLOCK_FACTORY=
] Could not find block with Noc-ID 0xfd7d809a, 0xffff<br>[WARNING] [0/Radio=
#0] Setting RX IQ Balance is not possible on this device.<br>gr::log :DEBUG=
: rfnoc_rx_streamer0 - Committing graph...<br>[WARNING] [0/Radio#0] Attempt=
ing to set tick rate to 0. Skipping.<br>gr::log :DEBUG: rfnoc_rx_streamer1 =
- Committing graph...<br>gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start=
 stream command...<br>gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start st=
ream command...<br><br>&gt;&gt;&gt; Done (return code -11)</div><div><br></=
div><div>More resources of this type of development would be welcome as wel=
l.<br></div><div><br></div><div>Many Thanks,</div><div>Ben Wilson<br></div>=
<div><br></div><div><br></div></div></blockquote></div><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-=
color:rgb(204,204,204)">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000643ec205b348306d--


--===============8361942690883826763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8361942690883826763==--

