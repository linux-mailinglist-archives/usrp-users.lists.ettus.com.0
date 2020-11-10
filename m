Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A532ACBAC
	for <lists+usrp-users@lfdr.de>; Tue, 10 Nov 2020 04:27:41 +0100 (CET)
Received: from [::1] (port=60520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcKJk-0002Qm-Mt; Mon, 09 Nov 2020 22:27:36 -0500
Received: from mail-vs1-f47.google.com ([209.85.217.47]:37317)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kcKJh-0002KH-9C
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 22:27:33 -0500
Received: by mail-vs1-f47.google.com with SMTP id l22so6247617vsa.4
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 19:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HTZHCOPMu14WlaloXd6Qimi9eKDBcB/FBsTqub6vOq0=;
 b=l9dzwgdozQWaHfvY3pOpNS1MvgA6cm1Rf8dr0k2rQJiRx1rAAhKexZq1YsV5fwxd7h
 erBp0fTHARsRUk7FgsBaQLZF60/GtxajesPdzQx4/1D4XN9Jj719rCiWIGfVH5NKDBnn
 oRqsM6AJmr+mL7J64oqqtOIQNO0PcwNvGlPVLakTqtr7C8BrW2kz9GGLf05tyMGvardV
 jemjpJLKiGVi7BnQkniEkqF95KRdcypkDB/Rcj1fzGYNT2+2Q8tWrwn8Viq+mmfSbeVf
 2585ZzItcmtocjR15sAha19aDovJ01Q5neoF2rPmyjwA2NbB7S4CvBZigBGEL16NvjJ1
 SW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HTZHCOPMu14WlaloXd6Qimi9eKDBcB/FBsTqub6vOq0=;
 b=NwMJCO58Zts5bAY0Qj+Hzyr8Csvq9DpPxLFFOYhn9V1SudtMQX7jleDtulGBAbVFvw
 B+Q+q9ty3jj4xnV4DaK8ba+KiF9N7YMR7uIQHDc7t8U6wfK8C76CHDPIpcTtOT7PiD10
 RJwODc8G/nzXPryjhqqcq4z7l9vw3zm10SvmR621xj3jy1MDErch8wvWRNqqTSw/PPk5
 TewTqY8g1W95uK1ruGr16JaXdZhQQKqikicePkEdzRh9vLDb1XHF+lzfLdIYiaPSXJyn
 GAV00CNKnMOCMTke0IF6RCF1mZUtVOkxidxlDokS/Hm7IEu7IblTaYcdrzJpKy+ZPndD
 3+Rw==
X-Gm-Message-State: AOAM531rQJQVmzO8Ll+qhrTaXxPJHo3SNOz6Sp/CxbHXhrOzFJ8fTIPf
 lgv70IsAhv9qh3wNwRekaY3JBIwZTunCh+eVNAkRWo3b
X-Google-Smtp-Source: ABdhPJwdTtGrE4VjFv2KKYXDTK5jEiy97cFArRFqMamCGadNv4hA+Fzi0guxtDzPybRLqxhQxrp2nl9aTl88zjVoQPY=
X-Received: by 2002:a67:73c1:: with SMTP id o184mr9733660vsc.18.1604978812580; 
 Mon, 09 Nov 2020 19:26:52 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
 <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
 <CAGJu-namsauwtchamfjn_wS=uGwFkx8i4sRaHH3AWk0G=JkLLA@mail.gmail.com>
 <CAL7q81uRieZtRCSur8X5GiLjYtMBRsxmDFYQwQwEMF_U_6yGMw@mail.gmail.com>
 <CAGJu-nb25ZtS+DfkT4=N16e3vyWC8vXD4uvtCQN6t6gPhowy3Q@mail.gmail.com>
 <CAL7q81uWuk_oHTfNnrxOBF8qKSZQiGjERh6TALZaAYqNTvAiuA@mail.gmail.com>
 <CAGJu-nZ6KQ_ws=K-p5m4TzG13LdfVRaM45qxO-9Bq8D2cqFKjQ@mail.gmail.com>
In-Reply-To: <CAGJu-nZ6KQ_ws=K-p5m4TzG13LdfVRaM45qxO-9Bq8D2cqFKjQ@mail.gmail.com>
Date: Mon, 9 Nov 2020 22:26:16 -0500
Message-ID: <CAL7q81sZ74OBnsqLr+F7GacvYRsHY5n0RhvuL_KxOLA5bu_hUA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6306808565420243299=="
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

--===============6306808565420243299==
Content-Type: multipart/alternative; boundary="000000000000ff12d105b3b83fef"

--000000000000ff12d105b3b83fef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

Also use the "-DENABLE_QT=3DTrue" flag to build gr-ettus.

Jonathon

On Mon, Nov 9, 2020 at 9:43 AM Robert Wilson <robertbenwilson0@gmail.com>
wrote:

> Hi Jonathon,
>
> I=E2=80=99ve gone ahead and given that a shot. I received a different mes=
sage now:
>
> File =E2=80=9C.../RFNoC.py=E2=80=9D , line 164, in_init_
>   self.ettus_fosphor_display_0=3Dettus.fosphor_display(512, 64, 512)
>
> AttributeError:module =E2=80=98ettus=E2=80=99 has no attribute =E2=80=98f=
osphor_display=E2=80=99
>
> >>>Done (return code 1)
>
> Thanks,
> Ben
>
>
>
>
> On Sun, Nov 8, 2020 at 6:57 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Robert,
>>
>> Can you try rebuilding gr-ettus with the cmake flag
>> "-DCMAKE_BUILD_TYPE=3DDebug" and see if the issue goes away?
>>
>>
>> Jonathon
>>
>> On Fri, Nov 6, 2020 at 8:57 AM Robert Wilson <robertbenwilson0@gmail.com=
>
>> wrote:
>>
>>>   Hi Jonathon,
>>>
>>> I've reduced both with no change.
>>>
>>> Ben
>>>
>>> On Wed, Nov 4, 2020 at 1:59 PM Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hi Robert,
>>>>
>>>> Try using the maximum MTU size supported. Also, try reducing the FFT
>>>> size and SPP to 512.
>>>>
>>>> Jonathon
>>>>
>>>> On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson <
>>>> robertbenwilson0@gmail.com> wrote:
>>>>
>>>>> My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=99s max =
MTU is
>>>>> 6144 bytes. I=E2=80=99ve changed MTU to the max with no change in gnu=
Radio
>>>>> response. Is the 6144 bytes not enough?
>>>>>
>>>>> On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum <
>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>
>>>>>> Hi Ben,
>>>>>>
>>>>>> Try setting your NIC's MTU to 9000.
>>>>>>
>>>>>> Jonathon
>>>>>>
>>>>>> On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users <
>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>
>>>>>>> Hello,
>>>>>>>
>>>>>>> OS: Linux Ubuntu 20.04.1 LTS
>>>>>>> GRC: 3.8
>>>>>>> UHD: 4.0
>>>>>>> USRP:X310 (HG)
>>>>>>>
>>>>>>> I have been looking at RFNoC only for a few weeks. I have followed
>>>>>>> the RFNoC Workshop 4 tutorial and successfully built my own custom =
gain
>>>>>>> block as well as implemented and FFT from existing blocks using the
>>>>>>> "Getting Started with RFNoC" document online.
>>>>>>>
>>>>>>> I am now attempting to get Fosphor up and running on my X310 to
>>>>>>> further understand bitstream generation from YAML files. At one poi=
nt I
>>>>>>> believe there was an example bitstream that had the correct Fosphor
>>>>>>> configuration I don't see it in the build of UHD I have.
>>>>>>>
>>>>>>> I've attached my .yml file and a copy of my GRC flow graph.
>>>>>>> Below is the error message I'm receiving.
>>>>>>>
>>>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>>>>> UHD_4.0.0.0-1-gcf570707
>>>>>>> [INFO] [X300] X300 initialization sequence...
>>>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>>>> [INFO] [GPS] No GPSDO found
>>>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>>>>> 0xfd7d809a, 0xffff
>>>>>>> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this
>>>>>>> device.
>>>>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>>>>>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
>>>>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command..=
.
>>>>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command..=
.
>>>>>>>
>>>>>>> >>> Done (return code -11)
>>>>>>>
>>>>>>> More resources of this type of development would be welcome as well=
.
>>>>>>>
>>>>>>> Many Thanks,
>>>>>>> Ben Wilson
>>>>>>>
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>>

--000000000000ff12d105b3b83fef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>Also use the &quot;-DENABLE_=
QT=3DTrue&quot; flag to build gr-ettus.</div><div><br></div><div>Jonathon</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Nov 9, 2020 at 9:43 AM Robert Wilson &lt;<a href=3D"mailto:robe=
rtbenwilson0@gmail.com">robertbenwilson0@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi Jona=
thon,</div><div dir=3D"auto"><br></div><div dir=3D"auto">I=E2=80=99ve gone =
ahead and given that a shot. I received a different message now:</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">File =E2=80=9C.../RFNoC.py=E2=80=
=9D , line 164, in_init_</div><div dir=3D"auto">=C2=A0 self.ettus_fosphor_d=
isplay_0=3Dettus.fosphor_display(512, 64, 512)</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">AttributeError:module =E2=80=98ettus=E2=80=99 has no=
 attribute =E2=80=98fosphor_display=E2=80=99</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">&gt;&gt;&gt;Done (return code 1)=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Ben=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Sun, Nov 8, 2020 at 6:57 PM Jonathon Pendlum &lt;<a h=
ref=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlu=
m@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Robert,<div><br></div><div>Can you try rebui=
lding gr-ettus with the cmake flag &quot;-DCMAKE_BUILD_TYPE=3DDebug&quot; a=
nd see if the issue goes away?</div></div><div dir=3D"ltr"><div><br></div><=
div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 6, 2020 at 8:57 AM Robert Wils=
on &lt;<a href=3D"mailto:robertbenwilson0@gmail.com" target=3D"_blank">robe=
rtbenwilson0@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">=C2=A0 Hi Jonathon,<div><br></div><d=
iv>I&#39;ve reduced both with no change.=C2=A0</div><div><br></div><div>Ben=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Nov 4, 2020 at 1:59 PM Jonathon Pendlum &lt;<a href=3D"mailto=
:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hi Robert,<div><br></div><div>Try using the maximum MTU size=
 supported. Also, try reducing the FFT size and SPP to 512.</div><div><br><=
/div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson &lt;<a=
 href=3D"mailto:robertbenwilson0@gmail.com" target=3D"_blank">robertbenwils=
on0@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"auto">My Ethernet Controller is a Qualcomm Atheros=
 AR8151 it=E2=80=99s max MTU is 6144 bytes. I=E2=80=99ve changed MTU to the=
 max with no change in gnuRadio response. Is the 6144 bytes not enough?=C2=
=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum &lt;<a href=3D"mail=
to:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hi Ben,<div><br></div><div>Try setting your NIC&#39;s MTU =
to 9000.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gma=
il_quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"></blockquote></div><div class=3D=
"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hello,</div><div><br></div><div>OS: Linux Ubuntu 20.04.1 LTS<br>=
</div><div>GRC: 3.8</div><div>UHD: 4.0</div><div>USRP:X310 (HG)<br></div><d=
iv><br></div><div>I have been looking at RFNoC only for a few weeks. I have=
 followed the RFNoC Workshop 4 tutorial and successfully built my own custo=
m gain block as well as implemented and FFT from existing blocks using the =
&quot;Getting Started with RFNoC&quot; document online.</div><div><br></div=
><div>I am now attempting to get Fosphor up and running on my X310 to furth=
er understand bitstream generation from YAML files. At one point I believe =
there was an example bitstream that had the correct Fosphor configuration I=
 don&#39;t see it in the build of UHD I have.</div><div><br></div><div>I&#3=
9;ve attached my .yml file and a copy of my GRC flow graph. <br></div><div>=
Below is the error message I&#39;m receiving.</div><div><br></div><div>[INF=
O] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-1-gcf57070=
7<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum=
 frame size: 1472 bytes.<br>[INFO] [GPS] No GPSDO found<br>[INFO] [X300] Ra=
dio 1x clock: 200 MHz<br>[WARNING] [RFNOC::BLOCK_FACTORY] Could not find bl=
ock with Noc-ID 0xfd7d809a, 0xffff<br>[WARNING] [0/Radio#0] Setting RX IQ B=
alance is not possible on this device.<br>gr::log :DEBUG: rfnoc_rx_streamer=
0 - Committing graph...<br>[WARNING] [0/Radio#0] Attempting to set tick rat=
e to 0. Skipping.<br>gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph.=
..<br>gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...<=
br>gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...<br>=
<br>&gt;&gt;&gt; Done (return code -11)</div><div><br></div><div>More resou=
rces of this type of development would be welcome as well.<br></div><div><b=
r></div><div>Many Thanks,</div><div>Ben Wilson<br></div><div><br></div><div=
><br></div></div></blockquote></div><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
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
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000ff12d105b3b83fef--


--===============6306808565420243299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6306808565420243299==--

