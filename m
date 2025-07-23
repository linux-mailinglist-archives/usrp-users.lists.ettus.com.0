Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D26CEB0F63C
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jul 2025 16:58:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE03E385B65
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jul 2025 10:58:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753282687; bh=pPexQi8mXBx3zfOlwZpGWwWhpJBOUNBAnn4Dc3Q2JBE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=maXJQUXjcafBoq1rvFobIT7U4xSE6j4csMf6CZUJ1Qo6j3m9KSmArAJU2bn3oI+3b
	 bUd9uI1lVsdfEbI7OPS0DfkJJrWtABkbhJ/bQY0insZLA2fnxlRkSFRrTHKaFg9Omq
	 bRChKFFbDKBFcSmW7Upi/9PIwsjq88Iv/9RwcCEbvL5kd7F9H+OUF+I2qxawExQ28P
	 PFO2/IYra/iffFNE0x+5ZhK2SOFfM+4Y4jPmnFuwOqm3FPLj5m4xzrH2QuZENmR7/C
	 0kMdGjVc43c29KRS4dH6wMGcf09ERY/NIAK3wiIqojVCIe0ofCqFeb+UJzYyz+hoeF
	 khw7VmQq9CPyg==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 1593F385604
	for <usrp-users@lists.ettus.com>; Wed, 23 Jul 2025 10:57:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="qAJJBYs/";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ae3b336e936so1277283166b.3
        for <usrp-users@lists.ettus.com>; Wed, 23 Jul 2025 07:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753282638; x=1753887438; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7jT61amZikwL0ECdXeM1ce7vPA7LccOToiYb+8ZwpqQ=;
        b=qAJJBYs/7ZOvzMBugariZUkik0PRuqs4mN1yzg05qyPv+ppic5yx99Apkpb7RfN0WQ
         ZVdms/ge6YWRcrYXCGsjIKe/2TxCZdvTM+kJmo1gnw70pegVDI+2Kh0E2VQbVhLqicGj
         2wPu0/i+oMsY9mFf3lc1yW5SKaheJnHx9/o8VjIXTcGKM5AhriZdUCdfLYyB16b4laiB
         h6RHvLudZDfb8EMAWjhMUbbvAyPV2kLphS8wOeqPFNx/haeIQOU4dZJauXUsM4df2hy3
         P8nU5XsrcvMTrDG/3ttFCBJmzk1NzXquOhcBrc9wrrpkvA0j1kGZXQSley2PhE2d0sky
         xmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753282638; x=1753887438;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7jT61amZikwL0ECdXeM1ce7vPA7LccOToiYb+8ZwpqQ=;
        b=aPwQRX2TQweFOvljj2P1cZeNEAUtWY++oG+Q+ILY8qyOn7zA7DhW1KNWbtFPssxoIP
         B3geykiIZTIPazMvjY9i/K/j6zNeNBu+YnxdQ5WeJqfTKlEgsLSn+mprslqBuRHJ/4BK
         N5T/OQDx4FYf2VuwZ5NUMHWoo/AjgAEWKY2BHfDUBXf7BWsyxeemxEiPEpOSGiIIdZRs
         OMWR6aPujw44+F1gwctXklJDcD9C6s9laf6ncjaPgK9a9snswZsy8uPBPOjDYot2O3Jp
         +MJfnz+crFwVVCZVGdgu1DkSAXXyw0/EYkfSRW8CmNHyIjt1p1E2bjHNjtqmeFj2db9F
         VqWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLxNbCdpdlHGUujybHc2Gb4d6v3P9MepLzSMjfNnNS1tf+JYhcQg3WGz424HrNlzVRnZQe1BmYkGQY@lists.ettus.com
X-Gm-Message-State: AOJu0Yx8/KcENxKs2v9GDI0OvCMaVmHEHCoxJKkxuNdFRXlPEMoGm5w0
	/qxG1PJvscpNb2XGAkaqfq0NkU/F4tWyH6ZYutDOctCLsKsaeeOexJvkrrARULMAaErK/9OEx6H
	ymetPYzBjo+S93K080D0lzXQMLqp7a0mmBokgAgBYZmmX
X-Gm-Gg: ASbGncuwv52J1azUB1hulR2+7kUeMnm+WLHOlsVOrmA6nt06BNxwYkFxhEq4GDTzzi5
	GTGEWt222hl2kqwg1T4kbSFAp084Segtv8ElF+9a1kM/s3sR1i5ik9AJTlgTbNIwxZpGVary0IM
	jM0YfVT/o+3ZrF3NqkVsIjqZnD1CdakiggA3pIcrx/dRyc2SRYDaGhLUDwLD1k5MWj17nORhT/H
	thSO4PSPreNNfhtiFZNYMyNIXxub9Jm+5yF
