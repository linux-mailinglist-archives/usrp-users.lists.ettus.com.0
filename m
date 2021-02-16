Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B86A31C61F
	for <lists+usrp-users@lfdr.de>; Tue, 16 Feb 2021 06:04:56 +0100 (CET)
Received: from [::1] (port=45726 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBsXc-0007e4-Jt; Tue, 16 Feb 2021 00:04:52 -0500
Received: from mail-pf1-f171.google.com ([209.85.210.171]:36910)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tuanmcx58@gmail.com>) id 1lBsXY-0007Ws-Uq
 for usrp-users@lists.ettus.com; Tue, 16 Feb 2021 00:04:49 -0500
Received: by mail-pf1-f171.google.com with SMTP id b145so5446194pfb.4
 for <usrp-users@lists.ettus.com>; Mon, 15 Feb 2021 21:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iccOCZT9O/IELrMjxtrLm/hWnuCF4kaIXUqF6c/AECU=;
 b=Ib+DXvngIQ20uWSNJgUcfKHYHrOiSyKrVW3l8PWX2Pbi0uoFsn9Avitz5rewiypjNO
 Z0RX4dVceKvG5Lgi43naIWyrT3DcBBIA+OvTSKNHWk6+ilOgUd7SwHytbjEI/Zr8qgXR
 6Tpw90ZqS7hJ493aeUoFAXdkdtUpcEa9RDis4TU9qrcjY3wKBMUAbc9p1wS0c1v1052U
 dJbJIt538mkWGqrDfdtROZKzGr7Cf1TtMkxlMhMSXsdZGv6g7z6GCQTm4FHuQkscZF9T
 ckmy4wnT2mwhrGX2AcHkkDIw8VRvt/4TkxmBzBzS+mcdTKzV9k4sOENs0ZCnR1RKREL3
 x3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iccOCZT9O/IELrMjxtrLm/hWnuCF4kaIXUqF6c/AECU=;
 b=Wuyv+BKGC2HJZAn/vZRC8XHvZ4o/LfdRzaaUnRQHyVytyjbB1/dlzcULOklQCz0bkv
 JmTrVMWh5YgHB6GDa+TOK5K2vboTkm411sv6ZVzC9QlmUfS+skW5DI0SRNRRlyBiqdxT
 KTIuUNWic/pHTkw1DQZLFCAlRcFORLiHMkkSDO2R8a7RxM0EfVEUh49Yw4I1rybwv3VJ
 b9tfTtiuEWD163ewRLvQqiLlsDyEceO5yFk3lUlHAMey4mrL8B+OT2waaXu9pdMLLyu7
 cw3E7laMb8jP82LjTEF1W6VyOhmoqoszXo3ufPUaj23EF+1n2XT0NoPmF3h7IAeg6OK5
 4bgA==
X-Gm-Message-State: AOAM531KbJkwqDXIg+COyMvcRD/Bk57nirZMZPNqvDkS6CjIx9XICCxE
 8rcHq2tJYaFCIew3NTNAyo1VlBsKOQKoesm0bd4=
X-Google-Smtp-Source: ABdhPJwVNS0JdlhQnfljHHAbIK7L1cb/at0PQTNn/kQjqPoQymWE7CxcPvj7t7Lp3pr8cQYf6BxJjLAHlcjLbDIV6XQ=
X-Received: by 2002:a63:ec4d:: with SMTP id r13mr17665509pgj.53.1613451847817; 
 Mon, 15 Feb 2021 21:04:07 -0800 (PST)
MIME-Version: 1.0
References: <20210108175838.vxaqctdxyaahty72@barbe>
 <20210121230057.aswz7r7zngpxbthy@barbe>
 <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
In-Reply-To: <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
Date: Tue, 16 Feb 2021 14:03:57 +0900
Message-ID: <CAJZBg9UE2GzKH5HjjBq60k0XvQ_Lk0ex10aHba0G13mtaR0vpw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Subject: Re: [USRP-users] Add Xilinx IP in OOT RFNoC UHD4.0
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
From: Tuan Hoang Dinh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tuan Hoang Dinh <tuanmcx58@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5175752893849255759=="
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

--===============5175752893849255759==
Content-Type: multipart/alternative; boundary="000000000000405cbd05bb6d08ec"

--000000000000405cbd05bb6d08ec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Wade,

I would like to add Xilinx IP to RFNoC module and still have no idea to do
that.
Could you share your example to help me get started?

