Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 885211361AC
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 21:23:12 +0100 (CET)
Received: from [::1] (port=34136 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipeKi-0004OQ-NG; Thu, 09 Jan 2020 15:23:08 -0500
Received: from mail-lf1-f46.google.com ([209.85.167.46]:39114)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ipeKe-0004KL-EH
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 15:23:04 -0500
Received: by mail-lf1-f46.google.com with SMTP id y1so6175544lfb.6
 for <usrp-users@lists.ettus.com>; Thu, 09 Jan 2020 12:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bZddvggXJKO1GK9lwKmdxOjiHmYlL2KVJ48YsaQWiLs=;
 b=f7+zilxeSZPcv0Ckt6fdDammVtWpD0nYWJ9wR6NFNtf42IgyG8Slw7iDdYGkMJWMJR
 WEIb8f44PIKJXPyWN2nurC/T8OK/mH+2jMVWr9QsY+vsChpneCb6XJhScUjcphEN7BWp
 wOeiuXoVDCJdrPX/FEhBiQ7r+UAarlyrZ1ycFrrrbdcVAh6tsvheAZjYPrxt0mbGIlqL
 zZOW+8N61QyznxkTKHD/6cd4la/deIwRsGgt2ew3VpHJJTWlKnBfHcOrK63T0/uK78e+
 1X8SA8ib1Fg9xOxsv4O5iwyCPw+Ya5zu5+8sZ2Z0aJu/NPBV9s/U1tmHnxB2nl2optDp
 CHWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bZddvggXJKO1GK9lwKmdxOjiHmYlL2KVJ48YsaQWiLs=;
 b=Vd4ntKi+u2Qvye4jAlxXpxH5t36BlBo3zkslEk85UwtRfT5SMmIcZjubpQq7KJY2QZ
 rzvkPi5BeCrqs7pT0brf6hDbneanonlq74rY0RrFMunsq53Ey77rEzn2TYTAmoShCmyQ
 +33O8iTQkSaEmujVAiSB0nwPu6R4j8eRiYAiXS3ZCEhgfsD2zJJkgdD8pIBf1e9SVa5t
 Fqzk2BGz9NeuGbjaO25JNmp2hAnUrywyBbQ7Y/+kC6CCaARx0XCxaKRs6flNi9a46ohX
 9snGj6gZpmiG6+odYatFKrknw2y4DiN33x5CD3t32LL8GcnssWABi8KMQu7GMH7h0USr
 s4gQ==
X-Gm-Message-State: APjAAAUh7Pa5F7cUR6lBXUHwPmkeKdKlr4ayliDLwRjHKh89ErTKxMuw
 8j5Kgdruubnr9sRk6C4DS/BXTS7X62sWijfIPJ6ttjPC
X-Google-Smtp-Source: APXvYqxc4GXy0uQzdoOWMpiYYXxoK9/t8ZueotNFhFe0cPIojisNuFyDXgQmBHIUD9TwwmPmXnxTZsh/Scf7Gn83kJw=
X-Received: by 2002:ac2:50da:: with SMTP id h26mr7045999lfm.80.1578601343104; 
 Thu, 09 Jan 2020 12:22:23 -0800 (PST)
MIME-Version: 1.0
References: <BN6PR19MB1635EA176626D1A33DFA5CC5A43F0@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB1635EA176626D1A33DFA5CC5A43F0@BN6PR19MB1635.namprd19.prod.outlook.com>
Date: Thu, 9 Jan 2020 14:22:12 -0600
Message-ID: <CANf970ZdhFuJWpo+N+g1ty+is_5ng3jRB_GWSPVgfwY39rL21g@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] X310 GPIO Ettus Code Example Question
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3899220782667207495=="
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

--===============3899220782667207495==
Content-Type: multipart/alternative; boundary="0000000000004c48d1059bbac4d8"

--0000000000004c48d1059bbac4d8
Content-Type: text/plain; charset="UTF-8"

Jeff,

Yes. For ATR to put that line high on TX, the value should be 1 as you
noted.

Sam Reiter
Ettus Research


