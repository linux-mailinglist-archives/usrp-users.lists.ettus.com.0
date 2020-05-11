Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0A61CE500
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 22:05:21 +0200 (CEST)
Received: from [::1] (port=38416 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jYEfs-0003gP-L2; Mon, 11 May 2020 16:05:16 -0400
Received: from mail-il1-f180.google.com ([209.85.166.180]:41713)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jYEfo-0003bg-Mk
 for usrp-users@lists.ettus.com; Mon, 11 May 2020 16:05:12 -0400
Received: by mail-il1-f180.google.com with SMTP id b71so3083854ilg.8
 for <usrp-users@lists.ettus.com>; Mon, 11 May 2020 13:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=IDoTVG1MqbRXky6ply+c4MfZtMVUUPmE8sOQXGRtLsw=;
 b=C1TWsyGKBEaB13a+bmxCUN1XLCFgb4goH8cg0wffKg9Qh0lZREz1G15osfErjYBBDV
 07VkeT3tuK0+JXWP4cRy6dLGnj5HjzGw2ah6p2LFhVjwUFKet/9tsMHXT7D5MrT7oubt
 XtzorQs7BSXTGo0JuhsxJ4y8aEfSJrhV8pLlLmqOCu16MNCwf4cpCU7lfK2mBSGvEMZp
 hc/P6QEHWvoowvuqe42uQUNq2j7HHw5xfji3//J5xAQht1VAZp9Axwwxw0cfJ9QNNND9
 Ozw/+Diirm+H7BXz91g8UIX6WFGfrf9FyND5rUqQpObocDjSUQsmOEDsRlsu7eCgkup6
 g+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=IDoTVG1MqbRXky6ply+c4MfZtMVUUPmE8sOQXGRtLsw=;
 b=l1g3dI6N8D2+Kk7O5qIMg+Q7lEzM79Eeyn2stN8wI/AT5evXCTzviYNU5/0ubOrJRH
 NrClFJc8b93ajIqLVESBukS70zBorVkQ3XgzT2rP5qMBXaeshnoGe2I/TsBzJr8PLX8h
 yM6WTtCNJqbYSpynE6ZZ3T05giyQnAR9uMuZT73WnHELLMcEcPH6yB99DT3sMM8mAUIp
 RR12eP6fA0cQqIWUa9zAkR3PFoPktKNPrIo1JJmqRdLLoEcsZCp6CQFsetbD8CYUhHpF
 fTwxm9CaIX/1pGlCA3FksF0ktWGsSIEqDVPPjhyxx16A0GGeT8wfa4IErYoRR4IWMXUk
 qP2A==
X-Gm-Message-State: AGi0PuaDUO8arbkcigv6bQbn39bmEq6RWl/2fyfgbOp2+I0wCWqUSwo6
 KXDurjdCFoIIU2I9cw9jZjQsH3qMU4BvhbT5Tbc=
X-Google-Smtp-Source: APiQypLKHPPYbHXwEvNH1pgx6zjGaIleajWserfn79+T2mwDx5RGcpze2rN9izogbxtphmaS4+oOtpHzOqiqtct3N+Y=
X-Received: by 2002:a92:c794:: with SMTP id c20mr18424105ilk.273.1589227472002; 
 Mon, 11 May 2020 13:04:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
 <CAGNhwTP+9VjAP=NphtoFcJmNn7wd5Rhd3N7z5K1ugtMa+94FUg@mail.gmail.com>
 <CAB__hTRZbQAuzbnJ1vQX8ZszRpzqnUhO_ozu0nTOPzrkQ=PP0w@mail.gmail.com>
 <CAGNhwTOMH8Ef3pCu2pHc=Ww9ENaoHCUY6Dz0KJ76cd9kL-H1xQ@mail.gmail.com>
 <CAPRRyxvAx3TMtG5fKR2A8-3NGsPd3=rZtSdcdqu8511=+KeB_Q@mail.gmail.com>
 <CAGNhwTNkb83rHpm1M_CEg7sGUsKGCCFuJB_pmcmr37mKdCQDog@mail.gmail.com>
 <CAGNhwTNMCsuDz+F9Fz7T9fUajZRFdiHsb3BHXAeUog8euJhHHg@mail.gmail.com>
 <CAPRRyxunP3AgM8to5+2+TZwGKbnHF+aGCDY5cSyTFNqoL-uFMw@mail.gmail.com>
 <CAPRRyxtmvU49W+o=4nj7fu4WnQqAA0iO5BLna3k3q1sNDqpjJg@mail.gmail.com>
 <CAGNhwTOfEBucVzCdiiDn=QZ8mB3Ai2fpjOwdAPp+swHBA_e1=w@mail.gmail.com>
 <CAPRRyxuS3koZmDs9xJzSWucEh5f8cUmMyasmMWxUk_Fd54Jqog@mail.gmail.com>
 <CAGNhwTPXARzTDuK62svyCFTWEuLgHR7++NCLShN_0ETeLnfncg@mail.gmail.com>
 <CAPRRyxuo9DHim39xS3kjPNebAp=nis=WoVcp_U9eLW6x0a44_A@mail.gmail.com>
 <CAGNhwTM1ST1FW56g2f-ANhARO+dRuD4aDe2+idq2a+3OEAtDgA@mail.gmail.com>
 <CAPRRyxvY74O2=S3s+4ZOEMozxNjPjeJJ84n7_uru8dA54LXTFw@mail.gmail.com>
 <CAGNhwTMyDTgddZDvvn9bi6Y6MRso35EcOfpJQmAyMXT+v4uv5Q@mail.gmail.com>
 <CAPRRyxvn-mgLc3vKk7oweTW+xYM=G0Echb3PSDMST2DpObFdFw@mail.gmail.com>
 <CAGNhwTP_-Dg1E7+jz3mSaPLAQw6+qyS=mrci7YHn0uRcV_ic5w@mail.gmail.com>
 <CAPRRyxu59KHOjNAjHhoDV2skwp6WVQKzUfY3Uuge6H+anhKZ3g@mail.gmail.com>
 <CAPRRyxs1nN0-CWEJezodZPJagLRUG7enLzLYUVTrFr2sg25rew@mail.gmail.com>
 <CAGNhwTPSZABdyx-2hQOYYs7rhyNxOpbqRUWUDwZEaUAU8Etbxg@mail.gmail.com>
 <CAPRRyxs07yK+1xxm9Ku-4KZsDf_3Y43Zv2g4RydJLWNEoiUXFQ@mail.gmail.com>
 <CAGNhwTOS0HVWiu1z1Y1570oxm6Mr8n2Mk7j+6fXP-Ejt8LDw4Q@mail.gmail.com>
 <CAPRRyxuwipePyLJ4Xu1zBZG3vTtsAkMV4xVJu09jkgFPj9WyVQ@mail.gmail.com>
 <CAPRRyxtEcZANCz2v1gC_sAPNP=VSUhmMMUdW2DxsLfEt9wVuQw@mail.gmail.com>
 <CAPRRyxtZ1D_d2T=xYqZqMdWKaTvc4S9GrmpJx5p6rWavJFRQYg@mail.gmail.com>
 <CAGNhwTPfvjBumJN2fNghdYgpQuaH0UJJb2_CEcUBT-ucfhbhNw@mail.gmail.com>
In-Reply-To: <CAGNhwTPfvjBumJN2fNghdYgpQuaH0UJJb2_CEcUBT-ucfhbhNw@mail.gmail.com>
Date: Mon, 11 May 2020 23:04:20 +0300
Message-ID: <CAPRRyxsCc2uFOghYQKYh4aS--fOVTr2LcE4ojNG-gDNjYJvtew@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>,
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] GPIO setup via gnuradio
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============7842198474458076226=="
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