Thank you so much!

Tuan

V=C3=A0o Th 7, 23 thg 1, 2021 va=CC=80o lu=CC=81c 02:22 Wade Fife via USRP-=
users <
usrp-users@lists.ettus.com> =C4=91=C3=A3 vi=E1=BA=BFt:

> Yes, I have done it. I'll share an example with you. Putting your IP
> in-tree is also an option.
>
> Thanks,
>
> Wade
>
> On Thu, Jan 21, 2021 at 5:01 PM C=C3=A9dric Hannotier via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Dear all,
>>
>> On 08/01/21 18:58, C=C3=A9dric Hannotier via USRP-users wrote:
>> > Dear all,
>> >
>> > I am following the RFNoC on UHD4.0 wiki [1],
>> > but there is no mention on how to add Xilinx IPs in the OOT.
>> >
>> > When following [2],
>> > after copy-pasting from "host/example/rfnoc-example",
>> > and following [3] to setup basic shell env/script,
>> > how can I add for example IP "xilinx.com:ip:mult_gen:12.0"?
>> >
>> > Furthermore, how do I add that IP "module wise" or "block wise",
>> > i.e. inside rfnoc-example or inside rfnoc-example/fpga/rfnoc_block_gai=
n?
>> >
>> > There is viv_create_ip [3], but it just creates the tree,
>> > it does not link that new IP with the current OOT tree.
>> >
>> > [1] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>> > [2]
>> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_Your=
_Own_OOT_Module
>> > [3] https://files.ettus.com/manual/md_usrp3_vivado_env_utils.html
>>
>> Unfortunatly, I am still facing that issue.
>> Has anyone managed to add a Xilinx IP into an OOT RFNoC block?
>>
>> --
>>
>> C=C3=A9dric Hannotier
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

--000000000000405cbd05bb6d08ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Wade,<div><br></div><div>I would like to add Xilinx I=
P to RFNoC module and still have no idea to do that.</div><div>Could you sh=
are your example to help me get started?</div><div><br></div><div>Thank you=
 so much!</div><div><br></div><div>Tuan</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">V=C3=A0o Th 7, 23 thg 1, 2021 =
va=CC=80o lu=CC=81c 02:22 Wade Fife via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =C4=91=C3=A3 v=
i=E1=BA=BFt:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Yes, I have done it. I&#39;ll share an example with you.=
 Putting your IP in-tree is also an option.<br></div><div><br></div><div>Th=
anks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 21, 2021 at 5:01 P=
M C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear all,<br>
<br>
On 08/01/21 18:58, C=C3=A9dric Hannotier via USRP-users wrote:<br>
&gt; Dear all,<br>
&gt; <br>
&gt; I am following the RFNoC on UHD4.0 wiki [1],<br>
&gt; but there is no mention on how to add Xilinx IPs in the OOT.<br>
&gt; <br>
&gt; When following [2],<br>
&gt; after copy-pasting from &quot;host/example/rfnoc-example&quot;,<br>
&gt; and following [3] to setup basic shell env/script,<br>
&gt; how can I add for example IP &quot;xilinx.com:ip:mult_gen:12.0&quot;?<=
br>
&gt; <br>
&gt; Furthermore, how do I add that IP &quot;module wise&quot; or &quot;blo=
ck wise&quot;,<br>
&gt; i.e. inside rfnoc-example or inside rfnoc-example/fpga/rfnoc_block_gai=
n?<br>
&gt; <br>
&gt; There is viv_create_ip [3], but it just creates the tree,<br>
&gt; it does not link that new IP with the current OOT tree.<br>
&gt; <br>
&gt; [1] <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_=
4.0" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Getting_Star=
ted_with_RFNoC_in_UHD_4.0</a><br>
&gt; [2] <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_=
4.0#Creating_Your_Own_OOT_Module" rel=3D"noreferrer" target=3D"_blank">http=
s://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_Your_Own_OO=
T_Module</a><br>
&gt; [3] <a href=3D"https://files.ettus.com/manual/md_usrp3_vivado_env_util=
s.html" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual=
/md_usrp3_vivado_env_utils.html</a><br>
<br>
Unfortunatly, I am still facing that issue.<br>
Has anyone managed to add a Xilinx IP into an OOT RFNoC block?<br>
<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
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

--000000000000405cbd05bb6d08ec--


--===============5175752893849255759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5175752893849255759==--

