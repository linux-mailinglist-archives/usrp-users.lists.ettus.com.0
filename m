Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6C277CC04
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 13:50:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8DD2384A94
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 07:50:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692100217; bh=ttMsJbbJZ/efDXS0UhsuJMkc9mEMHNys9prZwjP6FF4=;
	h=From:In-Reply-To:Date:References:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AY0wdtb+ihDG3VBI3YnorYGr5ArcoKZyQN3rzJAaanqgONajXGDoLNgz3WsJTIV49
	 c2UiI5UeQnJR925bi/nCiL7jmsHWiW7Nw8k+w3S/TeyIVieb5lR6tXzB5zAVEZea6J
	 /hIuhm0brzwwoKUegHeGdQc3kUPj0lhARtEoTWGWkjoc/v6ZiGLMJElpLJ8ALIN8al
	 6f4aJjg+0NegZOeW2kmyM2GW+f2ezArrJIOv/ZHwkMNva1fV42Cz6bs61uQB5veqBx
	 J3KvuxjXscbq0dvVRAxuDaXf16tQnPNAFJzy2D9YvE9GSTk3+3k/Z3dLh9qeoEOt5/
	 MYSKix2RR0V1g==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 74EEF380E99
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 07:49:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nAKHyJvG";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-765a7768f1dso439938585a.0
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 04:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692100185; x=1692704985;
        h=to:references:message-id:date:cc:in-reply-to:from:subject
         :mime-version:content-transfer-encoding:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CsxlXX5j6hJOWOcNGaR9S/jGQFbR52Wk88MYpzGj0/U=;
        b=nAKHyJvGpk2dWM0fuoEemSVOeixJs6p9mxBq674xxUlZBpxdOvbq73qFrhKOL4TCUs
         fw4cA270F8+J/posogORXpQ5LYR9u6z64ctH1WbYq/vW3+XGCXN7r90Tkm3iR9pvNahj
         x7EYHJxfJGMxa4rXxWrw/WLU4MAl2gFDZEqdKP/0S9MSI/gxaaMkJ12LdOnPx0dFA/yv
         EGfba6zCnXS8vIt7X44QwR7CU74WkEO+F81Dm2d/h8A7OArqJpcPiyhBqztVqgSmgsR4
         CYNfhG4aI7RC1n1bLx1Wl/+VQ4I6jA/9mbcUY2XdeSZwgX4EGLmJ2ZovBEplUOHBh8O8
         OEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692100185; x=1692704985;
        h=to:references:message-id:date:cc:in-reply-to:from:subject
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CsxlXX5j6hJOWOcNGaR9S/jGQFbR52Wk88MYpzGj0/U=;
        b=gxoSi18FRWmxu+MmPu8b7vuMIt8a7HGfw8hckWDo3swyox8SQqzCpnwlj5U9hVkGMr
         ztScwPkEZ47cYVujnGJl49rjd1Fvp4mTxbx6VYKGltpbqOkcgEhbGqvwLqwcxFffmwe5
         rrqWPNW6V2sS1wY8UMXJhSKoB5Iz+v58LRlRTjvzFTIjFSzylY4v15DMXrECr6wyw+j0
         T0OuCQBf2Mu8oBnvuMU5wi44ip/qIISaeLQYX2f7MujqksDZRLQmrj4h2hGYU4nhd9I+
         lmQm3krGOFB689doz6CWd5tWjfFQ1WdDr2dPB6RL+gOcBYgEeBBmUmk4Xg5+9N/K00kh
         IV5g==
X-Gm-Message-State: AOJu0YxWuJj8hlqlLM56VF8gumkjD9JajuuorghNd+b9kMjZctXZFXa2
	yTNzf4Cr7Cmin3gWT0q+WI3uG+6QmDc=
