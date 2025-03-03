Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63788A4C360
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 15:32:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A445F3854B5
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 09:31:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741012319; bh=m9IwhcKx6QdkaKpxegcV1U2i0eUvPDkkbbFlQOHdHD8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qezCh30wFWPfKH18ISzV+DFofhC4kTGADNlK1P8xMJAUsWg8UevpfVulN40d7f6yb
	 e5F0nHZ/aAGqHPJBxfWFAurb7p8rVqe/1ITy+6vS/ZAIWUjsvMaf+8x12ytz0VKnGo
	 leur4bU9rCvYbX73pmpdSgg2uuHkq4BT8VtBVrNrhW13o3Q2VJYU4spCamnpeIgJRN
	 bH+L5dJwoZoFUdOfoFuforawRr/MqpM004hAVtdgVS4eO1Fd1TXeaL2+ZS+SYyoi4n
	 qMINQihrji0N4jjargttoJcTnoEAGb2rSFIo7U+4dOUe+gqwq9W8ME4QHxLpOtsMmn
	 RDl4FbH+5nIYw==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 356B1384670
	for <usrp-users@lists.ettus.com>; Mon,  3 Mar 2025 09:30:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="DFOzjZrF";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-abec8b750ebso791977866b.0
        for <usrp-users@lists.ettus.com>; Mon, 03 Mar 2025 06:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1741012256; x=1741617056; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DSKsFqW0qPFpw5h+dEEBETpSccxqjzWTxfUimUpMAb0=;
        b=DFOzjZrFZOe3MHci1xh2mFAo5q7lVKJ/9vR+ccKWxI6++n2VqltORqrE452VzuBTaC
         djUAaf2lE2hZ9Yjv/rAumvSm+pVYFJSTAkSuEPWx9qRy+1nnMTANOJeBQ27dwXzFcm47
         /6I88WFfNd5ov2Goe+3xnzi/qsXiAn3nptqWNdxcVKnRLUjWlCHeJLYUpCkK3jjSoraL
         l43TpmR0AnfEnwiEsSELhzZsD4LuBTjl1L1i3s5YwrYlUZR8yg3d00MXf4elY3KgIh2N
         Jyd++rTigmS85SZcfZx8yIGYEKQByw26RFAKdqtA0f5q3UNuYHlTFLb4428c2wL5IaYj
         9rDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741012256; x=1741617056;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DSKsFqW0qPFpw5h+dEEBETpSccxqjzWTxfUimUpMAb0=;
        b=gZmRwzDAVAahV8E/MPn/UTIzfQQCEeIcIoI1/vcxHxvT15wlpxQrS60kHm2OhdpBdB
         GUicAkzwIvYey4O4ke1D3li8pB1qyRQTEfYGppnNnN7uMKAdvs2Xqup57Xut2O8TXJ3L
         b5YYxXv07orTb4FZhE78+4b198xY4ZpkM+sDDa1aoYWW6t4zxdfi0Pd037Un1VlX/nQS
         Qjtbp8v3r1sF/ampeZKWM17hMfJiGUTF2lLYCORK2Hj8GDN06jBkLzFdgkSeAXQDhWAq
         Y4nVIY0MkaR7ECOaMQdAmA+tDhFUqPn27GF7gmyZ2HUF6Qw2hhefK4TFp+lvnKtoV61H
         ud+Q==
X-Gm-Message-State: AOJu0YyCQ142qtD0C7C/BqcH0ZerbRVNYsB51Pf3sGUAAbCCCTm4XNGK
	ApicCk/E+Zm48xmoqwYeWlGms7EaRlgGOzKePDpD/USYZCnT65Rp33Yy9tAeSEUM/h8sT4Z9FWy
	+r9sPG+gSveK4PzQvWuNhXKXWtvGfIGZfLgT7XyK2k2jrEVRg3eI=
X-Gm-Gg: ASbGncv7nw0oVNDtzA8UGZX9fmjOO9XUiPrGmsaZvtzve1AMw08xK4mXcrfMyDVu7lk
	MSSxySzVCQ5yaxErfMcnpJCUYdnQzQI7AR+C0zUQjTgp0Yijdfx882ck4qZK9bMjMHI/vmhXAJK
	MfkAnopUqjVhHEMBdvYCDEWDFuOv+9gWBVdCX8iU1t13CdXgmHGQWioQ8=
X-Google-Smtp-Source: AGHT+IEbrvtoVDY5LMKZz5m6WjUYU4qtLnEkkfbwILt44XhDXxp2fw4iUbGRQHZLrA3Q1z3iwXwppBQ6BycBl56JSHg=
X-Received: by 2002:a17:907:7658:b0:abf:40ac:4395 with SMTP id
 a640c23a62f3a-abf40ac43f9mr1115758566b.31.1741012255533; Mon, 03 Mar 2025
 06:30:55 -0800 (PST)