--===============7842198474458076226==
Content-Type: multipart/alternative; boundary="000000000000efa43205a564da54"

--000000000000efa43205a564da54
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If I understand you correctly, then I need to create another block uhd
self.uhd_usrp_source =3D uhd.usrp_source (         ",". join (("", "")),
        uhd.stream_args (         cpu_format =3D "fc32",         channels =
=3D
range (1),         ),         )
so I created it. But I don=E2=80=99t understand how it works since I don=E2=
=80=99t connect
it anywhere and I get an error
 [WARNING] [RFNOC] [legacy compat] Not enough FIFO ports to connect, not
all TX sinks will be connected [WARNING] [RFNOC] [legacy_compat] No DDCs
detected. You will only be able to receive at the radio frontend rate.
[WARNING] [RFNOC] [legacy_compat] No DUCs detected. You will only be able
to transmit at the radio frontend rate. [WARNING] [RFNOC] Assuming max
packet size for 0 / Radio_0 thread [thread-per-block [0]: <block
uhd_rfnoc_FIFO (7)>]: RuntimeError: On node 0 / FIFO_0, output port 0 is
already connected.
 If somewhere there are examples of how to get to gpio correctly, I would
be very grateful if you would provide them to me. I figured out the FPGA
firmware and now the only problem is gpio.

=D0=BF=D0=BD, 11 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 17:58, Michael Dick=
ens <michael.dickens@ettus.com>:

> Hi Ivan - I was out last week; here now for a few days. Please keep
> support@ettus.com on CC so that someone there can try to help you when
> I'm away.
>
> Here's a summary of the discussion with the Ettus R&D person I spoke with
> about accessing the GPIO via GRC: you have to create a UHD USRP Source/Si=
nk
> object, then you use it to access the underlying C++ USRP object (via
> Python) to obtain the GPIO API. You can't access the UHD GPIO API from
> RFNoC blocks; there is no USRP object to provide access.
>
> Are you still having issues with the FPGA creation? If so, please update
> me on where you're at and I'll do what I can to help. - MLD
> ---
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>
>
> On Thu, May 7, 2020 at 7:38 AM Ivan Zahartchuk <adray0001@gmail.com>
> wrote:
>
>> Hello. Sorry to bother you so often. But I really want to understand thi=
s
>> board and firmware. I solved the problem with the fact that I did not
>> create an image for FPGA. The problem was that at startup, the
>> rfnoc_ce_auto_inst_e31x.v configuration file is created, which also tell=
s
>> which blocks to compile for VIvado. But the next time you call
>> ./uhd_image_builder, this file is not replaced with a new one, but the
>> rfnoc_ce_auto_inst_e310.v file is created, which does not participate in
>> further work. But I also had questions about the GPIO.
>>
>> =D0=B2=D1=81, 3 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 14:09, Ivan Zahar=
tchuk <adray0001@gmail.com>:
>>
>>> Hello. Your colleagues haven=E2=80=99t answered anything yet? Tell me, =
could you
>>> generate firmware for RFNoC and drop it to me. Sorry to ask a lot, I ju=
st
>>> can not test the error with generating a bit file for FPGA differently.
>>>
>>> =D1=81=D1=80, 29 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 08:11, Ivan Za=
hartchuk <adray0001@gmail.com>:
>>>
>>>> Thanks! I found out that the problem in the firmware comes from
>>>> applications for creating this firmware. After opening the firmware us=
ing
>>>> Vivado, I found in it the same FIR block that I did not add there. Per=
haps
>>>> this is due to the fact that I installed the wrong version of Vivado.
>>>> Because I also don=E2=80=99t generate the dts file that is needed for =
firmware. I
>>>> installed Vivado 18.3 HL System Edition.
>>>>
>>>> =D1=81=D1=80, 29 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 00:12, Michae=
l Dickens <michael.dickens@ettus.com
>>>> >:
>>>>
>>>>> Hi Ivan - Let me discuss your query with the Ettus R&D guy who handle=
s
>>>>> gr-uhd. Hopefully he'll be able to clarify your query. - MLD
>>>>> ---
>>>>> Michael Dickens
>>>>> Ettus Research Technical Support
>>>>> Email: support@ettus.com
>>>>> Web: https://ettus.com/
>>>>>
>>>>>
>>>>> On Mon, Apr 27, 2020 at 7:59 PM Ivan Zahartchuk <adray0001@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Unfortunately for all this time I have not come a step closer to sol=
ving my problems. I don=E2=80=99t know how to solve the problem with flashi=
ng fpga.
>>>>>> I even reinstalled ubuntu but it did not help. The only assumption i=
s that the board has its own memory that is not erased after overwriting th=
e SD card. But this is also doubtful.
>>>>>> In addition, I still didn=E2=80=99t get to switch to the GPIO throug=
h the RFNoC block and I am thinking about returning to version 3.14. But ho=
nestly I would like to deal with this version.
>>>>>>
>>>>>>

--000000000000efa43205a564da54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If I understand you correctly, then I need to create anoth=
er block uhd
=C2=A0<div>self.uhd_usrp_source =3D uhd.usrp_source (
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;,&quot;. join ((&quot=
;&quot;, &quot;&quot;)),
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uhd.stream_args (
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cpu_format =3D &quot;fc32&q=
uot;,
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0channels =3D range (1),
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0),
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0)=C2=A0</div><div>so I crea=
ted it. But I don=E2=80=99t understand how it works since I don=E2=80=99t c=
onnect it anywhere and I get an error</div><div>=C2=A0[WARNING] [RFNOC] [le=
gacy compat] Not enough FIFO ports to connect, not all TX sinks will be con=
nected
[WARNING] [RFNOC] [legacy_compat] No DDCs detected. You will only be able t=
o receive at the radio frontend rate.
[WARNING] [RFNOC] [legacy_compat] No DUCs detected. You will only be able t=
o transmit at the radio frontend rate.
[WARNING] [RFNOC] Assuming max packet size for 0 / Radio_0
thread [thread-per-block [0]: &lt;block uhd_rfnoc_FIFO (7)&gt;]: RuntimeErr=
or: On node 0 / FIFO_0, output port 0 is already connected.</div><div>=C2=
=A0If somewhere there are examples of how to get to gpio correctly, I would=
 be very grateful if you would provide them to me. I figured out the FPGA f=
