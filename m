Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C533D5B61C7
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 21:39:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C77F380FFB
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 15:39:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663011583; bh=7pJ6eu7rII/NBOLSSCvqY5byNYr22TG/YSuAVKd4HBI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Wz3Iz7tsHKUN9qzB0rQCtnz8KACmfIIsGg25b3l40l/Oa3U7AqNHLtls020RdVywo
	 ywTYcg/FIQQSyZ5fX48aw05Ev1dTBcWXvsflRFwnxaF3+pQ+5cQluSulqxV0ER3yXl
	 ssmT5b0DbrczJnT+4mdCLO63OlZ8NvmgFXFvfQitbQYg6/9ZFjuL8AsB/gE4+DsgVs
	 DnLsYuY6MxmwoQlUWPp6p3T6KfYiVrgdiSFEkoZJGJB6AHpNUUxQCYANrvvr1pAgeK
	 8gfwfmzt6tAmVrzB8GdLyzkNQmDmfm+WE9tHG64vjpbVTszYjuTD3TQBtoXaPYP5ql
	 fgEl7BuPDPUHA==
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 08562380E26
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 15:38:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bPoqIhzq";
	dkim-atps=neutral
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-127ba06d03fso26202643fac.3
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 12:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=vLwjiO5UvZkxhKUgZgpPoGukBYb6Ee+9VamEALZOZwE=;
        b=bPoqIhzqQGmCj43VduV7L0cuis0Nj0FPhUqLL53Xi8YSCF6nEu2r/IBOSrho+iBTkP
         z71u+EX7Ur/G3Y0txyLIAE53VsYVXQvLnvtUV2oCauGV1ZzoXizAs2fkIc0hmjTTNqmK
         wnSCnAH00/3DrMzcFs6xRC31aBm43q/R7oT8WQQvmdIDT6CEifsGnBp3IBIFLOcerwOY
         RY6/US/MWvDpvgdvlfFRVxzihb/KHJcPvIqdBQXl5oEXbuKHUk0yK1smW6eSB8DxPN4b
         ageKKzVch5H3aRg4goT29CqhS1GbIsm0AnHBr95XLvey6J3ZlblhWuHUc0hbjZeDF7YN
         cSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=vLwjiO5UvZkxhKUgZgpPoGukBYb6Ee+9VamEALZOZwE=;
        b=RdmCc5a3+DK3y72vMdDvD8Go4jG8T2UZdAEYZhynS6nsoutMhzRp8KdwhhToLUNjCO
         dMyKnXi+P3ojbyF6MsUaoq0HRfDlUfEE1cazBOBbZKj8vMEtjhKn3S+C6d0VfJAN9brJ
         Y9qOPhM3jISTV+R+7+gnGY8SQLBVA6oFg8kM1ilaI5YuwxyfoGUzVk5qqT7EmbY8Vqek
         oZFMS9yADpAF7b7Pl61p9VLo6TWKq+w/w1EyQVxjQy6VxabQK8MWXVx8bZo6q0Qvt4cI
         WCttG6cSKyQ9Pr91DfadeLbRaC/Z0XkOwYYV0JpAHbJV5DyTksaevmpGkS/k1/BKn2XM
         zBsA==
X-Gm-Message-State: ACgBeo1JY6DhVDpvIDLUscxXEVvAMcKS4XerrnYr4sY4eKZZjUWXuBdw
	elAE3TlwrHUS+7QKUA+JpZL0zox6E/p/re4AyyRYMyPyFsFEbA==
X-Google-Smtp-Source: AA6agR5/qQnUzz8gQzqIqvxgtBqcMGWErGkxcZLNmUe3GJ0tg+BBd0+He3TXCO5liyWlGQVNk76F9RF0Q2P4PCwVyI0=
X-Received: by 2002:a05:6870:2189:b0:127:50a6:14b2 with SMTP id
 l9-20020a056870218900b0012750a614b2mr13086016oae.178.1663011516097; Mon, 12
 Sep 2022 12:38:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
In-Reply-To: <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Mon, 12 Sep 2022 21:38:00 +0200
Message-ID: <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: Q6HIWFTDQSLWHAROXVC324SE7OPGLE7M
X-Message-ID-Hash: Q6HIWFTDQSLWHAROXVC324SE7OPGLE7M
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q6HIWFTDQSLWHAROXVC324SE7OPGLE7M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8489637478145020974=="

--===============8489637478145020974==
Content-Type: multipart/alternative; boundary="000000000000acaa8905e8800a9e"

--000000000000acaa8905e8800a9e
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,

I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
outputs). I've tried both static and dynamic routing from the radio block.
I.e. the static route version:

|    /
|   |       Static connections on this device:
|   |
|   |   * 0/Radio#0:0==>0/multiddc#0:0
|   |   * 0/multiddc#0:0==>0/SEP#2:0
|   |   * 0/multiddc#0:1==>0/SEP#3:0
|   |   * 0/multiddc#0:2==>0/SEP#4:0
|   |   * 0/multiddc#0:3==>0/SEP#5:0
|   |   * 0/multiddc#0:4==>0/SEP#6:0


On the input side it is all at the radio rate, but I hope my core is being
clocked at 214 MHz.

When I simulate my IP core (which includes the AXI streaming interfaces) it
looks ok.

Regards, Kevin

