Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6E4563D19
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jul 2022 02:58:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B65613848FC
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 20:58:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656723507; bh=hzT4bYIssc1mn+QO0v5VovvQ71bgafk8dll6BFelMaY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eLOJhqYqUFs9H3hd32V1JMng2SoL65GBVk0ka50LCZOg5eYAEcqx4qHyjoVahFEfY
	 FpozwtoweMGZ7pzpvdqPfdrYVEZwfJXAp99Ohch9JTGSGBIo3Q/fZpRE4uxJi0ZzXL
	 De+YokkTwNXanJlDa1SUmg/6lAKdM5jgGkXyWsfTS2/AE0ckOluq+GsVv6EOkc/Jqd
	 y5Rp5rvuLMx29BofRPnBu6A96rZg4iD6MA8yz4n6ljmDHAN5xjWAWAFGuf+GrUPUrs
	 m4LgdM4T2JEVqLE6PQz4f1LpEvrN+hxNWG51y4WX2l8HsZgja3o/jLHsKClwZe8G3c
	 eRIeBvLgXsXjw==
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 1A3243848CF
	for <usrp-users@lists.ettus.com>; Fri,  1 Jul 2022 20:56:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="DK4H3Wah";
	dkim-atps=neutral
Received: by mail-pj1-f44.google.com with SMTP id w1-20020a17090a6b8100b001ef26ab992bso4298596pjj.0
        for <usrp-users@lists.ettus.com>; Fri, 01 Jul 2022 17:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wGGG70/vxGaxT41B0VPtUMuL1xlI+tMnbsyJo1c+lpg=;
        b=DK4H3WahJfV+R28ElqCNRR6FPfEal1daYmhenloud2uPz1u06r44F4r8+L30vTt/ez
         GGGcxlq5Qq0D6cRFHB9ke+0YMHdF/izKnLy9pMb9E3TXfEw/PBmT4pwZdIhgn9DBzql6
         nL3pne+oZvq/awvAn4b108DRESsy/kbcTC8hSq1WT8E8mZ7rX6zaILuTPUSGAGl99QP1
         JfHtZf6TVlKMQuPk+Yoh0vGRuO2oIS1iUd+2K3ruCdtEKkSzK7zIVNGTV7UrSafhQSK7
         LUGIlFXCwb98qvOD5ZxGwwkSz5qvTnK2q1wgY+yw5lMzQkCffGN8qDmgBkwmHp507/Hd
         ElxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wGGG70/vxGaxT41B0VPtUMuL1xlI+tMnbsyJo1c+lpg=;
        b=6xDC3TCDNdYxelD4K03ygBqxaRR4LvMwTtBlMJIrZmUFIlfmCYNxXElYUuB+AOJTnR
         E+IEencnn0qniEehtLSqY8hQtKBtuM404BrbYLEH7dnFF2Tn80Nhf8NfSrEviNfNx2a+
         ZPtjCOXpQixwQyv2mQ08MpfoO76qlM9I03LHOLvdKjs/UEPglOi3dWx0Z4PLUPMWEEle
         eNTkFcDulx1DNtlZGcm16ybIwV7Gh33aWHyOFbe5eytT1NeE1xTENmQHeW9WN2AIpmFZ
         1j6VpY63rKRXsemd2maRS8SHA/jVJ0ynZGUnb49LMxAq2brACRQ/sVCHIu1rWrW3AXtE
         BZ2g==
X-Gm-Message-State: AJIora+fTA4rWs0kF9qkfuZqIOAEB3uiOeUT+zLlTq9kMKgopDHz7SQ9
	0EPhA7hIPpxP0I1wwuIaYXnMjhJ/0f39gHUe9tqUMwYF
X-Google-Smtp-Source: AGRyM1urMV+KLlg9MznlPdQKbtOKdity/BmKSlOzIqqGM4IwRlQ7dgnzv4Y+s1UIZ1xWBCqh5XWq9G3RksWAxD8y06I=
X-Received: by 2002:a17:902:8547:b0:16a:3564:915b with SMTP id
 d7-20020a170902854700b0016a3564915bmr24214771plo.87.1656723366010; Fri, 01
 Jul 2022 17:56:06 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR03MB67952B33C9B89FB9014E9348B1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
 <CAFche=ig=a8wNr2Mptnszf3OPkgbzWwEV4Sxa0yzjJNjo59Uqg@mail.gmail.com> <SJ0PR03MB6795D9F85244E5188F1DE0ABB1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
In-Reply-To: <SJ0PR03MB6795D9F85244E5188F1DE0ABB1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 1 Jul 2022 18:55:19 -0600
Message-ID: <CAFche=jhK5Ck=nimtq-k_Rc=FyCsmJhbDgrpm3V8DwTdP2ipzQ@mail.gmail.com>
To: "Mattingly, Rylee" <rmattingly@ou.edu>
Message-ID-Hash: Y7K6DXBNS7HPXSIF3YC33UDUKGZSQR44
X-Message-ID-Hash: Y7K6DXBNS7HPXSIF3YC33UDUKGZSQR44
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_chdr Clock on X3xx Radios
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y7K6DXBNS7HPXSIF3YC33UDUKGZSQR44/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7063353624370252547=="

