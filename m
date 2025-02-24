Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E72A42004
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 14:12:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4B58538630A
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 08:12:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740402741; bh=s7jHeGfxiJD0iAw5U4/8h275a0paI/F2B48gyJf7rVE=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Xmxmqdbw8YxC1N+CZSu955+57TDUBR7HBwMlPFYyobPL1MGhGtkIGkCpaC8G28efX
	 6K8U2lGrCPhM/NAQlq3La1dRptu52/3PXipJ9ig1lEjGmKXaFc7tYxFsIIcZ3LXzsE
	 Eyd5UAMfUSz9E4m3pjwcjZVvp0vHIoFo8kDA2kW7gBH8x4GgKQR2ZqCVm4ivVHhgoE
	 s8ZE7hc7FiPTI357FamqH7mYH4gvFEfxMCQR9vcwUVd6MSirsBEq/BW+JV3e8VGIpK
	 zRWlE7R/DqTLBX52up8xmUxnH5yUww0znUMrco7hhVR/S3eATT7NjtnbpguxRT4w9A
	 KGaiQiNwi/5fg==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 452E2386203
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 08:11:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="tzzfolWt";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e033c2f106so5785713a12.3
        for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 05:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740402680; x=1741007480; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjoVdvpU/R9PIh8fE3iyyZ/b7fFPbC0ds0mRKHrojUw=;
        b=tzzfolWtwxQpVzquXi5S6MSty0S9dF2Z5Mtu1WiHquyfOWz30RL87fR3Yr6chk/SBJ
         OVlTRtzeX4XOlrqhO2w4h0MQKCVXWd5ENJfZImmnqQf/It8YtpHpLXZD//igMPD2/TXT
         kw9yuAEYxfZ3bKv9ZhXzhqJ8DCM5lY4crfWPLG+l0Y2qJfdIcimX01qIPtQHssAWUpYm
         vu9c6WYEoZ8EaP7i4QwykJEyk+WupXl0PGNLGRrZWwXth2wCScTIvnxahFMEtypTYy4I
         3dC7jqFGXstscfGWXhHE+pS2BaggrpqQqg1mGSljSfwjJh2tF65wdYk3G15gM9cZPkWn
         QSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740402680; x=1741007480;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yjoVdvpU/R9PIh8fE3iyyZ/b7fFPbC0ds0mRKHrojUw=;
        b=N+E6Mj0Kqll14o+bGK20L5qtbFxVnIARTG2IuqaySKT7oQubO5EFjLU1y5SwcVieTJ
         H4RwsizTnJurpJgieAbK7eByuuXuMQPpgPP7NabzoYJW/eg8CJ2em3Jw26kbSVhEQzEj
         7xjupkBAMmFJPbKHjzQrux5wQ4KJOLy61BF0FW1ikgKMk3JjF5KPdtklfG1s/9N1eXtA
         BPCkHg17ArO9TIyq7t83v9zQ3tpUOcAN/WCw+AYvc7tDGmAUtDDO8U+BzhKMJEmNk1uo
         8qbrzCpQFjV8uCMXoZdKF1cEzCwwWar66Ze+/3ycCcb5nw3QkHx2cusDNDxhPBbkpxQQ
         X/og==
X-Gm-Message-State: AOJu0YyZxzb5GFkDLhT2fjf6OTy5DY59ytXBJhug/oxDuQFURGT9SE8Q
	e9u3sYhcZOFhN2vuLgHS+xqxRI+w58fGsLxwwTXIFYgMy7vm8vC59xJW4kkAp1xsXHbd/hccysl
	Xun+tgg1aCEQHJQjXlBF715n0sN6BHT9x4h7zb2KUi72r3cFBlDi3wA==
X-Gm-Gg: ASbGncss6xw/VfVh7vzPIkltUdualwVSd/fZPY8U2VELA2MKKh/afCB3cEE/Y11S8xd
	montOubHH5cUQQi+8Z7P4Kr3ON6CzxqdkLeGSIYlI/O6j4LBfv6iNy4EbbKWzax3gxalXDUsv9N
	IyZ0QqZKIP0V/0dvvFw6lLZ4KZQ3d+BQvnK/ffLA==
