Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B16B62A9749
	for <lists+usrp-users@lfdr.de>; Fri,  6 Nov 2020 14:58:05 +0100 (CET)
Received: from [::1] (port=56064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kb2Fc-0002S2-TV; Fri, 06 Nov 2020 08:58:00 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:42172)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <robertbenwilson0@gmail.com>)
 id 1kb2FY-0002MT-Q1
 for usrp-users@lists.ettus.com; Fri, 06 Nov 2020 08:57:56 -0500
Received: by mail-oi1-f171.google.com with SMTP id w145so1383902oie.9
 for <usrp-users@lists.ettus.com>; Fri, 06 Nov 2020 05:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gMh4GIT7SFif5OYA0AMP65mokcNSaCCQSbRpOu0A/8k=;
 b=Yhdg0RYCCLHdSjhiU8kDBacKVVzz3aMdqa7Ps5Ib+fuGKTB+75QBVMToK/hdzWDgDq
 S2BTTu8O6QGlcsAr9HasQLjbGUdPrcUKMi6SWozX8Tl/E6TYB33AjsWiPGqyNwKDNLBd
 FJ8Yzun3tWiqviv25MqtUiF5NXRXEQyNovCkWxSi5+OunKylfHVFYJLZuFCeVIzrEODA
 JPd6uSDPCNTsHA+t54sJxpyEoTsaEAKD/l4FoAyci0Lg1FdWHodfEiJIxgprmLy8tFtl
 hPo4HhThnInCSzsSt72QXuUhRHzSlEMoL0/XBXneMPLimNQIaYZpm4+sEKv5WCazUUOl
 RjUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gMh4GIT7SFif5OYA0AMP65mokcNSaCCQSbRpOu0A/8k=;
 b=N6P3TJMT9yEpTOn94j4yZwbVRpqUS3mWGxJJaoMxipYK45NtV6gOnhvN8o2BxWlgiL
 yqXBFF+B1YavmNTZUVMLbknP4dTfWp2suHprsLkAtDcN2+aiY7XHtKx3zYPTWLVdkbQp
 p217yJeGAau2AAvrTuIxRPtfIFgoohJeO+cJi2FHNtDS/hwSJuTovAbhBAAbMZdK9v4Y
 ouwFv9KNUBt8x3I7/xRiB7IGko1CYCy63CibKAwk9KADmQE1W/AhuuiruKzZHK53eOiN
 iEGiARDRSF0VSWNoBaNEItF/pNK/wbnMZlEvoTtVJMEEtiEduTsJn43RW1C/S9Q+ortv
 Le+g==
X-Gm-Message-State: AOAM530MWYYVG7W8z1g6evE9Y+n0RZxuyIhkNZ0vkkTxYxRpykQvH/Uq
 ysjB4Hha3IPKDZU1LcOqk7m72lr9c4dAOzSxLPg=
X-Google-Smtp-Source: ABdhPJzKQkXcm1E5WFqURjvFSFTZUwpiWciovh8smqcOoePMSB44/1MVAiY89h3+yhk9vA0E3dmhphLy4smpxppltgQ=
X-Received: by 2002:aca:cc08:: with SMTP id c8mr1090587oig.161.1604671035899; 
 Fri, 06 Nov 2020 05:57:15 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
 <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
 <CAGJu-namsauwtchamfjn_wS=uGwFkx8i4sRaHH3AWk0G=JkLLA@mail.gmail.com>
 <CAL7q81uRieZtRCSur8X5GiLjYtMBRsxmDFYQwQwEMF_U_6yGMw@mail.gmail.com>
In-Reply-To: <CAL7q81uRieZtRCSur8X5GiLjYtMBRsxmDFYQwQwEMF_U_6yGMw@mail.gmail.com>
Date: Fri, 6 Nov 2020 08:57:04 -0500
Message-ID: <CAGJu-nb25ZtS+DfkT4=N16e3vyWC8vXD4uvtCQN6t6gPhowy3Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1633662643907863539=="
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

--===============1633662643907863539==
Content-Type: multipart/alternative; boundary="00000000000013848005b37097fc"

--00000000000013848005b37097fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

  Hi Jonathon,

I've reduced both with no change.

Ben

On Wed, Nov 4, 2020 at 1:59 PM Jonathon Pendlum <jonathon.pendlum@ettus.com=
>
wrote:

> Hi Robert,
>
> Try using the maximum MTU size supported. Also, try reducing the FFT size
> and SPP to 512.
>
> Jonathon
>
> On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson <robertbenwilson0@gmail.com>
> wrote:
>
>> My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=99s max MTU=
 is 6144