MIME-Version: 1.0
References: <8637a4f585a741779e8e57b01ac12f75@vastech.co.za>
 <CAFOi1A4YNrE3jzepMjZhDtT0rhn+=jzML4xmy5SOg66gi2iapA@mail.gmail.com>
 <73e1614fe17841cca2e52d02fd11739c@vastech.co.za> <CAFOi1A7Rn=EXWcNz70imcfMdF2NX4zfb_dntKyy3T6G_jOezQg@mail.gmail.com>
 <7345e1c137004b039e52b6ed99588e54@vastech.co.za>
In-Reply-To: <7345e1c137004b039e52b6ed99588e54@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 3 Mar 2025 15:30:44 +0100
X-Gm-Features: AQ5f1Jqf0sohx296QKUhQ-hFJywrL8D2Y9De7HA9RL-HMr99UZkg0iIDur8ZXw8
Message-ID: <CAFOi1A7fX759baQPFZpW99_114uwis3zxMKVJnXng46dH150Cw@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: YG2TT27VCGYMH472HWGG5JPPGG6HZQWW
X-Message-ID-Hash: YG2TT27VCGYMH472HWGG5JPPGG6HZQWW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: register custom rfnoc block names
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YG2TT27VCGYMH472HWGG5JPPGG6HZQWW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2051443090891227172=="

--===============2051443090891227172==
Content-Type: multipart/alternative; boundary="0000000000000a8551062f710101"

--0000000000000a8551062f710101
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK, some random thoughts:
- Can you verify that you have <prefix>/share/uhd/modules.d/rfnoc-vastech
and it contains a valid DLL name (like libvastech.so)?
  - (FYI: That's how the simple program finds the module)
- Are you sure that the make() call triggers the registration? How are you
confirming that?
- How is your complex application linking against UHD? (And if you want to
use your block controller, you need to link against your DLL)

--M


On Thu, Feb 27, 2025 at 7:51=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi Martin,
>
>
>
> Just to answer the search block question: yes, I have also tried graph->f=
ind_blocks<rfnoc::vastech::multiddc_block_control>
> () but that just returns an empty list.
>
>
>
> I haven=E2=80=99t been able to get much further than this:
>
>
>
> When this particular line is called, then my =E2=80=9Csimple=E2=80=9D (bu=
ild from in the
> OOT repo) app shows my block being registered, but the =E2=80=9Ccomplex=
=E2=80=9D example
> does not. (That make() seems to trigger the rfnoc block registration.)
>
> uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);
>
>
>
> I also find it curious that neither apps link to my rfnoc driver library
> yet, but the =E2=80=9Csimple=E2=80=9D still can resolve the correct new b=
lock name
> =E2=80=9Cmultiddc=E2=80=9D.
>
>
>
> Is there a way I can somehow force =E2=80=9CUHD_RFNOC_BLOCK_REGISTER_DIRE=
CT=E2=80=9D to
> run?
>
>
>
> Kind regards, Kevin
>
>
>
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Monday, 24 February 2025 15:11
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: [EXTERNAL]Re: register custom rfnoc block
> names
>
>
>
> OK, sounds like you're more than halfway there. Also, you can ignore
> UHD_REGISTER_EXTENSION() for now, that's for a different purpose.
>
>
>
> The way I've been testing "simple" applications is through
> probe_gain_block.cpp. The way I've been testing "complex" applications is
> through the GNU Radio integration. I need to see if I can reproduce your
> issue that way.
>
>
>
> What happens when you do try
> graph->find_blocks<rfnoc::vastech::multiddc_block_control> ()?
>
>
>
> In your complex case, can you try LD_PRELOADing the rfnoc-vastech OOT
> module?
>
>
>
> --M
>
>
>
>
>
>
>
> On Fri, Feb 21, 2025 at 3:42=E2=80=AFPM Kevin Williams <
> kevin.williams@vastech.co.za> wrote:
>
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
> <https://url.za.m.mimecastprotect.com/s/e0hDCg5KEEcGgQPcNf1T4iuss?domain=
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

