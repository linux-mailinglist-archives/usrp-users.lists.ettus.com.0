Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A181A6C7FD4
	for <lists+usrp-users@lfdr.de>; Fri, 24 Mar 2023 15:26:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D3013845A8
	for <lists+usrp-users@lfdr.de>; Fri, 24 Mar 2023 10:26:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679667983; bh=vTmeow/6VnKyvnr84E+3vqrmU6M091N4xqStZY6zeuY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Ex6JTtWskiL/YKVqJtaLD59Vj5W2KiybZkSOods96eK8XZZBG8p0ylJHzD0YPgjN6
	 lCvjqCSsHCHH58DwHWvsMHQ/tvxkDQ8fMwqKQtZ1tU0lGgulPfYz9zHg+LinLyQan8
	 kpro9R1hyiADEMxU4oaablDA388fMRAwzAYZzBVcNw9fUrq6J9W3q2Yxk1bQ60DRpP
	 ESXR8Xw/QmP5adrareK3BfzkKjzBsLPShD73Jd639JaZdxdRhyB9baaDBt1H8avSXz
	 6OzikbDegAiNTlcrn6wYS3I6fLn4JjEm616gQoEYpnHjsSXiX/AA8ixvqgG+A0wfgw
	 qXuSavBIbEGJg==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F566384840
	for <usrp-users@lists.ettus.com>; Fri, 24 Mar 2023 10:25:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZIYNq69P";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id x3so8516952edb.10
        for <usrp-users@lists.ettus.com>; Fri, 24 Mar 2023 07:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1679667942;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RtFMzt4r+FoXZI7/MiVbzyiKU85yYFtI634o5ciLvLE=;
        b=ZIYNq69PCmpNCT2xstf2TLUU+QCKTtWzA1RbwGpW8/I3WGUFGWt1MHuHfMkWyAsDbV
         hH0gf3YNVdb570Lo9ItIXua98cVLV0Xz6THIaAhA2t7EuWiIrmAXmJnvE+xo/MIfBkTy
         mQEvg4prt9rcKdKW1yxW0gNjYflqHCIS6DupVG0XNo3Qw5Ro3+iatP/XOgOUVW1E6MfI
         f1CIH48/sesHbsZQpaYiNfHUbTLiC+uPTYGg3HYaIH8+a8ScrlbLELYw8k/TGn1Fb/nT
         ZbJdP6BUSVxRJGXvzv2zsQ8Oi9L+QWiJA/u4j7bXoMuAzNnl1WwzRH6MmCo7g3IbF1iY
         VKSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679667942;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RtFMzt4r+FoXZI7/MiVbzyiKU85yYFtI634o5ciLvLE=;
        b=QmaMwWHa1rTySv526cXYITEMaQqRiAj8dg4wfDwToIEOlTx+9+QsClQcmX315a1wTq
         N7peB0q0OiG4KkBdNq6I1Q/ysYvStRE1t2Kdt38bBG62U6QuevOfdG/y00InDv/9nP44
         0S/2qeCmF26085eei1jhfjDEKDOUtbOOKn6hMAJMPqbzTmBviLge97GbmUS9yAhTr3n2
         N2R3EsekrEt0OwfAmlhUYsv3M0I1ZrFIxvae9Mb4XAWu65VAwKi5bL6H6TfJhvHRqGMT
         HEb1nAJsXhX1hDOoWf1Aah8D/ScmESH7HYRruTK0O2XgtODzsJy6ANQLoiAr7RmEhF26
         DvGg==
X-Gm-Message-State: AAQBX9d65Spq8iQ+bkU4c/0vz0c+6uhAUCQ31lx2t9LDlJY8LwT1AVGH
	Yx2wZXbJEPKUVB+et8OmKfLHbh/SlXfE7/wT+t5jfg==
X-Google-Smtp-Source: AKy350YwXrv6ZTFLmIPAD2DynjqRNpkYNyd8ybNnakXxVuv/Ge7pRmke0JzlLmttoARw3TDOFAmHSOA6EE6ghtN4sCM=
X-Received: by 2002:a17:906:483:b0:92f:41e4:e48b with SMTP id
 f3-20020a170906048300b0092f41e4e48bmr1421999eja.6.1679667942088; Fri, 24 Mar
 2023 07:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <21645_1621719161_60A97879_21645_2022_1_CAK6apsPDs_9FnES40RDw8qin4wDu_OHZYQebu=o0oKK2k_k8qg@mail.gmail.com>
 <BLAPR09MB661241232D0B9E777670F977D9289@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAB__hTQ8y=GxHjphbatnB2yK6o2gPQv7p9sWHAuEesN5OXieOA@mail.gmail.com>
In-Reply-To: <CAB__hTQ8y=GxHjphbatnB2yK6o2gPQv7p9sWHAuEesN5OXieOA@mail.gmail.com>
Date: Fri, 24 Mar 2023 10:25:30 -0400
Message-ID: <CAB__hTTvh-9vcWLj4yeNyFEhRmuJhmEnbXVLek+g76T2carBkQ@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: RFN65FBDY3WVPOU6SKTCBQF4JEQRSUH7
X-Message-ID-Hash: RFN65FBDY3WVPOU6SKTCBQF4JEQRSUH7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time base error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RFN65FBDY3WVPOU6SKTCBQF4JEQRSUH7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3182394769560668879=="

--===============3182394769560668879==
Content-Type: multipart/alternative; boundary="000000000000078a9805f7a62b83"