X-Google-Smtp-Source: AGHT+IH4DT8BUmPH3Jd5b/FK68LXlANgrNgVKM3MlDOP9rNuNtU4cK4XhygIZCZjkT88+ttTeC7j8KL2Bi6vy/HlclU=
X-Received: by 2002:a05:6402:4606:b0:5dc:9589:9f64 with SMTP id
 4fb4d7f45d1cf-5e0b7107237mr31124901a12.13.1740402679578; Mon, 24 Feb 2025
 05:11:19 -0800 (PST)
MIME-Version: 1.0
References: <8637a4f585a741779e8e57b01ac12f75@vastech.co.za>
 <CAFOi1A4YNrE3jzepMjZhDtT0rhn+=jzML4xmy5SOg66gi2iapA@mail.gmail.com> <73e1614fe17841cca2e52d02fd11739c@vastech.co.za>
In-Reply-To: <73e1614fe17841cca2e52d02fd11739c@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 24 Feb 2025 14:11:08 +0100
X-Gm-Features: AWEUYZmNNnvhqJlkRhjF-mqkhzfZTQf2EAXHRde1oC465stcW7H9I_M_z1G_fA0
Message-ID: <CAFOi1A7Rn=EXWcNz70imcfMdF2NX4zfb_dntKyy3T6G_jOezQg@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: HOYNLPUH7TZIZFDN3D46C2JUH4YE3CR5
X-Message-ID-Hash: HOYNLPUH7TZIZFDN3D46C2JUH4YE3CR5
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: register custom rfnoc block names
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HOYNLPUH7TZIZFDN3D46C2JUH4YE3CR5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5209610523885557562=="

--===============5209610523885557562==
Content-Type: multipart/alternative; boundary="0000000000007b9c79062ee313de"

--0000000000007b9c79062ee313de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK, sounds like you're more than halfway there. Also, you can ignore
UHD_REGISTER_EXTENSION() for now, that's for a different purpose.

The way I've been testing "simple" applications is through
probe_gain_block.cpp. The way I've been testing "complex" applications is
through the GNU Radio integration. I need to see if I can reproduce your
issue that way.

What happens when you do try
graph->find_blocks<rfnoc::vastech::multiddc_block_control> ()?

In your complex case, can you try LD_PRELOADing the rfnoc-vastech OOT
module?

--M