--===============7063353624370252547==
Content-Type: multipart/alternative; boundary="000000000000b8fad405e2c7f711"

--000000000000b8fad405e2c7f711
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

When you create an RFNoC block, the noc_shell gets created for you and you
can specify what clock you want the data on and the NIPC. In the case of
the DDC, the data to/from the noc_shell should be on ce_clk.

The noc_shell handles for you the conversion between ce_clk and
rfnoc_chdr_clk, and between the requested NIPC and the CHDR bus width.

The streamer does not know the NIPC but your block can be designed to
handle an odd number of samples per packet. TKEEP is the signal that
indicates if the last clock cycle has an odd number of samples. It also may
be possible to write your application so that the block only sends/receives
a multiple of the NIPC, which can allow you to simplify the FPGA logic in
some cases. But I would avoid that if you can.

Wade

On Fri, Jul 1, 2022, 9:48 AM Mattingly, Rylee <rmattingly@ou.edu> wrote:

> Hi Wade,
>
>
>
> This makes sense to me intuitively, especially with the processing clock.
> I am mostly concerned about the ability of the data bus to actually pipe
> that much data, which would be alleviated by a NIPC =3D 2.
>
>
>
> In the DDC, the data seems to come in from the NOC shell using the
> rfnoc_chdr_clk, but uses local parameters to define item_w =3D 32 and NIP=
C =3D
> 1.  Being localparams, it is my understanding that they can=E2=80=99t be =
modified
> externally. Although the raw input signal s_rfnoc_chdr_tdata is 64 bits,
> the s_axis_data_tdata is only defined with num_ports*item_w.
>
>
>
> So does the DDC use the num_ports parameter in place of NIPC?
>
>
>
> Similarly the FFT block uses local parameters for NIPC but explicitly use=
s
> the CHDR_W to set the axis_tdata width. Again it doesn=E2=80=99t seem to =
use NIPC
> but perhaps that is just implied.
>
>
>
> So I guess my question boils down to:
>
> Should custom RFNoC blocks that expect to operate at 200 MS/s expect a
> NIPC of 2 from the upstream blocks.
>
> Does the streamers understand if it is expecting 2 samples per clock or 1
> sample per clock?
>
>
>
> Rylee
>
>
>
> *From: *Wade Fife <wade.fife@ettus.com>
> *Date: *Friday, July 1, 2022 at 9:19 AM
> *To: *Mattingly, Rylee <rmattingly@ou.edu>
> *Cc: *USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] rfnoc_chdr Clock on X3xx Radios
>
> Hi Rylee,
>
>
>
> Some blocks do use NIPC =3D 1, but those blocks need to use a faster cloc=
k
> for the internal processing. For example, on X310, the DDC and DUC use a
> separate CE clock that is connected to 214.286 MHz. The radio block uses
> radio_clk for this purpose. For the parts of the logic that use the 187.5
> MHz clock, we use a 64-bit bus that holds 2 samples per cycle (NIPC =3D 2=
).
> The numbers vary somewhat between products and blocks, but that's the
> general idea.
>
>
>
> Wade
>
>
>
> On Fri, Jul 1, 2022 at 8:55 AM Mattingly, Rylee <rmattingly@ou.edu> wrote=
:
>
> Hello all,
>
>
>
> I am looking at the RFNoC FAQ page
> <https://urldefense.com/v3/__https:/kb.ettus.com/RFNoC_Frequently_Asked_Q=
uestions__;!!GNU8KkXDZlD12Q!9vhvYI4lgCniKu9k5boH12kRtHf4dVelsbI2c47vAy3m0Nn=
4CwRMG8YOcTzk46v8Y2IThfEbqgsGjITcig$>
> and it lists the rfnoc_chdr clock as 187.5 MHz. Now this is plenty fast t=
o
> pipe around packets and sequential headers for the 184.32 MS/s sample rat=
e
> but how does this support the 200 MHz master clock/200MS/s sample rate?
>
>
>
> This seems like a NIPC > 1 would be needed, but my understanding is that
> all blocks use NIPC =3D 1 by default.
>
>
>
> Thank you,
>
>
>
> Rylee Mattingly
>
> The University of Oklahoma
>
> Graduate Research Assistant
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000b8fad405e2c7f711
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">When you create an RFNoC block, the noc_shell gets create=
d for you and you can specify what clock you want the data on and the NIPC.=
 In the case of the DDC, the data to/from the noc_shell should be on ce_clk=
.<div dir=3D"auto"><br></div><div dir=3D"auto">The noc_shell handles for yo=
u the conversion between ce_clk and rfnoc_chdr_clk, and between the request=
ed NIPC and the CHDR bus width.<div dir=3D"auto"><br></div><div dir=3D"auto=
">The streamer does not know the NIPC but your block can be designed to han=
dle an odd number of samples per packet. TKEEP is the signal that indicates=
 if the last clock cycle has an odd number of samples. It also may be possi=
