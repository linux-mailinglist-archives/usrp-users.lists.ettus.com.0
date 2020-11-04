Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAA72A6D52
	for <lists+usrp-users@lfdr.de>; Wed,  4 Nov 2020 19:59:56 +0100 (CET)
Received: from [::1] (port=36440 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaO0e-00028l-TC; Wed, 04 Nov 2020 13:59:52 -0500
Received: from mail-ua1-f52.google.com ([209.85.222.52]:39235)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kaO0a-0001Y1-51
 for usrp-users@lists.ettus.com; Wed, 04 Nov 2020 13:59:48 -0500
Received: by mail-ua1-f52.google.com with SMTP id t15so6367462ual.6
 for <usrp-users@lists.ettus.com>; Wed, 04 Nov 2020 10:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=srBH0WVdA5zUY/fKgrDM9AGHjDrCGHApV4W+sACpd6w=;
 b=OZY2qfuLCoZOQqwI2oOxXEvg083Lk8WqfEDkwkVUtdHVg57fNcHitnZR5Ne3Xw/4/t
 uQW8139EO2TOWHn2GL1RlQSshkwjRJeprZMnbDQb+w56ayKnrIxYc9OUcDEHqpfMAmfh
 x7OwZL+lGu+sLvY1Ah+YLRryDFEc5HZF4aEvxCE0NHyxIHNhWt3nJwHB1hSFcbartz1P
 C152D5k7mEqu/Gl/ixS9IBO9amSAFv0wnTIWqEM89oueneJV4rNp/YrvXPanvDAmnyiX
 TjWTeWD+G6Ef8/R3xTEZyqHflrcgzXzpUbBQ8l1FqsW1qdAdvQ2KBn0o/uu00gEKDdLd
 Kmzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=srBH0WVdA5zUY/fKgrDM9AGHjDrCGHApV4W+sACpd6w=;
 b=UPCp0VNyqUXfSBRsfyh7oiRpl5gdpMB4bGnWldUMp+V0J0wWJpOWt9GyjUz3ZXSiW7
 5nyDRoe3QHHkOxZbwjJCFV9NNhTiVo3gvOCOOmvic3JbZ+gQdxPoZRHSigIV+WiJe8WK
 ULFXGQ4WB2BlQv4dbCMldp1FlUhKtbulrx0ztOw8G+jfmFPWPkA3L/TDGDBWEz9ZlUtS
 dhi1TGbaJiniDn3rXnxklJ/e1CJqN0YD7IQUrwLokPMyHP/ykdPJ5AaKwHbNU5PpVS44
 hkoUoU7domv8OPfx3K5rMqy9pxCmQZan3Mgfs5tiHaZUSgdTkHJr+FXBJDjaLChXvC5n
 Gvlw==
X-Gm-Message-State: AOAM533/9ueoQwpGM7IHOmGGlQx0YWQQ8IfHy0socD7mb1gwpJCyPvxF
 652vrsdIIzFtVCxYuqIpVjya8KncoheK+wJOUSDT5Ep5
X-Google-Smtp-Source: ABdhPJwhhJB693Jz5kHx2fEpISZQDtNOIaJILuHA/+dJtgM3hUKMFEr4YB6g4UJc8/ek6Kuoj22lqp+Onahi5NZ1PBI=
X-Received: by 2002:ab0:4988:: with SMTP id e8mr13827852uad.44.1604516347488; 
 Wed, 04 Nov 2020 10:59:07 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
 <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
 <CAGJu-namsauwtchamfjn_wS=uGwFkx8i4sRaHH3AWk0G=JkLLA@mail.gmail.com>
In-Reply-To: <CAGJu-namsauwtchamfjn_wS=uGwFkx8i4sRaHH3AWk0G=JkLLA@mail.gmail.com>
Date: Wed, 4 Nov 2020 13:58:31 -0500
Message-ID: <CAL7q81uRieZtRCSur8X5GiLjYtMBRsxmDFYQwQwEMF_U_6yGMw@mail.gmail.com>
To: Robert Wilson <robertbenwilson0@gmail.com>
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============3647218608740114051=="
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

--===============3647218608740114051==
Content-Type: multipart/alternative; boundary="000000000000edca0c05b34c9274"

--000000000000edca0c05b34c9274
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

Try using the maximum MTU size supported. Also, try reducing the FFT size
and SPP to 512.

Jonathon

On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson <robertbenwilson0@gmail.com>
wrote:

> My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=99s max MTU =
is 6144
> bytes. I=E2=80=99ve changed MTU to the max with no change in gnuRadio res=
ponse. Is
> the 6144 bytes not enough?
>
> On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Ben,
>>
>> Try setting your NIC's MTU to 9000.
>>
>> Jonathon
>>
>> On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello,
>>>
>>> OS: Linux Ubuntu 20.04.1 LTS
>>> GRC: 3.8
>>> UHD: 4.0
>>> USRP:X310 (HG)
>>>
>>> I have been looking at RFNoC only for a few weeks. I have followed the
>>> RFNoC Workshop 4 tutorial and successfully built my own custom gain blo=
ck
>>> as well as implemented and FFT from existing blocks using the "Getting
>>> Started with RFNoC" document online.
>>>
>>> I am now attempting to get Fosphor up and running on my X310 to further
>>> understand bitstream generation from YAML files. At one point I believe
>>> there was an example bitstream that had the correct Fosphor configurati=
on I
>>> don't see it in the build of UHD I have.
>>>
>>> I've attached my .yml file and a copy of my GRC flow graph.
>>> Below is the error message I'm receiving.
>>>
>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>> UHD_4.0.0.0-1-gcf570707
>>> [INFO] [X300] X300 initialization sequence...
>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>> [INFO] [GPS] No GPSDO found
>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>> 0xfd7d809a, 0xffff
>>> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this
>>> device.
>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...
>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>>>
>>> >>> Done (return code -11)
>>>
>>> More resources of this type of development would be welcome as well.
>>>
>>> Many Thanks,
>>> Ben Wilson
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000edca0c05b34c9274
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>Try using the maximum MTU si=
ze supported. Also, try reducing the FFT size and SPP to 512.</div><div><br=
></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson &lt;=
<a href=3D"mailto:robertbenwilson0@gmail.com">robertbenwilson0@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"auto">My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=
=99s max MTU is 6144 bytes. I=E2=80=99ve changed MTU to the max with no cha=
nge in gnuRadio response. Is the 6144 bytes not enough?=C2=A0</div><div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, N=
ov 3, 2020 at 9:32 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendl=
um@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Ben,<div><br></div><div>Try setting your NIC&#39;s MTU to 9000.</div><di=
v><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"></div><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov=
 2, 2020 at 6:55 AM Robert Wilson via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div></div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"></blockquote></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,=
</div><div><br></div><div>OS: Linux Ubuntu 20.04.1 LTS<br></div><div>GRC: 3=
.8</div><div>UHD: 4.0</div><div>USRP:X310 (HG)<br></div><div><br></div><div=
>I have been looking at RFNoC only for a few weeks. I have followed the RFN=
oC Workshop 4 tutorial and successfully built my own custom gain block as w=
ell as implemented and FFT from existing blocks using the &quot;Getting Sta=
rted with RFNoC&quot; document online.</div><div><br></div><div>I am now at=
tempting to get Fosphor up and running on my X310 to further understand bit=
stream generation from YAML files. At one point I believe there was an exam=
ple bitstream that had the correct Fosphor configuration I don&#39;t see it=
 in the build of UHD I have.</div><div><br></div><div>I&#39;ve attached my =
.yml file and a copy of my GRC flow graph. <br></div><div>Below is the erro=
r message I&#39;m receiving.</div><div><br></div><div>[INFO] [UHD] linux; G=
NU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-1-gcf570707<br>[INFO] [X300=
] X300 initialization sequence...<br>[INFO] [X300] Maximum frame size: 1472=
 bytes.<br>[INFO] [GPS] No GPSDO found<br>[INFO] [X300] Radio 1x clock: 200=
 MHz<br>[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0=
xfd7d809a, 0xffff<br>[WARNING] [0/Radio#0] Setting RX IQ Balance is not pos=
sible on this device.<br>gr::log :DEBUG: rfnoc_rx_streamer0 - Committing gr=
aph...<br>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.=
<br>gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...<br>gr::log :DE=
BUG: rfnoc_rx_streamer1 - Sending start stream command...<br>gr::log :DEBUG=
: rfnoc_rx_streamer0 - Sending start stream command...<br><br>&gt;&gt;&gt; =
Done (return code -11)</div><div><br></div><div>More resources of this type=
 of development would be welcome as well.<br></div><div><br></div><div>Many=
 Thanks,</div><div>Ben Wilson<br></div><div><br></div><div><br></div></div>=
</blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000edca0c05b34c9274--


--===============3647218608740114051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3647218608740114051==--