On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hello Kevin,
>
> What device are you using and what does your flowgraph look like? What
> sample rate are you running at? If your block is running at the radio
> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
> input sample every clock cycle on average.
>
> Jonathon
>
> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com> wrote:
>
>> Hi All,
>>
>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when used in
>> an RFNoC project.
>>
>> The core responds correctly when simulated outside the RFNoC environment.
>> (I can see correct output, the AXI streaming signalling, back-pressure when
>> required, etc.)
>>
>> I'm not sure how to go about debugging this, and am not yet familiar
>> enough with RFNoC to know what to ask.
>>
>> I have been thinking it was the core not being reset or clocked
>> correctly, but this is how it gets instantiated:
>>
>>   multiddc multiddc_i (
>>     //   - Using different clocks for the IP core and the AXI interface.
>> The IPCore_Clk and AXILite_ACLK must be
>>     //     synchronous and connected to the same clock source. The
>> IPCore_RESETN and AXILite_ARESETN must be
>>     //     connected to the same reset source. See Synchronization of
>> Global Reset Signal to IP Core Clock Domain.
>>     .IPCORE_CLK                (axis_data_clk),
>>     .IPCORE_RESETN             (~axis_data_rst),
>>
>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>
>> The core YAML file describes the clock as:
>>
>> data:
>>   fpga_iface: axis_chdr
>>   clk_domain: ce
>>
>> In the project YAML file:
>>
>> clk_domains:
>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,    dstport:
>> radio }
>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0, dstport: ce }
>>
>> Is there something that might be an obvious first place to check?
>>
>> Many thanks, Kevin
>>
>> --
>> Kevin Williams
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

-- 
Kevin Williams

--000000000000acaa8905e8800a9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div><br></div><div>I&#39;ve =
got an x310. The flowgraph is a simple radio-&gt;multiddc-&gt;(to 5x output=
s). I&#39;ve tried both static and dynamic routing from the radio block. I.=
e. the static route version:</div><div><br></div><div><div>|=C2=A0 =C2=A0 /=
</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static connections on =
this device:</div><div>|=C2=A0 =C2=A0|</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0* 0/Radio#0:0=3D=3D&gt;0/multiddc#0:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0* 0/multiddc#0:0=3D=3D&gt;0/SEP#2:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0* 0/multiddc#0:1=3D=3D&gt;0/SEP#3:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0* 0/multiddc#0:2=3D=3D&gt;0/SEP#4:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0* 0/multiddc#0:3=3D=3D&gt;0/SEP#5:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0* 0/multiddc#0:4=3D=3D&gt;0/SEP#6:0</div></div><div><br></div><div><b=
r></div><div>On the input side it is all at the radio rate, but I hope my c=
ore is being clocked at 214 MHz.</div><div><br></div><div>When I simulate m=
y IP core (which includes the AXI streaming interfaces) it looks ok.</div><=
div><br></div><div>Regards, Kevin</div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 21:29,=
 Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonatho=
n.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hello Kevin,<div><br></div><div>What de=
vice are you using and what does your flowgraph look like? What sample rate=
 are you running at? If your block is running at the radio sample rate (e.g=
. 200 MSPS on a X310), your block will need to process one input sample eve=
ry clock cycle on average.</div><div><br></div><div>Jonathon</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, S=
ep 12, 2022 at 9:09 AM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.co=
m" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi All,<div><br></div><div>I=
&#39;ve got an IP core that is causing an &quot;ERROR_CODE_OVERFLOW&quot; w=
hen used in an RFNoC project.</div><div><br></div><div>The core responds co=
rrectly when simulated outside the RFNoC environment. (I can see correct ou=
tput, the AXI streaming signalling, back-pressure when required, etc.)</div=
><div><br></div><div>I&#39;m not sure how to go about debugging this, and a=
m not yet familiar enough with RFNoC to know what to ask.</div><div><br></d=
iv><div>I have been thinking it was the core not being reset or clocked cor=
rectly, but this is how it gets instantiated:</div><div><br></div><div><div=
>=C2=A0 multiddc multiddc_i (</div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0- Usin=
g different clocks for the IP core and the AXI interface. The IPCore_Clk an=
d AXILite_ACLK must be=C2=A0<br></div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =
=C2=A0synchronous and connected to the same clock source. The IPCore_RESETN=
 and AXILite_ARESETN must be=C2=A0</div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =
=C2=A0connected to the same reset source. See Synchronization of Global Res=
et Signal to IP Core Clock Domain.</div><div>=C2=A0 =C2=A0 .IPCORE_CLK=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk),</div>=
<div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0(~axis_data_rst),</div><div><br></div><div>=C2=A0 =C2=A0 .AXI4_Lite_A=
CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=
=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_=
rst),</div></div><div><br></div><div>The core YAML file describes the clock=
 as:</div><div><br></div><div><div>data:</div><div>=C2=A0 fpga_iface: axis_=
chdr</div><div>=C2=A0 clk_domain: ce</div></div><div><br></div><div>In the =
project YAML file:</div><div><br></div><div><div>clk_domains:</div><div>=C2=
=A0 =C2=A0 - { srcblk: _device_, srcport: radio, dstblk: radio0,=C2=A0 =C2=
=A0 dstport: radio }</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport:=
 ce,=C2=A0 =C2=A0 dstblk: multiddc0, dstport: ce }</div></div><div><br></di=
v><div>Is there something that might be an obvious first place to check?</d=
iv><div><br></div><div>Many thanks, Kevin<br clear=3D"all"><div><br></div>-=
- <br><div dir=3D"ltr">Kevin Williams</div></div></div></div></div></div></=
div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Kevin Williams</div>

--000000000000acaa8905e8800a9e--

--===============8489637478145020974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8489637478145020974==--