irmware and now the only problem is gpio.</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 11 =D0=BC=D0=
=B0=D1=8F 2020 =D0=B3. =D0=B2 17:58, Michael Dickens &lt;<a href=3D"mailto:=
michael.dickens@ettus.com">michael.dickens@ettus.com</a>&gt;:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Ivan - I =
was out last week; here now for a few days. Please keep <a href=3D"mailto:s=
upport@ettus.com" target=3D"_blank">support@ettus.com</a> on CC so that som=
eone there can try to help you when I&#39;m away.<div><br></div><div>Here&#=
39;s a summary of the discussion with the Ettus R&amp;D person I spoke with=
 about accessing the GPIO via GRC: you have to create a UHD USRP Source/Sin=
k object, then you use it to access the underlying C++ USRP object (via Pyt=
hon) to obtain the GPIO API. You can&#39;t access the UHD GPIO API from RFN=
oC blocks; there is no USRP object to provide access.</div><div><br></div><=
div>Are you still having issues with the FPGA creation? If so, please updat=
e me on where you&#39;re at and I&#39;ll do what I can to help. - MLD</div>=
<div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">---</div><div dir=
=3D"ltr">Michael Dickens<br>Ettus Research Technical Support<br>Email: <a h=
ref=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br=
>Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</=
a></div></div></div></div></div></div></div></div></div></div></div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, May 7, 2020 at 7:38 AM Ivan Zahartchuk &lt;<a href=3D"mailto:adr=
ay0001@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hel=
lo. Sorry to bother you so often. But I really want to understand this boar=
d and firmware. I solved the problem with the fact that I did not create an=
 image for FPGA. The problem was that at startup, the rfnoc_ce_auto_inst_e3=
1x.v configuration file is created, which also tells which blocks to compil=
e for VIvado. But the next time you call ./uhd_image_builder, this file is =
not replaced with a new one, but the rfnoc_ce_auto_inst_e310.v file is crea=
ted, which does not participate in further work. But I also had questions a=
bout the GPIO.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">=D0=B2=D1=81, 3 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 14=
:09, Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@gmail.com" target=3D"_=
blank">adray0001@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hello. Your colleagues haven=E2=80=99t=
 answered anything yet? Tell me, could you generate firmware for RFNoC and =
drop it to me. Sorry to ask a lot, I just can not test the error with gener=
ating a bit file for FPGA differently.<br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 29 =D0=B0=D0=BF=D1=
=80. 2020 =D0=B3. =D0=B2 08:11, Ivan Zahartchuk &lt;<a href=3D"mailto:adray=
0001@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&gt;:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks!=C2=
=A0I found out that the problem in the firmware comes from applications for=
 creating this firmware. After opening the firmware using Vivado, I found i=
n it the same FIR block that I did not add there. Perhaps this is due to th=
e fact that I installed the wrong version of Vivado. Because I also don=E2=
=80=99t generate the dts file that is needed for firmware. I installed Viva=
do 18.3 HL System Edition.<span style=3D"background-color:rgb(248,249,250);=
font-family:inherit;font-size:28px;white-space:pre-wrap"></span></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=
=80, 29 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 00:12, Michael Dickens &lt;=
<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dick=
ens@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Hi Ivan - Let me discuss your query with the Ettus =
R&amp;D guy who handles gr-uhd. Hopefully he&#39;ll be able to clarify your=
 query. - MLD<br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr">---</div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Techni=
cal Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank=
">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_b=
lank">https://ettus.com/</a></div></div></div></div></div></div></div></div=
></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Apr 27, 2020 at 7:59 PM Ivan Zahartchuk &lt;=
<a href=3D"mailto:adray0001@gmail.com" target=3D"_blank">adray0001@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><pre id=3D"gmail-m_-2686627051027188575gmail-m_7853533297=
241329503gmail-m_9135370524100431939gmail-m_-8884878915660599770gmail-m_497=
6518520255204370gmail-m_2907319175527483697gmail-tw-target-text" style=3D"t=
ext-align:left" dir=3D"ltr"><span style=3D"font-family:georgia,serif"><span=
 lang=3D"en">Unfortunately for all this time I have not come a step closer =
to solving my problems. I don=E2=80=99t know how to solve the problem with =
flashing fpga. <br>I even reinstalled ubuntu but it did not help. The only =
assumption is that the board has its own memory that is not erased after ov=
erwriting the SD card. But this is also doubtful. <br>In addition, I still =
didn=E2=80=99t get to switch to the GPIO through the RFNoC block and I am t=
hinking about returning to version 3.14. But honestly I would like to deal =
with this version.</span></span></pre></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000efa43205a564da54--


--===============7842198474458076226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7842198474458076226==--