X-Google-Smtp-Source: AGHT+IGyIxzWVsU9T+6v5UzDTZmwWiI/FvTyNOJ1d3HM3ikXqXhhjWlPqQBZMofdBQDlNrQ/w95rHmAFBPNWw38Hdoo=
X-Received: by 2002:a17:907:7f22:b0:ae6:f087:953 with SMTP id
 a640c23a62f3a-af2f66c05d5mr329533766b.12.1753282637583; Wed, 23 Jul 2025
 07:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
 <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com> <00b1e2cd914e4e87a81ed418f7fa142c@vastech.co.za>
In-Reply-To: <00b1e2cd914e4e87a81ed418f7fa142c@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 23 Jul 2025 16:57:05 +0200
X-Gm-Features: Ac12FXzBGceqjMyD3jNuvV0CoSAvEz2HtNqVSaFFLU6E-h2ix0MK1YL2RJgWtEo
Message-ID: <CAFOi1A79w6Yn703f7V+Jwe2X0PpR7or7Vn1naNgWmhYY3kJm-g@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: OJG2SF5KI4NYINCAWMUPPIUL26BDXUMN
X-Message-ID-Hash: OJG2SF5KI4NYINCAWMUPPIUL26BDXUMN
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "nbalkanas@gmail.com" <nbalkanas@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OJG2SF5KI4NYINCAWMUPPIUL26BDXUMN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9182742463063573581=="

--===============9182742463063573581==
Content-Type: multipart/alternative; boundary="000000000000cdf041063a99ecb0"

--000000000000cdf041063a99ecb0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Kevin,

are you specifying enable_fc=3D0 in the stream args or not? In the debug
statement above, they're shown, but not in your last email. I'm asking
because it looks like FC is kicking in and stopping the stream.

--M