--000000000000078a9805f7a62b83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Following up on my previous email, I found that this error was happening
when I set UHD_MODULE_PATH to allow UHD to find my RFNOC library had also
linked my library explicitly in my custom app.  Thus, if I ran
uhd_usrp_probe, everything was fine because it found my library in the
defined UHD_MODULE_PATH.  But, when I ran my custom app, it loaded
my explicitly linked library and then UHD also loaded the library in the
path.  This seemed to cause the mentioned error because if I simply "unset"
the variable, everything worked fine.
Rob

On Thu, Mar 23, 2023 at 12:48=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrot=
e:

> Hi Jeff,
> I am getting this same error.  Did you ever figure out the problem?
> Rob
>
> On Sat, May 22, 2021 at 5:46=E2=80=AFPM Jeffrey P Long <jplong@mitre.org>=
 wrote:
>
>> I am getting some weird error about a invalid time base clock name after
>> starting to create my own block. I did not see this just doing the simpl=
e
>> pass thru RFnoc example. What would this mean?
>>
>> Thanks
>> Jeff
>>
>> <https://aka.ms/o0ukef>
>>
>>
>> jplong@mm241897-pc:~/proj/ettus_e320/rfnoc-example/build/apps$
>> ./txcore_block
>> [REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC
>> block with noc_id,device_id: 0xb16, 0xffff
>> [REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC
>> block with noc_id,device_id: 0xde30, 0xffff
>>
>> Creating the RFNoC graph with args: ...
>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>> UHD_4.0.0.0-122-g75f2ba94
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=3D192.168.30.5,type=3De3xx,product=3De320,serial=3D31DCD15,cla=
imed=3DFalse,addr=3D192.168.10.5
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `mgmt_addr=3D192.168.30.5,product=3De320'.
>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>> [INFO] [0/Radio#0] CODEC loopback test passed
>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>> [INFO] [0/Radio#0] CODEC loopback test passed
>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/=
s)
>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/=
s)
>> [ERROR] [MPMD::MB_IFACE] Invalid timebase clock name:
>> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
>> LookupError: KeyError: [MPMD_MB::IFACE] Invalid timebase clock name:
>> Error: RuntimeError: Failure to create rfnoc_graph.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000078a9805f7a62b83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Following up on my previous email, I found that this =
error was happening when I set UHD_MODULE_PATH to allow UHD to find my RFNO=
C library had also linked my library explicitly=C2=A0in my custom app.=C2=
=A0 Thus, if I ran uhd_usrp_probe, everything was fine because it found my =
library in the defined UHD_MODULE_PATH.=C2=A0 But, when I ran my custom app=
, it loaded my=C2=A0explicitly=C2=A0linked library and then UHD also loaded=
 the library in the path.=C2=A0 This seemed to cause the mentioned error be=
cause if I simply &quot;unset&quot; the variable, everything worked fine.</=
div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Mar 23, 2023 at 12:48=E2=80=AFPM Rob Kossler &lt;<a hre=
f=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Jeff,<div>I=
 am getting this same error.=C2=A0 Did you ever figure out the=C2=A0problem=
?</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, May 22, 2021 at 5:46=E2=80=AFPM Jeffrey P Long=
 &lt;<a href=3D"mailto:jplong@mitre.org" target=3D"_blank">jplong@mitre.org=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>I am getting some weird error about a invalid time base clock name aft=
er starting to create my own block. I did not see this just doing the simpl=
e pass thru RFnoc example. What would this mean?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks</div>
<div dir=3D"ltr">Jeff</div>
<div><br>
</div>
<div id=3D"m_-726234145803275199m_6972428964118572187ms-outlook-mobile-sign=
ature" dir=3D"ltr"><a href=3D"https://aka.ms/o0ukef" target=3D"_blank"></a>=
</div>
</div>
<div id=3D"m_-726234145803275199m_6972428964118572187id-531e83e2-f623-4c10-=
a416-a48fca500fd1">
<div id=3D"m_-726234145803275199m_6972428964118572187divRplyFwdMsg" dir=3D"=
ltr"><font face=3D"Calibri, sans-serif"><br>
<div>=C2=A0</div>
</font></div>

<div dir=3D"ltr">jplong@mm241897-pc:~/proj/ettus_e320/rfnoc-example/build/a=
pps$ ./txcore_block
<br>
[REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC blo=
ck with noc_id,device_id: 0xb16, 0xffff<br>
[REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC blo=
ck with noc_id,device_id: 0xde30, 0xffff<br>
<br>
Creating the RFNoC graph with args: ...<br>
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-122-g7=
5f2ba94<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.30.5,type=3De3xx,product=3De320,serial=3D31DCD15,claimed=3DFalse,add=
r=3D192.168.10.5<br>
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.30.5,product=3De320&#39;.<br>
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ... <br>
[INFO] [0/Radio#0] CODEC loopback test passed<br>
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... <br>
[INFO] [0/Radio#0] CODEC loopback test passed<br>
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<=
br>
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<=
br>
[ERROR] [MPMD::MB_IFACE] Invalid timebase clock name: <br>
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: LookupErr=
or: KeyError: [MPMD_MB::IFACE] Invalid timebase clock name:
<br>
Error: RuntimeError: Failure to create rfnoc_graph.<br>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000078a9805f7a62b83--

--===============3182394769560668879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3182394769560668879==--
