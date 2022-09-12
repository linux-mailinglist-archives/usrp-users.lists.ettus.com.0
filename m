Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 418825B61DD
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 21:49:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 434133811A2
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 15:49:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663012168; bh=XN9rVMM+DhIP5ofw1v17W02eD8EwGn7vkGyQ7SK4mRI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yxXf0lAW11rBalfhEyL9srnpqxwBT57q7llZp6pm8WNBjAujLuOxQgSyld4lcbaX+
	 p6KqxUdc7YhMVW5QAaSMAgrW/++nMIlfwAJg13LWFNtTi/tYAT0ZdEdhs0IwvbCp++
	 src26McrO3P3gTVo/H7n0RmAKaLwmrgSIhcmjNug+XszWXa9Cci2dMQH+x2jiw9inA
	 vVQU80f5pr92fcPRhwhAMW08avv7BkwgJ5R7HeA7Jg8rHLNII9DccXWAOW0UC8hD/f
	 491fmI0eiVxcwQEI9DoTgnYEF8tcOO4Llk/LuVrpglscmcuoV5pX7rv8nP853obVP3
	 6ZpsW3dMXLnGA==
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D214380C19
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 15:48:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Z6d3f36y";
	dkim-atps=neutral
Received: by mail-vs1-f48.google.com with SMTP id k2so10135080vsk.8
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 12:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=CXuvTQiurWFfAQ1GkzxLHbd4V2KnSGpTvddkgwoUMnI=;
        b=Z6d3f36y0VXZ+sdHFEhGjGZqVPNmZWOGrj+rqwsgCrfkCfVUT/sfTIqqSAudeVP56T
         xCig7Y1Mmo6k+xUMQnOFyel/pbwem/6ow4u/Kxtbb+cgAotz0YXzJO0Mg77tTczzfN4O
         p7teHSVeYmWA3uzn43yEiPVt6to8XAIhqIJkc3p1uyStiqyahf/dAQaOa0FpsWjJQRU7
         JCxvhgUdUVCpoRNfVW9L1KcFFbn+Wy/xDqB8rJAt62he5LuendXRCAXFkMc/XxWtv1ZN
         DCjAk9Wx1qz+B7irxNVYvh6obu7FulsPfjeIAL9nbZHuRh9VXEt+JT05hsmzMwnHOpdC
         kQGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=CXuvTQiurWFfAQ1GkzxLHbd4V2KnSGpTvddkgwoUMnI=;
        b=dN4sGvrWNBvjoEdvfLC60hiaTvsz4uShL/nPXXEsesGryBBPKLix6AuGGpSEoGcU+y
         ZRFtL/exRRTOz4CHn/VGZgaYtahYb2uL+AaB9eYPasFCI1bERkRWfZqCfi09G6jg9Zb4
         YyD0HsnpdmFNnXuhq0uIRYPX/QgAPlnzEJnbQi2YCYgrUdY0Ma0L8QqghQYaxEUtceyR
         K8hCwrL2R/6FZDn9n1KVlwjnyVUGqXMY0hhcin5aHUqqMkazpEZ5Z51rD5cMgE51to1B
         JPAqAJtkE7xlTGq5gtUCmp05zcwZBv+WKP8+w2QmR52oQIsqrWRcvfYg0n9esH202gMp
         zJlQ==
X-Gm-Message-State: ACgBeo2IytTiM/ycrWYaKuq+268QSuy2PommnLI6XI/0tumS0icEFuWg
	WtaMchZX1VspsZIq1eeZVMd3kjPIhWQR1iv7Wngs8f2B
X-Google-Smtp-Source: AA6agR63WdyJ+H84aAdbPi7ycig1rldjwcJk5fJMUnw84dr2k3jCMuRBOhJ3eYXgMG4bqP0NME1e4m8Zki93VnnyMFY=
X-Received: by 2002:a67:d59e:0:b0:398:8255:3124 with SMTP id
 m30-20020a67d59e000000b0039882553124mr2062263vsj.40.1663012099001; Mon, 12
 Sep 2022 12:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com> <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
In-Reply-To: <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Mon, 12 Sep 2022 15:47:43 -0400
Message-ID: <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: LWEJFGQCOBSEHAUR6JCQYQ6IGYC4FDGA
X-Message-ID-Hash: LWEJFGQCOBSEHAUR6JCQYQ6IGYC4FDGA
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LWEJFGQCOBSEHAUR6JCQYQ6IGYC4FDGA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8428599198915592003=="

--===============8428599198915592003==
Content-Type: multipart/alternative; boundary="0000000000006b259405e8802d8d"

--0000000000006b259405e8802d8d
Content-Type: text/plain; charset="UTF-8"

Hi Kevin,

What are the sample rates for the 5 outputs? What connection are you using
to your host PC, 1 GigE or 10 GigE?

Jonathon

On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com> wrote:

> Hi Jonathon,
>
> I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
> outputs). I've tried both static and dynamic routing from the radio block.
> I.e. the static route version:
>
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/Radio#0:0==>0/multiddc#0:0
> |   |   * 0/multiddc#0:0==>0/SEP#2:0
> |   |   * 0/multiddc#0:1==>0/SEP#3:0
> |   |   * 0/multiddc#0:2==>0/SEP#4:0
> |   |   * 0/multiddc#0:3==>0/SEP#5:0
> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>
>
> On the input side it is all at the radio rate, but I hope my core is being
> clocked at 214 MHz.
>
> When I simulate my IP core (which includes the AXI streaming interfaces)
> it looks ok.
>
> Regards, Kevin
>
> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hello Kevin,
>>
>> What device are you using and what does your flowgraph look like? What
>> sample rate are you running at? If your block is running at the radio
>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>> input sample every clock cycle on average.
>>
>> Jonathon
>>
>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com> wrote:
>>
>>> Hi All,
>>>
>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when used
>>> in an RFNoC project.
>>>
>>> The core responds correctly when simulated outside the RFNoC
>>> environment. (I can see correct output, the AXI streaming signalling,
>>> back-pressure when required, etc.)
>>>
>>> I'm not sure how to go about debugging this, and am not yet familiar
>>> enough with RFNoC to know what to ask.
>>>
>>> I have been thinking it was the core not being reset or clocked
>>> correctly, but this is how it gets instantiated:
>>>
>>>   multiddc multiddc_i (
>>>     //   - Using different clocks for the IP core and the AXI interface.
>>> The IPCore_Clk and AXILite_ACLK must be
>>>     //     synchronous and connected to the same clock source. The
>>> IPCore_RESETN and AXILite_ARESETN must be
>>>     //     connected to the same reset source. See Synchronization of
>>> Global Reset Signal to IP Core Clock Domain.
>>>     .IPCORE_CLK                (axis_data_clk),
>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>
>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>
>>> The core YAML file describes the clock as:
>>>
>>> data:
>>>   fpga_iface: axis_chdr
>>>   clk_domain: ce
>>>
>>> In the project YAML file:
>>>
>>> clk_domains:
>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,    dstport:
>>> radio }
>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0, dstport: ce
>>> }
>>>
>>> Is there something that might be an obvious first place to check?
>>>
>>> Many thanks, Kevin
>>>
>>> --
>>> Kevin Williams
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>
> --
> Kevin Williams
>

--0000000000006b259405e8802d8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Kevin,<div><br></div><div>What are the sample rates for=
 the 5 outputs? What connection are you using to your host PC, 1 GigE or 10=
 GigE?</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:38 =
PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com">zs1kwa@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div><br></div><div>I&#39;ve g=
ot an x310. The flowgraph is a simple radio-&gt;multiddc-&gt;(to 5x outputs=
). I&#39;ve tried both static and dynamic routing from the radio block. I.e=
. the static route version:</div><div><br></div><div><div>|=C2=A0 =C2=A0 /<=
/div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static connections on t=
his device:</div><div>|=C2=A0 =C2=A0|</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=
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
 Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=
=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Kevin,<div><br=
></div><div>What device are you using and what does your flowgraph look lik=
e? What sample rate are you running at? If your block is running at the rad=
io sample rate (e.g. 200 MSPS on a X310), your block will need to process o=
ne input sample every clock cycle on average.</div><div><br></div><div>Jona=
thon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams &lt;<a href=3D"mai=
lto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi All,<d=
iv><br></div><div>I&#39;ve got an IP core that is causing an &quot;ERROR_CO=
DE_OVERFLOW&quot; when used in an RFNoC project.</div><div><br></div><div>T=
he core responds correctly when simulated outside the RFNoC environment. (I=
 can see correct output, the AXI streaming signalling, back-pressure when r=
equired, etc.)</div><div><br></div><div>I&#39;m not sure how to go about de=
bugging this, and am not yet familiar enough with RFNoC to know what to ask=
.</div><div><br></div><div>I have been thinking it was the core not being r=
eset or clocked correctly, but this is how it gets instantiated:</div><div>=
<br></div><div><div>=C2=A0 multiddc multiddc_i (</div><div>=C2=A0 =C2=A0 //=
=C2=A0 =C2=A0- Using different clocks for the IP core and the AXI interface=
. The IPCore_Clk and AXILite_ACLK must be=C2=A0<br></div><div>=C2=A0 =C2=A0=
 //=C2=A0 =C2=A0 =C2=A0synchronous and connected to the same clock source. =
The IPCore_RESETN and AXILite_ARESETN must be=C2=A0</div><div>=C2=A0 =C2=A0=
 //=C2=A0 =C2=A0 =C2=A0connected to the same reset source. See Synchronizat=
ion of Global Reset Signal to IP Core Clock Domain.</div><div>=C2=A0 =C2=A0=
 .IPCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_d=
ata_clk),</div><div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div><div><br></div><div>=C2=A0 =C2=
=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk=
),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0(~axis_data_rst),</div></div><div><br></div><div>The core YAML file d=
escribes the clock as:</div><div><br></div><div><div>data:</div><div>=C2=A0=
 fpga_iface: axis_chdr</div><div>=C2=A0 clk_domain: ce</div></div><div><br>=
</div><div>In the project YAML file:</div><div><br></div><div><div>clk_doma=
ins:</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radio, dstblk: =
radio0,=C2=A0 =C2=A0 dstport: radio }</div><div>=C2=A0 =C2=A0 - { srcblk: _=
device_, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, dstport: ce }</div></=
div><div><br></div><div>Is there something that might be an obvious first p=
lace to check?</div><div><br></div><div>Many thanks, Kevin<br clear=3D"all"=
><div><br></div>-- <br><div dir=3D"ltr">Kevin Williams</div></div></div></d=
iv></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div>

--0000000000006b259405e8802d8d--

--===============8428599198915592003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8428599198915592003==--