On Wed, Jul 23, 2025 at 3:20=E2=80=AFPM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi Nikos,
>
>
>
> They are:
> dest_addr=3D172.17.0.2,dest_mac_addr=3D02:42:ac:11:00:02,dest_port=3D1234=
,stream_mode=3Dfull_packet
>
>
>
> Kind regards, Kevin
>
>
>
> *From:* Nikos Balkanas <nbalkanas@gmail.com>
> *Sent:* Wednesday, 23 July 2025 15:15
> *To:* Kevin Williams <kevin.williams@vastech.co.za>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL]Re: [USRP-users] remote streaming starts, but stops
> after a few packets received
>
>
>
> Hi Kevin,
>
>
>
> What are your stream_args?
>
> Using UHD_STREAM_MODE_NUM_SAMPS_AND_DONE?
>
> Not using RFNOC, but full_packet is not a UHD 4.6 mode:(
>
>
>
> BR,
>
> nikos
>
>
>
> On Wed, Jul 23, 2025 at 3:14=E2=80=AFPM Kevin Williams <
> kevin.williams@vastech.co.za> wrote:
>
> Hi,
>
>
>
> I have enabled remote streaming but according to wireshark I only receive
> 6x 4k packets.
>
>
>
> Everything about them is correct =E2=80=93 the destination ip, port, size=
, etc.
>
>
>
> From the debug logs the stream is set up as:
>
>
>
> [DEBUG] [RFNOC] Creating diverted RX stream with arguments:
> dest_addr=3D172.17.0.2,dest_mac_addr=3D02:42:ac:11:00:02,dest_port=3D1234=
,stream_mode=3Dfull_packet,__chdr_width=3D64,enable_remote_stream=3D1,enabl=
e_fc=3D0
>
> [DEBUG] [X300::SFP0::TA_CTL] On transport adapter 0: Adding route from
> EPID 6 to destination 172.17.0.2:1234
> <https://url.za.m.mimecastprotect.com/s/Al-NC98BNNiNO7DsofKiqDHZw?domain=
=3D172.17.0.2>
> (MAC Address: 02:42:ac:11:00:02), stream mode FULL_PACKET (0)
>
>
>
> What could cause that streaming to stop (given there is no flow control)?
>
>
>
> Many thanks, Kevin
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cdf041063a99ecb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Kevin,</div><div><br></div><div>are you specifying en=
able_fc=3D0 in the=C2=A0stream args or not? In the debug statement above, t=
hey&#39;re shown, but not in your last email. I&#39;m asking because it loo=
ks like FC is kicking in and stopping the stream.</div><div><br></div><div>=
--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div di=
r=3D"ltr" class=3D"gmail_attr">On Wed, Jul 23, 2025 at 3:20=E2=80=AFPM Kevi=
n Williams &lt;<a href=3D"mailto:kevin.williams@vastech.co.za">kevin.willia=
ms@vastech.co.za</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div class=3D"msg2264664453486288626"><div lang=3D"EN-ZA"><=
div class=3D"m_2264664453486288626WordSection1"><p class=3D"MsoNormal"><spa=
n>Hi Nikos,<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span>They are: </span><span la=
ng=3D"EN-US">dest_addr=3D172.17.0.2,dest_mac_addr=3D02:42:ac:11:00:02,dest_=
port=3D1234,stream_mode=3Dfull_packet<u></u><u></u></span></p><p class=3D"M=
soNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span=
>Kind regards, Kevin<u></u><u></u></span></p><p class=3D"MsoNormal"><span><=
u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span lang=3D"EN-US=
">From:</span></b><span lang=3D"EN-US"> Nikos Balkanas &lt;<a href=3D"mailt=
o:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; <br><b=
>Sent:</b> Wednesday, 23 July 2025 15:15<br><b>To:</b> Kevin Williams &lt;<=
a href=3D"mailto:kevin.williams@vastech.co.za" target=3D"_blank">kevin.will=
iams@vastech.co.za</a>&gt;<br><b>Cc:</b> <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:=
</b> [EXTERNAL]Re: [USRP-users] remote streaming starts, but stops after a =
few packets received<u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p><div><div><p class=3D"MsoNormal"><span style=3D"font-size:=
12pt">Hi Kevin,<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><=
span style=3D"font-size:12pt"><u></u>=C2=A0<u></u></span></p></div><div><p =
class=3D"MsoNormal"><span style=3D"font-size:12pt">What are your stream_arg=
s?<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><span style=3D=
"font-size:12pt">Using UHD_STREAM_MODE_NUM_SAMPS_AND_DONE?<u></u><u></u></s=
pan></p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:12pt">No=
t using RFNOC, but full_packet is not a UHD 4.6 mode:(<u></u><u></u></span>=
</p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u=
>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal"><span style=3D"f=
ont-size:12pt">BR,<u></u><u></u></span></p></div><div><p class=3D"MsoNormal=
"><span style=3D"font-size:12pt">nikos<u></u><u></u></span></p></div></div>=
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNor=
mal">On Wed, Jul 23, 2025 at 3:14=E2=80=AFPM Kevin Williams &lt;<a href=3D"=
mailto:kevin.williams@vastech.co.za" target=3D"_blank">kevin.williams@vaste=
ch.co.za</a>&gt; wrote:<u></u><u></u></p></div><blockquote style=3D"border-=
width:medium medium medium 1pt;border-style:none none none solid;border-col=
or:currentcolor currentcolor currentcolor rgb(204,204,204);padding:0cm 0cm =
0cm 6pt;margin-left:4.8pt;margin-right:0cm"><div><div><div><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">Hi,</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">I have enabled remote streaming but according to w=
ireshark I only receive 6x 4k packets.</span><u></u><u></u></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">Everything about them is correct =E2=80=93 =
the destination ip, port, size, etc.</span><u></u><u></u></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">From the debug logs the stream is set up as:<=
/span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<=
/span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[DEBUG]=
 [RFNOC] Creating diverted RX stream with arguments: dest_addr=3D172.17.0.2=
,dest_mac_addr=3D02:42:ac:11:00:02,dest_port=3D1234,stream_mode=3Dfull_pack=
et,__chdr_width=3D64,enable_remote_stream=3D1,enable_fc=3D0</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[DEBUG] [X300::SFP0::T=
A_CTL] On transport adapter 0: Adding route from EPID 6 to destination <a h=
ref=3D"https://url.za.m.mimecastprotect.com/s/Al-NC98BNNiNO7DsofKiqDHZw?dom=
ain=3D172.17.0.2" target=3D"_blank">172.17.0.2:1234</a> (MAC Address: 02:42=
:ac:11:00:02), stream mode FULL_PACKET (0)</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">What could cause that streaming to stop=
 (given there is no flow control)?</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">Many thanks, Kevin</span><u></u><u></u></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p></di=
v></div><p class=3D"MsoNormal">____________________________________________=
___<br>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe sen=
d an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D=
"_blank">usrp-users-leave@lists.ettus.com</a><u></u><u></u></p></div></bloc=
kquote></div></div></div>_______________________________________________<br=
>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000cdf041063a99ecb0--

--===============9182742463063573581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9182742463063573581==--