X-Google-Smtp-Source: AGHT+IG3DV8cF9E9/JCXFFfSJBdiR4SU5PsqUrVNRhbHshAqZBGPedBJjchQUMf/FMppSVtiR0ifXQ==
X-Received: by 2002:a0c:e054:0:b0:63d:12bb:2ed0 with SMTP id y20-20020a0ce054000000b0063d12bb2ed0mr13404538qvk.6.1692100185366;
        Tue, 15 Aug 2023 04:49:45 -0700 (PDT)
Received: from smtpclient.apple (pool-173-72-147-192.clppva.fios.verizon.net. [173.72.147.192])
        by smtp.gmail.com with ESMTPSA id v14-20020a0cdd8e000000b0063cfe9adb2csm4022526qvk.108.2023.08.15.04.49.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 04:49:45 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Paul Atreides <maud.dib1984@gmail.com>
In-Reply-To: <02b880039a9242748dc2f3b12ae5044a@iis.fraunhofer.de>
Date: Tue, 15 Aug 2023 07:49:34 -0400
Message-Id: <1061061D-5162-4B92-9F34-341306AB2D6F@gmail.com>
References: <02b880039a9242748dc2f3b12ae5044a@iis.fraunhofer.de>
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
X-Mailer: iPhone Mail (20G75)
Message-ID-Hash: MIPDCERJFY4D7GBRVK4OXOIAUTMBAO2Z
X-Message-ID-Hash: MIPDCERJFY4D7GBRVK4OXOIAUTMBAO2Z
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4: RFNoC FFT Block in GNU Radio companion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MIPDCERJFY4D7GBRVK4OXOIAUTMBAO2Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6431666974822811257=="


--===============6431666974822811257==
Content-Type: multipart/alternative; boundary=Apple-Mail-943A2B8F-7873-4CD4-8DF2-F4E79E83AD0C
Content-Transfer-Encoding: 7bit


--Apple-Mail-943A2B8F-7873-4CD4-8DF2-F4E79E83AD0C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8">You set it in the block in gr=
c. spp=3D256</div><div dir=3D"ltr"><br><div dir=3D"ltr">&lt;<span class=3D"A=
pple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.29=
6875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -webki=
t-composition-frame-color: rgba(77, 128, 180, 0.230469); ">end transmission&=
gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 15, 20=
23, at 04:19, Bachmaier, Luca &lt;luca.bachmaier@iis.fraunhofer.de&gt; wrote=
:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style>@font-face { font-family: "Cambria Math"; }
@font-face { font-family: Calibri; }
p.MsoNormal, li.MsoNormal, div.MsoNormal { margin: 0cm 0cm 0.0001pt; font-si=
ze: 11pt; font-family: Calibri, sans-serif; }
a:link, span.MsoHyperlink { color: rgb(5, 99, 193); text-decoration: underli=
ne; }
a:visited, span.MsoHyperlinkFollowed { color: rgb(149, 79, 114); text-decora=
tion: underline; }
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph { margin: 0cm 0=
cm 0.0001pt 36pt; font-size: 11pt; font-family: Calibri, sans-serif; }
p.msonormal0, li.msonormal0, div.msonormal0 { margin-right: 0cm; margin-left=
: 0cm; font-size: 12pt; font-family: "Times New Roman", serif; }
p.msochpdefault, li.msochpdefault, div.msochpdefault { margin-right: 0cm; ma=
rgin-left: 0cm; font-size: 12pt; font-family: Calibri, sans-serif; }
span.apple-style-span { }
span.e-mailformatvorlage17 { font-family: Calibri, sans-serif; color: window=
text; }
span.E-MailFormatvorlage22 { font-family: Calibri, sans-serif; color: rgb(31=
, 73, 125); }
.MsoChpDefault { font-size: 10pt; }
@page WordSection1 { size: 612pt 792pt; margin: 70.85pt 70.85pt 2cm; }
div.WordSection1 { page: WordSection1; }</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D;mso-farea=
st-language:EN-US">Hi Paul,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D;mso-farea=
st-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D;mso-farea=
st-language:EN-US">thank you for your reply. Do you remember how you set the=
 SPP block parameter? Did you set it in a GNU Radio flowgraph, a script, or s=