--0000000000000a8551062f710101
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>OK, some random thoughts:</div><div>- Can you verify =
that you have &lt;prefix&gt;/share/uhd/modules.d/rfnoc-vastech and it conta=
ins a valid DLL name (like libvastech.so)?</div><div>=C2=A0 - (FYI: That&#3=
9;s how the simple program finds the module)</div><div>- Are you sure that =
the make() call triggers the registration? How are you confirming that?</di=
v><div>- How is your complex application linking against UHD? (And if you w=
ant to use your block controller, you need to link against your DLL)</div><=
div><br></div><div>--M</div><div><br></div></div><br><div class=3D"gmail_qu=
ote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Fe=
b 27, 2025 at 7:51=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:kevin.wi=
lliams@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg86988319=
54903416169"><div lang=3D"EN-ZA"><div class=3D"m_8698831954903416169WordSec=
tion1"><p class=3D"MsoNormal"><span>Hi Martin,<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorm=
al"><span>Just to answer the search block question: yes, I have also tried =
</span>graph-&gt;find_blocks&lt;rfnoc::vastech::multiddc_block_control&gt; =
() but that just returns an empty list.<span><u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorma=
l"><span>I haven=E2=80=99t been able to get much further than this:<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span>When this particular line is called, then my=
 =E2=80=9Csimple=E2=80=9D (build from in the OOT repo) app shows my block b=
eing registered, but the =E2=80=9Ccomplex=E2=80=9D example does not. (That =
make() seems to trigger the rfnoc block registration.)<br><br>uhd::usrp::mu=
lti_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p clas=
s=3D"MsoNormal"><span>I also find it curious that neither apps link to my r=
fnoc driver library yet, but the =E2=80=9Csimple=E2=80=9D still can resolve=
 the correct new block name =E2=80=9Cmultiddc=E2=80=9D.<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=
=3D"MsoNormal"><span>Is there a way I can somehow force =E2=80=9C</span>UHD=
_RFNOC_BLOCK_REGISTER_DIRECT=E2=80=9D to run?<span><u></u><u></u></span></p=
><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"Ms=
oNormal"><span>Kind regards, Kevin<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span=
 lang=3D"EN-US">From:</span></b><span lang=3D"EN-US"> Martin Braun &lt;<a h=
ref=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.=
com</a>&gt; <br><b>Sent:</b> Monday, 24 February 2025 15:11<br><b>Cc:</b> <=
a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a><br><b>Subject:</b> [USRP-users] Re: [EXTERNAL]Re: regist=
er custom rfnoc block names<u></u><u></u></span></p><p class=3D"MsoNormal">=
<u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">OK, sounds like yo=
u&#39;re more than halfway there. Also, you can ignore UHD_REGISTER_EXTENSI=
ON() for now, that&#39;s for a different purpose.<u></u><u></u></p></div><d=
iv><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"Ms=
oNormal">The way I&#39;ve been testing &quot;simple&quot; applications is t=
hrough probe_gain_block.cpp. The way I&#39;ve been testing &quot;complex&qu=
ot; applications is through the GNU Radio integration. I need to see if I c=
an reproduce your issue that way.<u></u><u></u></p></div><div><p class=3D"M=
soNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">What ha=
ppens when you do try graph-&gt;find_blocks&lt;rfnoc::vastech::multiddc_blo=
ck_control&gt; ()?<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></=
u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">In your complex case, =
can you try LD_PRELOADing the rfnoc-vastech OOT module?<u></u><u></u></p></=
div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=
=3D"MsoNormal">--M<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></=
u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></=
p></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p c=
lass=3D"MsoNormal">On Fri, Feb 21, 2025 at 3:42=E2=80=AFPM Kevin Williams &=
lt;<a href=3D"mailto:kevin.williams@vastech.co.za" target=3D"_blank">kevin.=
williams@vastech.co.za</a>&gt; wrote:<u></u><u></u></p></div><blockquote st=
yle=3D"border-width:medium medium medium 1pt;border-style:none none none so=
lid;border-color:currentcolor currentcolor currentcolor rgb(204,204,204);pa=
dding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt"><div><div><div><p class=3D"=
MsoNormal">Hi Martin,<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u>=
<u></u></p><p class=3D"MsoNormal">I did use the new UHD 4.8 rfnoc_modtool f=
or this block.<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u>=
</p><p class=3D"MsoNormal">I have the =E2=80=9CUHD_RFNOC_BLOCK_REGISTER_DIR=
ECT=E2=80=9D macro as in here:<u></u><u></u></p><p class=3D"MsoNormal">=C2=
=A0<u></u><u></u></p><p class=3D"MsoNormal">UHD_RFNOC_BLOCK_REGISTER_DIRECT=
(<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 multiddc_block=
_control, 0x666F0002, &quot;MultiDDC&quot;, CLOCK_KEY_GRAPH, &quot;bus_clk&=
quot;);<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p =
class=3D"MsoNormal">I note that it is not the macro =E2=80=9CUHD_REGISTER_E=
XTENSION=E2=80=9D.<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u>=
</u></p><p class=3D"MsoNormal">It is curious, because a simple C++ applicat=
ion I built does recognize the new block, and resolves its name in the stat=
ic connections query, and does correctly connect that block in my graph.<u>=
</u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"M=
soNormal">In a more complex application but compiled on the same host this =
block is not found, and the static link report also only shows it as =E2=80=
=9C* 0/Block#0:0=3D=3D&gt;0/SEP#2:0=E2=80=9D etc.<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">I also note t=
hat the more complex application is linked to my rfnoc driver library.<u></=
u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"Mso=
Normal">I=E2=80=99m not sure where to look next as I have a python script w=
hich confirms the noc_id read back from the usrp is the same as what I expe=
ct in the driver, and I also tried the =E2=80=9Cgraph-&gt;find_blocks&lt;rf=
noc::vastech::multiddc_block_control&gt;=E2=80=9D instead of just uhd::rfno=
c::block_id_t(0, &quot;MultiDDC&quot;, 0) which also does not find blocks o=
f the type in question.<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></=
u><u></u></p><p class=3D"MsoNormal">Kind regards, Kevin<u></u><u></u></p><p=
 class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal"><b><spa=
