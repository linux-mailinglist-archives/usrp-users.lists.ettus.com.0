Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2CC4C1C7
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 21:54:13 +0200 (CEST)
Received: from [::1] (port=54768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdgeq-0005g6-F9; Wed, 19 Jun 2019 15:54:12 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:36018)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sdormian@eng.ucsd.edu>)
 id 1hdgem-0005ZQ-6Z
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 15:54:08 -0400
Received: by mail-io1-f43.google.com with SMTP id h6so389332ioh.3
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 12:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=X+54KO4dcSOSdd75EeiDI5Jd+L7jcAOwWo1v0+gD2zs=;
 b=P9CJ6xYiopAsLX8YoDrQr7YYfyWtDm1qhbmWDWGflameuv1yxwWXfzHjfwIaAr/ov7
 qCaoivTL7KgLOJ40ppt2PIwpC2g7EdeUdPoTtNR3i4XPY++D7d47IpEYnHNmPcMg3kWa
 97bqDKfARDp4cZNhpQsUisrd7bB95/wZgUSPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=X+54KO4dcSOSdd75EeiDI5Jd+L7jcAOwWo1v0+gD2zs=;
 b=ZtirJzQZrrpfbrs+oRAnDtAyPHRw6DKUXQF2xhkRrbWmdipqO1lO3KK8zaBOhSA36W
 kmKhzkv2UxEieTO1ApZrhn7MLds6P+etH/kFM4Dv/zftI6sG5YUU1hEskyQdnhASAfQz
 7kKzZ0CcL6stIeih9U2m6OqiJdKzP/eQ+sEpywtl/bc1yfvXEBEeFN4WK4OltAO513ym
 Q1uF8UwD3L95/ptEnsBeRJbsV2cj4axvOo5hFwB0AduD0o+OhBlzD0HYxYY3cl9MbOXF
 QBhSJjMNJDa5VpwsdFyeMvAfqV7piayZaY/ezTw9mGM5YClf5hcuEefBGjEQVKfvPLNE
 Bc5g==
X-Gm-Message-State: APjAAAVhiSpo0gGHPo4pPl7v5lScKVnAMKxg7VCY0vaz6HFfwGDdGRcs
 rOFShW3aslB7gSHto0Cfq2fkCmyRZyf+FDu/4t5gzLV5
X-Google-Smtp-Source: APXvYqy7agQ6+SO5N1/BNt+6tvO3ZS3mMl79VJjl05eeihkD11CBpDHE7bMaaAM/X4ylXZk3pF7BT50T+XdaOC7kctg=
X-Received: by 2002:a6b:7a42:: with SMTP id k2mr10451830iop.214.1560974007349; 
 Wed, 19 Jun 2019 12:53:27 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50@SN6PR0901MB2318.namprd09.prod.outlook.com>
 <CAL263iz3nDc_eKtbT5gMP-i+dMB_CxFkqxstGV8Bad1m1os2ZQ@mail.gmail.com>
In-Reply-To: <CAL263iz3nDc_eKtbT5gMP-i+dMB_CxFkqxstGV8Bad1m1os2ZQ@mail.gmail.com>
Date: Wed, 19 Jun 2019 12:52:53 -0700
Message-ID: <CANaxSipH1Jbs+utqwhbxWVsnzEvDjRv5tzS4oyXPWV5mT8-WaQ@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RX/TX on 4 channels on N310
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
From: Ali Dormiani via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ali Dormiani <sdormian@eng.ucsd.edu>
Content-Type: multipart/mixed; boundary="===============5463418984948798425=="
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

--===============5463418984948798425==
Content-Type: multipart/alternative; boundary="0000000000003669b5058bb295c9"

--0000000000003669b5058bb295c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What does your network setup look like? Could you please provide the SFP+
card and the motherboard you are using on the host side?

Alternatively, if you are using some adapters (SFP+ to cat 6 RJ45 to
thunderbolt) please provide that as well or instead.

Thanks,

Ali