On Fri, Feb 21, 2025 at 3:42=E2=80=AFPM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi Martin,
>
>
>
> I did use the new UHD 4.8 rfnoc_modtool for this block.
>
>
>
> I have the =E2=80=9CUHD_RFNOC_BLOCK_REGISTER_DIRECT=E2=80=9D macro as in =
here:
>
>
>
> UHD_RFNOC_BLOCK_REGISTER_DIRECT(
>
>     multiddc_block_control, 0x666F0002, "MultiDDC", CLOCK_KEY_GRAPH,
> "bus_clk");
>
>
>
> I note that it is not the macro =E2=80=9CUHD_REGISTER_EXTENSION=E2=80=9D.
>
>
>
> It is curious, because a simple C++ application I built does recognize th=
e
> new block, and resolves its name in the static connections query, and doe=
s
> correctly connect that block in my graph.
>
>
>
> In a more complex application but compiled on the same host this block is
> not found, and the static link report also only shows it as =E2=80=9C*
> 0/Block#0:0=3D=3D>0/SEP#2:0=E2=80=9D etc.
>
>
>
> I also note that the more complex application is linked to my rfnoc drive=
r
> library.
>
>
>
> I=E2=80=99m not sure where to look next as I have a python script which c=
onfirms
> the noc_id read back from the usrp is the same as what I expect in the
> driver, and I also tried the
> =E2=80=9Cgraph->find_blocks<rfnoc::vastech::multiddc_block_control>=E2=80=
=9D instead of
> just uhd::rfnoc::block_id_t(0, "MultiDDC", 0) which also does not find
> blocks of the type in question.
>
>
>
> Kind regards, Kevin
>
>
>
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Friday, 21 February 2025 16:21
> *To:* Kevin Williams <kevin.williams@vastech.co.za>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL]Re: [USRP-users] register custom rfnoc block names
>
>
>
> Hey Kevin,
>
>
>
> yes, you need that macro, as here:
> https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-gain=
/lib/gain_block_control.cpp#L55-L56
> <https://url.za.m.mimecastprotect.com/s/EoS3C98BNNi2ZMRhofXTqRd1S?domain=
=3Dgithub.com>
>
>
>
> Are you using rfnoc_modtool? Because rfnoc_modtool add should create all
> the relevant boilerplate.
>
>
>
> If you're using the latest rfnoc_modtool, then the OOT module will also
> have all the hooks in place to automatically register your OOT with UHD, =
no
> need for LD_PRELOAD.
>
>
>
> --M
>
>
>
> On Fri, Feb 21, 2025 at 4:50=E2=80=AFAM Kevin Williams <
> kevin.williams@vastech.co.za> wrote:
>
> Hi Everyone,
>
> I think this is my last hurdle.
>
> I have a C++ application using my custom rfnoc block drivers, but the
> "LD_PRELOAD" variable does not help when resolving the block names in the
> image.
>
> I do see my rfnoc driver shared library being linked to the app binary.
>
> Its not clear how to do this.
>
> In the docs I see the "UHD_REGISTER_EXTENSION" macro which has left me
> wondering if this is perhaps the answer.
>
> If this is correct is there an example I could follow? (I don't see this
> macro used in the UHD repo, and it doesn't appear in my web search
> results.)
>
> Kind regards, Kevin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000007b9c79062ee313de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>OK, sounds like you&#39;re more than halfway there. A=
lso, you can ignore UHD_REGISTER_EXTENSION() for now, that&#39;s for a diff=
erent purpose.</div><div><br></div><div>The way I&#39;ve been testing &quot=
;simple&quot; applications is through probe_gain_block.cpp. The way I&#39;v=
e been testing &quot;complex&quot; applications is through the GNU Radio in=
tegration. I need to see if I can reproduce your issue that way.</div><div>=
<br></div><div>What happens when you do try=20
<span>graph-&gt;find_blocks&lt;rfnoc::vastech::multiddc_block_control&gt;</=
span>

()?</div><div><br></div><div>In your complex case, can you try LD_PRELOADin=
g the rfnoc-vastech OOT module?</div><div><br></div><div>--M</div><div><br>=
</div><div><br></div></div><br><div class=3D"gmail_quote gmail_quote_contai=
ner"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 21, 2025 at 3:42=E2=
=80=AFPM Kevin Williams &lt;<a href=3D"mailto:kevin.williams@vastech.co.za"=
>kevin.williams@vastech.co.za</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div class=3D"msg1995956164942739568"><div lan=
g=3D"EN-ZA"><div class=3D"m_1995956164942739568WordSection1"><p class=3D"Ms=
oNormal"><span>Hi Martin,<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span>I did use t=
he new UHD 4.8 rfnoc_modtool for this block.<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal=
"><span>I have the =E2=80=9CUHD_RFNOC_BLOCK_REGISTER_DIRECT=E2=80=9D macro =
as in here:<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span>UHD_RFNOC_BLOCK_REGISTER_=
DIRECT(<u></u><u></u></span></p><p class=3D"MsoNormal"><span>=C2=A0=C2=A0=
=C2=A0 multiddc_block_control, 0x666F0002, &quot;MultiDDC&quot;, CLOCK_KEY_=
GRAPH, &quot;bus_clk&quot;);<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span>I note t=
hat it is not the macro =E2=80=9C</span>UHD_REGISTER_EXTENSION=E2=80=9D.<sp=
an><u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></=
u></span></p><p class=3D"MsoNormal"><span>It is curious, because a simple C=
++ application I built does recognize the new block, and resolves its name =
in the static connections query, and does correctly connect that block in m=
y graph.<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><span>In a more complex applicatio=
n but compiled on the same host this block is not found, and the static lin=
k report also only shows it as =E2=80=9C* 0/Block#0:0=3D=3D&gt;0/SEP#2:0=E2=
=80=9D etc.<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span>I also note that the more=
 complex application is linked to my rfnoc driver library.<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p clas=
