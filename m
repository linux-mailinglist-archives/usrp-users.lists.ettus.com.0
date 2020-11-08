Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 683EF2AAE65
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 00:58:24 +0100 (CET)
Received: from [::1] (port=49328 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kbuZi-0003xR-O8; Sun, 08 Nov 2020 18:58:22 -0500
Received: from mail-vk1-f179.google.com ([209.85.221.179]:38896)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kbuZf-0003rK-4y
 for usrp-users@lists.ettus.com; Sun, 08 Nov 2020 18:58:19 -0500
Received: by mail-vk1-f179.google.com with SMTP id o73so1516600vka.5
 for <usrp-users@lists.ettus.com>; Sun, 08 Nov 2020 15:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LYshkQ5Y/CCY08xzX45KjbyTsuNDg9l7B5t7+rlQUcw=;
 b=a21Ai3mz3IOQKS2efpCFCVqZuPHr30gCnYrP50eMUNI5/YnGG+GOkcQhn/3Grw3oCp
 aJFYJkG9f7VCnw4FWaAH39IzNhLdh7auWGvIJZ8PaaZhKi38R37+KurcjSzS8X8HI+Cs
 MUgYxBnbtD448XfnUvbmpy+BH+lJbnAmHXyNoKZ7tCT4zyMJfaJ3ERt3hd0PK41WwShb
 QvMGkC1h530qkv8PAhk6Y6qNjPOAJV94egaHOkm1Mz4sEc7t3X7OUCgj5h+w1xN97Wpb
 KrYbgkRFVqktY4iNsbxkKoiiwAaEkmvojDwPtbGCEcL8LDj6B48jBPsaKW4z5ExeHk0c
 5WsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LYshkQ5Y/CCY08xzX45KjbyTsuNDg9l7B5t7+rlQUcw=;
 b=fg7aGikC+ZE8BHMuT8oVFGOY1C0p+LP1i2kbMatugceUyxr1Qqufu2NOs8fseC68VS
 2znoo0kORJqct8tkWVjTB/2mGDbje54ofBVQHGDym/9fRzO+6BXRUwAlJBsohyA5Tlrm
 htbwiDZ+paoSYN6HQ5Y0f8F0l5xsmZ0ORlFmB55xGQZ/yeD8RLIkGoCxxx4mLUEgsetn
 mMx5m2d8CL8I1nOyW7ou0/dU+ZxfLA9vUF7UV3ZlsOsnJoADlGj0NAk7w+XhgDO9K6j6
 MuLmSnbEcZdRD8InJN+b7di7ZNRVSY7pzDxOrTyb2jIuBZVa7A/Lc4W2YuWrAp2DOl1m
 Jrxg==
X-Gm-Message-State: AOAM531gQtl4t8dpCnVHsg4WoAAJxvSxhpOCA/QNybW5L3uO45Gd9pAL
 GjdDdmRg10uwkpRxrkeqQK0mJd9v4km0t02cpuqZWPDS
X-Google-Smtp-Source: ABdhPJz7RaYKU2+84AbwajJymbL+oBEh8UdlXvoSkQmmmQBVB6RrIC3E6f4+9HcEnD6LWE37kNCsccFdZt7MgurUNc8=
X-Received: by 2002:a1f:9682:: with SMTP id y124mr5804318vkd.6.1604879858468; 
 Sun, 08 Nov 2020 15:57:38 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
 <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
 <CAGJu-namsauwtchamfjn_wS=uGwFkx8i4sRaHH3AWk0G=JkLLA@mail.gmail.com>
 <CAL7q81uRieZtRCSur8X5GiLjYtMBRsxmDFYQwQwEMF_U_6yGMw@mail.gmail.com>
 <CAGJu-nb25ZtS+DfkT4=N16e3vyWC8vXD4uvtCQN6t6gPhowy3Q@mail.gmail.com>
In-Reply-To: <CAGJu-nb25ZtS+DfkT4=N16e3vyWC8vXD4uvtCQN6t6gPhowy3Q@mail.gmail.com>
Date: Sun, 8 Nov 2020 18:57:02 -0500
Message-ID: <CAL7q81uWuk_oHTfNnrxOBF8qKSZQiGjERh6TALZaAYqNTvAiuA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4696285638575022029=="
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

--===============4696285638575022029==
Content-Type: multipart/alternative; boundary="000000000000df21bc05b3a135cc"

--000000000000df21bc05b3a135cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

Can you try rebuilding gr-ettus with the cmake flag
"-DCMAKE_BUILD_TYPE=3DDebug" and see if the issue goes away?

Jonathon

On Fri, Nov 6, 2020 at 8:57 AM Robert Wilson <robertbenwilson0@gmail.com>
wrote:

>   Hi Jonathon,
>
> I've reduced both with no change.
>
> Ben
>
> On Wed, Nov 4, 2020 at 1:59 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Robert,
>>
>> Try using the maximum MTU size supported. Also, try reducing the FFT siz=
e
>> and SPP to 512.
>>
>> Jonathon
>>
>> On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson <robertbenwilson0@gmail.com=
>
>> wrote:
>>
>>> My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=99s max MT=
U is 6144
>>> bytes. I=E2=80=99ve changed MTU to the max with no change in gnuRadio r=
esponse. Is
>>> the 6144 bytes not enough?
>>>
>>> On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hi Ben,
>>>>
>>>> Try setting your NIC's MTU to 9000.
>>>>
>>>> Jonathon
>>>>
>>>> On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> OS: Linux Ubuntu 20.04.1 LTS
>>>>> GRC: 3.8
>>>>> UHD: 4.0
>>>>> USRP:X310 (HG)
>>>>>
>>>>> I have been looking at RFNoC only for a few weeks. I have followed th=
e
>>>>> RFNoC Workshop 4 tutorial and successfully built my own custom gain b=
lock
>>>>> as well as implemented and FFT from existing blocks using the "Gettin=
g
>>>>> Started with RFNoC" document online.
>>>>>
>>>>> I am now attempting to get Fosphor up and running on my X310 to
>>>>> further understand bitstream generation from YAML files. At one point=
 I
>>>>> believe there was an example bitstream that had the correct Fosphor
>>>>> configuration I don't see it in the build of UHD I have.
>>>>>
>>>>> I've attached my .yml file and a copy of my GRC flow graph.
>>>>> Below is the error message I'm receiving.
>>>>>
>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>>> UHD_4.0.0.0-1-gcf570707
>>>>> [INFO] [X300] X300 initialization sequence...
>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>> [INFO] [GPS] No GPSDO found
>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>>> 0xfd7d809a, 0xffff
>>>>> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this
>>>>> device.
>>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>>>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
>>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...
>>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>>>>>
>>>>> >>> Done (return code -11)
>>>>>
>>>>> More resources of this type of development would be welcome as well.
>>>>>
>>>>> Many Thanks,
>>>>> Ben Wilson
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>

--000000000000df21bc05b3a135cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>Can you try rebuilding gr-et=
tus with the cmake flag &quot;-DCMAKE_BUILD_TYPE=3DDebug&quot; and see if t=
he issue goes away?<br></div><div><br></div><div>Jonathon</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov =
6, 2020 at 8:57 AM Robert Wilson &lt;<a href=3D"mailto:robertbenwilson0@gma=
il.com">robertbenwilson0@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=C2=A0 Hi Jonathon,<div>=
<br></div><div>I&#39;ve reduced both with no change.=C2=A0</div><div><br></=
div><div>Ben</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Nov 4, 2020 at 1:59 PM Jonathon Pendlum &lt;<a hr=
ef=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum=
@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Robert,<div><br></div><div>Try using the max=
imum MTU size supported. Also, try reducing the FFT size and SPP to 512.</d=
iv><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, 2020 at 8:45 AM Robert =
Wilson &lt;<a href=3D"mailto:robertbenwilson0@gmail.com" target=3D"_blank">=
robertbenwilson0@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"auto">My Ethernet Controller is a Qua=
lcomm Atheros AR8151 it=E2=80=99s max MTU is 6144 bytes. I=E2=80=99ve chang=
ed MTU to the max with no change in gnuRadio response. Is the 6144 bytes no=
t enough?=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum &lt;<a =
href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendl=
um@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hi Ben,<div><br></div><div>Try setting your NI=
C&#39;s MTU to 9000.</div><div><br></div><div>Jonathon</div></div><br><div =
class=3D"gmail_quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div></div><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"></blockquote></div><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>OS: Linux Ubuntu 20.=
04.1 LTS<br></div><div>GRC: 3.8</div><div>UHD: 4.0</div><div>USRP:X310 (HG)=
<br></div><div><br></div><div>I have been looking at RFNoC only for a few w=
eeks. I have followed the RFNoC Workshop 4 tutorial and successfully built =
my own custom gain block as well as implemented and FFT from existing block=
s using the &quot;Getting Started with RFNoC&quot; document online.</div><d=
iv><br></div><div>I am now attempting to get Fosphor up and running on my X=
310 to further understand bitstream generation from YAML files. At one poin=
t I believe there was an example bitstream that had the correct Fosphor con=
figuration I don&#39;t see it in the build of UHD I have.</div><div><br></d=
iv><div>I&#39;ve attached my .yml file and a copy of my GRC flow graph. <br=
></div><div>Below is the error message I&#39;m receiving.</div><div><br></d=
iv><div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.=
0-1-gcf570707<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X=
300] Maximum frame size: 1472 bytes.<br>[INFO] [GPS] No GPSDO found<br>[INF=
O] [X300] Radio 1x clock: 200 MHz<br>[WARNING] [RFNOC::BLOCK_FACTORY] Could=
 not find block with Noc-ID 0xfd7d809a, 0xffff<br>[WARNING] [0/Radio#0] Set=
ting RX IQ Balance is not possible on this device.<br>gr::log :DEBUG: rfnoc=
_rx_streamer0 - Committing graph...<br>[WARNING] [0/Radio#0] Attempting to =
set tick rate to 0. Skipping.<br>gr::log :DEBUG: rfnoc_rx_streamer1 - Commi=
tting graph...<br>gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream=
 command...<br>gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream co=
mmand...<br><br>&gt;&gt;&gt; Done (return code -11)</div><div><br></div><di=
v>More resources of this type of development would be welcome as well.<br><=
/div><div><br></div><div>Many Thanks,</div><div>Ben Wilson<br></div><div><b=
r></div><div><br></div></div></blockquote></div><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
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

--000000000000df21bc05b3a135cc--


--===============4696285638575022029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4696285638575022029==--