n lang=3D"EN-US">From:</span></b><span lang=3D"EN-US"> Martin Braun &lt;</s=
pan><a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank"><span lang=
=3D"EN-US">martin.braun@ettus.com</span></a><span lang=3D"EN-US">&gt; <br><=
b>Sent:</b> Friday, 21 February 2025 16:21<br><b>To:</b> Kevin Williams &lt=
;</span><a href=3D"mailto:kevin.williams@vastech.co.za" target=3D"_blank"><=
span lang=3D"EN-US">kevin.williams@vastech.co.za</span></a><span lang=3D"EN=
-US">&gt;<br><b>Cc:</b> </span><a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank"><span lang=3D"EN-US">usrp-users@lists.ettus.com</span><=
/a><span lang=3D"EN-US"><br><b>Subject:</b> [EXTERNAL]Re: [USRP-users] regi=
ster custom rfnoc block names</span><u></u><u></u></p><p class=3D"MsoNormal=
">=C2=A0<u></u><u></u></p><div><div><p class=3D"MsoNormal">Hey Kevin,<u></u=
><u></u></p></div><div><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p></div=
><div><p class=3D"MsoNormal">yes, you need that macro, as here: <a href=3D"=
https://url.za.m.mimecastprotect.com/s/e0hDCg5KEEcGgQPcNf1T4iuss?domain=3Dg=
ithub.com" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/mast=
er/host/examples/rfnoc-gain/lib/gain_block_control.cpp#L55-L56</a><u></u><u=
></u></p></div><div><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p></div><d=
iv><p class=3D"MsoNormal">Are you using rfnoc_modtool? Because rfnoc_modtoo=
l add should create all the relevant boilerplate.<u></u><u></u></p></div><d=
iv><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p></div><div><p class=3D"Ms=
oNormal">If you&#39;re using the latest rfnoc_modtool, then the OOT module =
will also have all the hooks in place to automatically register your OOT wi=
th UHD, no need for LD_PRELOAD.<u></u><u></u></p></div><div><p class=3D"Mso=
Normal">=C2=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">--M<u></u=
><u></u></p></div></div><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><div=
><div><p class=3D"MsoNormal">On Fri, Feb 21, 2025 at 4:50=E2=80=AFAM Kevin =
Williams &lt;<a href=3D"mailto:kevin.williams@vastech.co.za" target=3D"_bla=
nk">kevin.williams@vastech.co.za</a>&gt; wrote:<u></u><u></u></p></div><blo=
ckquote style=3D"border-width:medium medium medium 1pt;border-style:none no=
ne none solid;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt;border-color=
:currentcolor currentcolor currentcolor rgb(204,204,204)"><p class=3D"MsoNo=
rmal">Hi Everyone,<br><br>I think this is my last hurdle.<br><br>I have a C=
++ application using my custom rfnoc block drivers, but the<br>&quot;LD_PRE=
LOAD&quot; variable does not help when resolving the block names in the<br>=
image.<br><br>I do see my rfnoc driver shared library being linked to the a=
pp binary.<br><br>Its not clear how to do this.<br><br>In the docs I see th=
e &quot;UHD_REGISTER_EXTENSION&quot; macro which has left me<br>wondering i=
f this is perhaps the answer.<br><br>If this is correct is there an example=
 I could follow? (I don&#39;t see this<br>macro used in the UHD repo, and i=
t doesn&#39;t appear in my web search results.)<br><br>Kind regards, Kevin<=
br><br>_______________________________________________<br>USRP-users mailin=
g list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a><br>To unsubscribe send an email to <a href=3D=
"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leav=
e@lists.ettus.com</a><u></u><u></u></p></blockquote></div></div></div></div=
></blockquote></div></div></div></div></blockquote></div>

--0000000000000a8551062f710101--

--===============2051443090891227172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2051443090891227172==--