s=3D"MsoNormal"><span>I=E2=80=99m not sure where to look next as I have a p=
ython script which confirms the noc_id read back from the usrp is the same =
as what I expect in the driver, and I also tried the =E2=80=9Cgraph-&gt;fin=
d_blocks&lt;rfnoc::vastech::multiddc_block_control&gt;=E2=80=9D instead of =
just uhd::rfnoc::block_id_t(0, &quot;MultiDDC&quot;, 0) which also does not=
 find blocks of the type in question.<u></u><u></u></span></p><p class=3D"M=
soNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span=
>Kind regards, Kevin<u></u><u></u></span></p><p class=3D"MsoNormal"><span><=
u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span lang=3D"EN-US=
">From:</span></b><span lang=3D"EN-US"> Martin Braun &lt;<a href=3D"mailto:=
martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; <b=
r><b>Sent:</b> Friday, 21 February 2025 16:21<br><b>To:</b> Kevin Williams =
&lt;<a href=3D"mailto:kevin.williams@vastech.co.za" target=3D"_blank">kevin=
.williams@vastech.co.za</a>&gt;<br><b>Cc:</b> <a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Sub=
ject:</b> [EXTERNAL]Re: [USRP-users] register custom rfnoc block names<u></=
u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><di=
v><p class=3D"MsoNormal">Hey Kevin,<u></u><u></u></p></div><div><p class=3D=
"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">yes, =
you need that macro, as here: <a href=3D"https://url.za.m.mimecastprotect.c=
om/s/EoS3C98BNNi2ZMRhofXTqRd1S?domain=3Dgithub.com" target=3D"_blank">https=
://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-gain/lib/ga=
in_block_control.cpp#L55-L56</a><u></u><u></u></p></div><div><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Are you =
using rfnoc_modtool? Because rfnoc_modtool add should create all the releva=
nt boilerplate.<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">If you&#39;re using the =
latest rfnoc_modtool, then the OOT module will also have all the hooks in p=
lace to automatically register your OOT with UHD, no need for LD_PRELOAD.<u=
></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><=
/div><div><p class=3D"MsoNormal">--M<u></u><u></u></p></div></div><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On =
Fri, Feb 21, 2025 at 4:50=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:k=
evin.williams@vastech.co.za" target=3D"_blank">kevin.williams@vastech.co.za=
</a>&gt; wrote:<u></u><u></u></p></div><blockquote style=3D"border-width:me=
dium medium medium 1pt;border-style:none none none solid;border-color:curre=
ntcolor currentcolor currentcolor rgb(204,204,204);padding:0cm 0cm 0cm 6pt;=
margin:5pt 0cm 5pt 4.8pt"><p class=3D"MsoNormal">Hi Everyone,<br><br>I thin=
k this is my last hurdle.<br><br>I have a C++ application using my custom r=
fnoc block drivers, but the<br>&quot;LD_PRELOAD&quot; variable does not hel=
p when resolving the block names in the<br>image.<br><br>I do see my rfnoc =
driver shared library being linked to the app binary.<br><br>Its not clear =
how to do this.<br><br>In the docs I see the &quot;UHD_REGISTER_EXTENSION&q=
uot; macro which has left me<br>wondering if this is perhaps the answer.<br=
><br>If this is correct is there an example I could follow? (I don&#39;t se=
e this<br>macro used in the UHD repo, and it doesn&#39;t appear in my web s=
earch results.)<br><br>Kind regards, Kevin<br><br>_________________________=
______________________<br>USRP-users mailing list -- <a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br=
>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.e=
ttus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><u></u><u><=
/u></p></blockquote></div></div></div></div></blockquote></div>

--0000000000007b9c79062ee313de--

--===============5209610523885557562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5209610523885557562==--