ble to write your application so that the block only sends/receives a multi=
ple of the NIPC, which can allow you to simplify the FPGA logic in some cas=
es. But I would avoid that if you can.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Wade=C2=A0</div></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 1, 2022, 9:48 AM Mattingly=
, Rylee &lt;<a href=3D"mailto:rmattingly@ou.edu">rmattingly@ou.edu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break=
-word">
<div class=3D"m_-1852494824391907123WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Wade,<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">This makes sense to=
 me intuitively, especially with the processing clock. I am mostly concerne=
d about the ability of the data bus to actually pipe that much data, which =
would be alleviated by a NIPC =3D 2.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">In the DDC, the dat=
a seems to come in from the NOC shell using the rfnoc_chdr_clk, but uses lo=
cal parameters to define item_w =3D 32 and NIPC =3D 1.=C2=A0 Being localpar=
ams, it is my understanding that they can=E2=80=99t be
 modified externally. Although the raw input signal s_rfnoc_chdr_tdata is 6=
4 bits, the s_axis_data_tdata is only defined with num_ports*item_w.=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">So does the DDC use=
 the num_ports parameter in place of NIPC?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Similarly the FFT b=
lock uses local parameters for NIPC but explicitly uses the CHDR_W to set t=
he axis_tdata width. Again it doesn=E2=80=99t seem to use NIPC but perhaps =
that is just implied.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">So I guess my quest=
ion boils down to:
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Should custom RFNoC=
 blocks that expect to operate at 200 MS/s expect a NIPC of 2 from the upst=
ream blocks.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Does the streamers =
understand if it is expecting 2 samples per clock or 1 sample per clock?<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rylee<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Wade Fife &lt;<a hr=
ef=3D"mailto:wade.fife@ettus.com" target=3D"_blank" rel=3D"noreferrer">wade=
.fife@ettus.com</a>&gt;<br>
<b>Date: </b>Friday, July 1, 2022 at 9:19 AM<br>
<b>To: </b>Mattingly, Rylee &lt;<a href=3D"mailto:rmattingly@ou.edu" target=
=3D"_blank" rel=3D"noreferrer">rmattingly@ou.edu</a>&gt;<br>
<b>Cc: </b><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@li=
sts.ettus.com</a>&gt;<br>
<b>Subject: </b>Re: [USRP-users] rfnoc_chdr Clock on X3xx Radios<u></u><u><=
/u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Rylee,<u></u><u>=
</u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Some blocks do use =
NIPC =3D 1, but those blocks need to use a faster clock for the internal pr=
ocessing. For example, on X310, the DDC and DUC use a separate CE clock tha=
t is connected to 214.286 MHz. The radio
 block uses radio_clk for this purpose. For the parts of the logic that use=
 the 187.5 MHz clock, we use a 64-bit bus that holds 2 samples per cycle (N=
IPC =3D 2). The numbers vary somewhat between products and blocks, but that=
&#39;s the general idea.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wade<u></u><u></u><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">On Fri, Jul 1, 2022=
 at 8:55 AM Mattingly, Rylee &lt;<a href=3D"mailto:rmattingly@ou.edu" targe=
t=3D"_blank" rel=3D"noreferrer">rmattingly@ou.edu</a>&gt; wrote:<u></u><u><=
/u></span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">Hello all,</span><span style=
=3D"font-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">=C2=A0</span><span style=3D"fo=
nt-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">I am looking at the <a href=3D=
"https://urldefense.com/v3/__https:/kb.ettus.com/RFNoC_Frequently_Asked_Que=
stions__;!!GNU8KkXDZlD12Q!9vhvYI4lgCniKu9k5boH12kRtHf4dVelsbI2c47vAy3m0Nn4C=
wRMG8YOcTzk46v8Y2IThfEbqgsGjITcig$" title=3D"https://kb.ettus.com/RFNoC_Fre=
quently_Asked_Questions" target=3D"_blank" rel=3D"noreferrer">
RFNoC FAQ page</a> and it lists the rfnoc_chdr clock as 187.5 MHz. Now this=
 is plenty fast to pipe around packets and sequential headers for the 184.3=
2 MS/s sample rate but how does this support the 200 MHz master clock/200MS=
/s sample rate?=C2=A0
</span><span style=3D"font-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">=C2=A0</span><span style=3D"fo=
nt-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">This seems like a NIPC &gt; 1 =
would be needed, but my understanding is that all blocks use NIPC =3D 1 by =
default.</span><span style=3D"font-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">=C2=A0</span><span style=3D"fo=
nt-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">Thank you,</span><span style=
=3D"font-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">=C2=A0</span><span style=3D"fo=
nt-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">Rylee Mattingly</span><span st=
yle=3D"font-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">The University of Oklahoma</sp=
an><span style=3D"font-size:11.0pt"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white">
<span style=3D"font-size:12.0pt;color:black">Graduate Research Assistant</s=
pan><span style=3D"font-size:11.0pt"><u></u><u></u></span></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">___________________=
____________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></span></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--000000000000b8fad405e2c7f711--

--===============7063353624370252547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7063353624370252547==--