>> bytes. I=E2=80=99ve changed MTU to the max with no change in gnuRadio re=
sponse. Is
>> the 6144 bytes not enough?
>>
>> On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hi Ben,
>>>
>>> Try setting your NIC's MTU to 9000.
>>>
>>> Jonathon
>>>
>>> On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hello,
>>>>
>>>> OS: Linux Ubuntu 20.04.1 LTS
>>>> GRC: 3.8
>>>> UHD: 4.0
>>>> USRP:X310 (HG)
>>>>
>>>> I have been looking at RFNoC only for a few weeks. I have followed the
>>>> RFNoC Workshop 4 tutorial and successfully built my own custom gain bl=
ock
>>>> as well as implemented and FFT from existing blocks using the "Getting
>>>> Started with RFNoC" document online.
>>>>
>>>> I am now attempting to get Fosphor up and running on my X310 to furthe=
r
>>>> understand bitstream generation from YAML files. At one point I believ=
e
>>>> there was an example bitstream that had the correct Fosphor configurat=
ion I
>>>> don't see it in the build of UHD I have.
>>>>
>>>> I've attached my .yml file and a copy of my GRC flow graph.
>>>> Below is the error message I'm receiving.
>>>>
>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>> UHD_4.0.0.0-1-gcf570707
>>>> [INFO] [X300] X300 initialization sequence...
>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>> [INFO] [GPS] No GPSDO found
>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>> 0xfd7d809a, 0xffff
>>>> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this
>>>> device.
>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...
>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>>>>
>>>> >>> Done (return code -11)
>>>>
>>>> More resources of this type of development would be welcome as well.
>>>>
>>>> Many Thanks,
>>>> Ben Wilson
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--00000000000013848005b37097fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 Hi Jonathon,<div><br></div><div>I&#39;ve reduced bo=
th with no change.=C2=A0</div><div><br></div><div>Ben</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, 2=
020 at 1:59 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettu=
s.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Robert,<div><br></div>=
<div>Try using the maximum MTU size supported. Also, try reducing the FFT s=
ize and SPP to 512.</div><div><br></div><div>Jonathon</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, 2=
020 at 8:45 AM Robert Wilson &lt;<a href=3D"mailto:robertbenwilson0@gmail.c=
om" target=3D"_blank">robertbenwilson0@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">My Ethern=
et Controller is a Qualcomm Atheros AR8151 it=E2=80=99s max MTU is 6144 byt=
es. I=E2=80=99ve changed MTU to the max with no change in gnuRadio response=
. Is the 6144 bytes not enough?=C2=A0</div><div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 3, 2020 at 9:32 PM Jo=
nathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"=
_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Ben,<div><br></div><d=
iv>Try setting your NIC&#39;s MTU to 9000.</div><div><br></div><div>Jonatho=
n</div></div><br><div class=3D"gmail_quote"></div><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 2, 2020 at 6:55 AM Robe=
rt Wilson via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div></div>=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><di=
v>OS: Linux Ubuntu 20.04.1 LTS<br></div><div>GRC: 3.8</div><div>UHD: 4.0</d=
iv><div>USRP:X310 (HG)<br></div><div><br></div><div>I have been looking at =
RFNoC only for a few weeks. I have followed the RFNoC Workshop 4 tutorial a=
nd successfully built my own custom gain block as well as implemented and F=
FT from existing blocks using the &quot;Getting Started with RFNoC&quot; do=
cument online.</div><div><br></div><div>I am now attempting to get Fosphor =
up and running on my X310 to further understand bitstream generation from Y=
AML files. At one point I believe there was an example bitstream that had t=
he correct Fosphor configuration I don&#39;t see it in the build of UHD I h=
ave.</div><div><br></div><div>I&#39;ve attached my .yml file and a copy of =
my GRC flow graph. <br></div><div>Below is the error message I&#39;m receiv=
ing.</div><div><br></div><div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Bo=
ost_107100; UHD_4.0.0.0-1-gcf570707<br>[INFO] [X300] X300 initialization se=
quence...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [GPS] =
No GPSDO found<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[WARNING] [RFNOC=
::BLOCK_FACTORY] Could not find block with Noc-ID 0xfd7d809a, 0xffff<br>[WA=
RNING] [0/Radio#0] Setting RX IQ Balance is not possible on this device.<br=
>gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...<br>[WARNING] [0/R=
adio#0] Attempting to set tick rate to 0. Skipping.<br>gr::log :DEBUG: rfno=
c_rx_streamer1 - Committing graph...<br>gr::log :DEBUG: rfnoc_rx_streamer1 =
- Sending start stream command...<br>gr::log :DEBUG: rfnoc_rx_streamer0 - S=
ending start stream command...<br><br>&gt;&gt;&gt; Done (return code -11)</=
div><div><br></div><div>More resources of this type of development would be=
 welcome as well.<br></div><div><br></div><div>Many Thanks,</div><div>Ben W=
ilson<br></div><div><br></div><div><br></div></div></blockquote></div><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
</blockquote></div>

--00000000000013848005b37097fc--


--===============1633662643907863539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1633662643907863539==--