On Wed, Jun 19, 2019 at 12:21 PM Nate Temple via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Jessica,
>
> What sample rate are you trying to run at per channel?
>
> I would suggest to use DPDK as it will remove a considerable overhead fro=
m
> the Linux networking stack.
>
> I can follow up with you off the list with some notes I have on getting
> DPDK going, we have a pending app note that will be published soon on the
> topic.
>
> Regards,
> Nate Temple
>
>
> On Wed, Jun 19, 2019 at 12:05 PM Jessica Iwamoto via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>>
>>
>> I am getting a lot of underflows when trying to use dual RX/TX on 4
>> channels on the N310. My application creates one multi_usrp object and 8
>> streamers (4 RX, 4 TX) each on a different thread. Samples are received
>> from the RX threads, put into buffers, and then transmitted in the TX
>> threads. I can run it on 1 channel and 2 channels, but when I try using
>> more channels, I get a ton of underflows. When I use 2 channels, I also
>> have to specify the subdevice as =E2=80=9CA:0 B:0 A:1 B:1=E2=80=9D, othe=
rwise I will get a
>> lot of underflows with the default subdevice spec of =E2=80=9CA:0 A:1 B:=
0 B:1=E2=80=9D. I
>> have tried the txrx_loopback_to_file example with 4 channels and it work=
s
>> fine, although this example only uses 2 streamers, each controlling 4
>> channels. Any suggestions on what to try to make this work? I am using U=
HD
>>  v3.13.1.0-rc1.
>>
>>
>>
>> Thanks,
>>
>>
>>
>> Jessica Iwamoto
>>
>> Member of Technical Staff
>>
>> The Aerospace Corporation
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003669b5058bb295c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What does your network setup look like? Could you ple=
ase provide the SFP+ card and the motherboard you are using on the host sid=
e?</div><div><br></div><div>Alternatively, if you are using some adapters (=
SFP+ to cat 6 RJ45 to thunderbolt) please provide that as well or instead.<=
/div><div><br></div><div>Thanks,</div><div><br></div><div>Ali<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Jun 19, 2019 at 12:21 PM Nate Temple via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif=
">Hi Jessica,<br><br>What sample rate are you trying to run at per channel?=
<br><br>I would suggest to use DPDK as it will remove a considerable overhe=
ad from the Linux networking stack. <br><br>I can follow up with you off th=
e list with some notes I have on getting DPDK going, we have a pending app =
note that will be published soon on the topic.<br><br>Regards,<br>Nate Temp=
le<br><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jun 19, 2019 at 12:05 PM Jessica Iwamoto via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-8087954904627979512gmail-m_3238213123341229738gmail-=
m_-5333768796227290719WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am getting a lot of underflows when trying to use =
dual RX/TX on 4 channels on the N310. My application creates one multi_usrp=
 object and 8 streamers (4 RX, 4 TX) each on a different thread. Samples ar=
e received from the RX threads, put
 into buffers, and then transmitted in the TX threads. I can run it on 1 ch=
annel and 2 channels, but when I try using more channels, I get a ton of un=
derflows. When I use 2 channels, I also have to specify the subdevice as =
=E2=80=9CA:0 B:0 A:1 B:1=E2=80=9D, otherwise I will
 get a lot of underflows with the default subdevice spec of =E2=80=9CA:0 A:=
1 B:0 B:1=E2=80=9D. I have tried the txrx_loopback_to_file example with 4 c=
hannels and it works fine, although this example only uses 2 streamers, eac=
h controlling 4 channels. Any suggestions on what
 to try to make this work? I am using UHD<span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:rgb(23,43,77);background:wh=
ite none repeat scroll 0% 0%">=C2=A0v3.13.1.0-rc1.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jessica Iwamoto<u></u><u></u></p>
<p class=3D"MsoNormal">Member of Technical Staff<u></u><u></u></p>
<p class=3D"MsoNormal">The Aerospace Corporation<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003669b5058bb295c9--


--===============5463418984948798425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5463418984948798425==--