On Tue, Jan 7, 2020 at 1:12 PM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Relating to the description of the GPIO:
> https://files.ettus.com/manual/page_gpio_api.html
>
>
>
> Should the code example on this page, which has the following code:
>
>
>
> // finally, let's set up GPIO6 as we described above
>
> usrp_x300->set_gpio_attr("FP0", "ATR_0X", 0, AMP_GPIO_MASK);
>
> usrp_x300->set_gpio_attr("FP0", "ATR_RX", 0, AMP_GPIO_MASK);
>
> *usrp_x300->set_gpio_attr("FP0", "ATR_TX", 0, AMP_GPIO_MASK);*
>
> usrp_x300->set_gpio_attr("FP0", "ATR_XX", 0, AMP_GPIO_MASK);
>
>
>
> actually be:
>
>
>
> // finally, let's set up GPIO6 as we described above
>
> usrp_x300->set_gpio_attr("FP0", "ATR_0X", 0, AMP_GPIO_MASK);
>
> usrp_x300->set_gpio_attr("FP0", "ATR_RX", 0, AMP_GPIO_MASK);
>
>
> *usrp_x300->set_gpio_attr("FP0", "ATR_TX", 1, AMP_GPIO_MASK);  // Should
> it be a 1? *
>
> usrp_x300->set_gpio_attr("FP0", "ATR_XX", 0, AMP_GPIO_MASK);
>
>
>
> for setting up GPIO6 to be high only when transmitting?  If not, then I'm
> not understanding what the code is really doing to get GPIO6 to be high
> when transmitting.
>
>
> Thx.
>
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004c48d1059bbac4d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jeff,</div><div><br></div><div>Yes. For ATR to put th=
at line high on TX, the value should be 1 as you noted.</div><div><br></div=
><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <br><div>Et=
tus Research<br></div></div></div></div></div></div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 7=
, 2020 at 1:12 PM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<p>Relating to the description of the GPIO:=C2=A0 <a href=3D"https://files.=
ettus.com/manual/page_gpio_api.html" rel=3D"noopener noreferrer" target=3D"=
_blank">
https://files.ettus.com/manual/page_gpio_api.html</a></p>
<p>=C2=A0</p>
<p>Should the code example on this page, which has the following code:</p>
<p>=C2=A0</p>
<p style=3D"margin-left:75.75pt"><span style=3D"font-size:10pt;font-family:=
&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:maroon">// finall=
y, let&#39;s set up GPIO6 as we described above</span><span style=3D"font-s=
ize:10pt;font-family:&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;co=
lor:black"></span></p>
<p style=3D"margin-left:75.75pt"><span style=3D"font-size:10pt;font-family:=
&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:black">usrp_x300-=
&gt;set_gpio_attr(</span><span style=3D"font-size:10pt;font-family:&quot;Co=
urier New&quot;,serif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;FP0&=
quot;</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quo=
t;,serif,&quot;EmojiFont&quot;;color:black">,
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,se=
rif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;ATR_0X&quot;</span><sp=
an style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,serif,&quot;=
EmojiFont&quot;;color:black">, 0, AMP_GPIO_MASK);</span></p>
<p style=3D"margin-left:75.75pt"><span style=3D"font-size:10pt;font-family:=
&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:black">usrp_x300-=
&gt;set_gpio_attr(</span><span style=3D"font-size:10pt;font-family:&quot;Co=
urier New&quot;,serif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;FP0&=
quot;</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quo=
t;,serif,&quot;EmojiFont&quot;;color:black">,
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,se=
rif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;ATR_RX&quot;</span><sp=
an style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,serif,&quot;=
EmojiFont&quot;;color:black">, 0, AMP_GPIO_MASK);</span></p>
<p style=3D"margin-left:75.75pt"><b><span style=3D"font-size:10pt;font-fami=
ly:&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:black">usrp_x3=
00-&gt;set_gpio_attr(</span><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;F=
P0&quot;</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&=
quot;,serif,&quot;EmojiFont&quot;;color:black">,
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,se=
rif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;ATR_TX&quot;</span><sp=
an style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,serif,&quot;=
EmojiFont&quot;;color:black">, 0, AMP_GPIO_MASK);</span></b></p>
<p style=3D"margin-left:75.75pt"><span style=3D"font-size:10pt;font-family:=
&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:black">usrp_x300-=
&gt;set_gpio_attr(</span><span style=3D"font-size:10pt;font-family:&quot;Co=
urier New&quot;,serif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;FP0&=
quot;</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quo=
t;,serif,&quot;EmojiFont&quot;;color:black">,
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,se=
rif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;ATR_XX&quot;</span><sp=
an style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,serif,&quot;=
EmojiFont&quot;;color:black">, 0, AMP_GPIO_MASK);</span></p>
<p>=C2=A0</p>
<p>actually be:</p>
<p>=C2=A0</p>
<p style=3D"margin-left:75.75pt"><span style=3D"font-size:10pt;font-family:=
&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:maroon">// finall=
y, let&#39;s set up GPIO6 as we described above</span><span style=3D"font-s=
ize:10pt;font-family:&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;co=
lor:black"></span></p>
<p style=3D"margin-left:75.75pt"><span style=3D"font-size:10pt;font-family:=
&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:black">usrp_x300-=
&gt;set_gpio_attr(</span><span style=3D"font-size:10pt;font-family:&quot;Co=
urier New&quot;,serif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;FP0&=
quot;</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quo=
t;,serif,&quot;EmojiFont&quot;;color:black">,
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,se=
rif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;ATR_0X&quot;</span><sp=
an style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,serif,&quot;=
EmojiFont&quot;;color:black">, 0, AMP_GPIO_MASK);</span></p>
<p style=3D"margin-left:75.75pt"><span style=3D"font-size:10pt;font-family:=
&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:black">usrp_x300-=
&gt;set_gpio_attr(</span><span style=3D"font-size:10pt;font-family:&quot;Co=
urier New&quot;,serif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;FP0&=
quot;</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quo=
t;,serif,&quot;EmojiFont&quot;;color:black">,
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,se=
rif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;ATR_RX&quot;</span><sp=
an style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,serif,&quot;=
EmojiFont&quot;;color:black">, 0, AMP_GPIO_MASK);</span></p>
<p style=3D"margin-left:75.75pt"><b><span style=3D"font-size:10pt;font-fami=
ly:&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:black">usrp_x3=
00-&gt;set_gpio_attr(</span><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;F=
P0&quot;</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&=
quot;,serif,&quot;EmojiFont&quot;;color:black">,
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,se=
rif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;ATR_TX&quot;</span><sp=
an style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,serif,&quot;=
EmojiFont&quot;;color:black">,
<span style=3D"background:yellow none repeat scroll 0% 0%">1</span>, AMP_GP=
IO_MASK);=C2=A0 <span style=3D"font-size:10pt;font-family:&quot;Courier New=
&quot;,serif,&quot;EmojiFont&quot;;color:maroon">
// Should it be a 1?</span><br>
</span></b></p>
<p style=3D"margin-left:75.75pt"><span style=3D"font-size:10pt;font-family:=
&quot;Courier New&quot;,serif,&quot;EmojiFont&quot;;color:black">usrp_x300-=
&gt;set_gpio_attr(</span><span style=3D"font-size:10pt;font-family:&quot;Co=
urier New&quot;,serif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;FP0&=
quot;</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quo=
t;,serif,&quot;EmojiFont&quot;;color:black">,
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,se=
rif,&quot;EmojiFont&quot;;color:rgb(0,32,128)">&quot;ATR_XX&quot;</span><sp=
an style=3D"font-size:10pt;font-family:&quot;Courier New&quot;,serif,&quot;=
EmojiFont&quot;;color:black">, 0, AMP_GPIO_MASK);</span></p>
<p>=C2=A0</p>
<p>for setting up GPIO6 to be high only when transmitting?=C2=A0 If not, th=
en I&#39;m not understanding what the code is really doing to get GPIO6 to =
be high when transmitting.</p>
<p><br>
</p>
<p>Thx.</p>
<p>Jeff<br>
</p>
<br>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004c48d1059bbac4d8--


--===============3899220782667207495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3899220782667207495==--