omething else?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D;mso-farea=
st-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D;mso-farea=
st-language:EN-US">Regards<br>
Luca<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4=
.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0=
cm 0cm">
<p class=3D"MsoNormal"><b>Von:</b> Paul Atreides &lt;maud.dib1984@gmail.com&=
gt; <br>
<b>Gesendet:</b> Montag, 14. August 2023 16:35<br>
<b>An:</b> Bachmaier, Luca &lt;luca.bachmaier@iis.fraunhofer.de&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Betreff:</b> Re: [USRP-users] RFNoC 4: RFNoC FFT Block in GNU Radio compa=
nion<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Luca:<span style=3D"font-size:12.0pt"><o:p></o:p></sp=
an></p>
<div>
<p class=3D"MsoNormal">At one point I was trying a Fosphor FPGA image and I r=
emember it was important to set the spp block parameter to be equal in all t=
he blocks that would accept that parameter. So spp=3D1024 or whatever your FF=
T size is. That may have changed
 since 4.0 but that was the case in the past.&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">&lt;<span class=3D"apple-style-span">end transmission=
&gt;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Aug 14, 2023, at 10=
:29, Bachmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de"=
>luca.bachmaier@iis.fraunhofer.de</a>&gt; wrote:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">=EF=BB=BF <span style=3D"font-size:12.0pt;font-family=
:&quot;Times New Roman&quot;,serif">
<o:p></o:p></span></p>
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m currently developing=
 a GNU Radio flowgraph with RFNoC 4.3 which uses the RFNoC FFT block. Accord=
ing to this workshop (</span><a href=3D"https://www.youtube.com/watch?v=3D4X=
Xqk0yGvCI"><span lang=3D"EN-US">https://www.youtube.com/watch?v=3D4XXqk0yGvC=
I</span></a><span lang=3D"EN-US">
 @ 18:10) there are five runtime parameters you have to set for the FFT bloc=
k: magnitude, direction, length, fft_scaling, shift_config.</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m not exactly sure whe=
re in the flowgraph I can set these properties. E.g. is setting the =E2=80=9C=
Block Args=E2=80=9D parameter of the FFT block to =E2=80=9Cmagnitude=3Dcompl=
ex,direction=3D1,length=3D1024=E2=80=9D correct? If not, what is the right w=
ay
 to set the runtime parameters?</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After setting them as I describe=
d I get two python errors when trying to run the flowgraph:</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1. Setting magnitude=3Dcomplex c=
auses this:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RuntimeError: RuntimeError: Propert=
y magnitude:RuntimeError: Cannot convert `complex' to int!</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In the flowgraph, the output of t=
he RFNoC FFT block is connected directly to an RFNoC Rx Streamer block. It s=
eems that all default RFNoC blocks only accept an int input. This error seem=
s strange and that=E2=80=99s why I doubt
 that I set the magnitude parameter correctly.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2. No matter what parameter I se=
t for the FFT, I get the following error:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RuntimeError: ValueError: samples p=
er package must not be smaller than atomic item size</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I was not able to find any suffi=
cient information about this online unfortunately.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I hope I was able to describe my=
 problems clearly and would be glad to receive help regarding any of those.<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance and regards=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Luca</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,serif">_______________________________________________<br=
>
USRP-users mailing list -- </span><a href=3D"mailto:usrp-users@lists.ettus.c=
om"><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,=
serif">usrp-users@lists.ettus.com</span></a><span style=3D"font-size:12.0pt;=
font-family:&quot;Times New Roman&quot;,serif"><br>
To unsubscribe send an email to </span><a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com"><span style=3D"font-size:12.0pt;font-family:&quot;Times New R=
oman&quot;,serif">usrp-users-leave@lists.ettus.com</span></a><span style=3D"=
font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p></o:p><=
/span></p>
</div>
</blockquote>
</div>
</div>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-943A2B8F-7873-4CD4-8DF2-F4E79E83AD0C--

--===============6431666974822811257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6431666974822811257==--
