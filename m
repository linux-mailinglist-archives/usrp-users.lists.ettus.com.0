Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB16562AF8
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 07:42:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0612A3846F5
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 01:42:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656654123; bh=W3FOtyrjWa/BSZrEX9ugnIezV253fLu3HCVPV15QVoE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nOKHtkD3D5wXJZycpMljV0i6rSIcI+laXm+n1DIMhUR/vuMThVYLQilBaitf48qN0
	 xavWQ3tDmCHOYV/EHtoegvjKSMtRDJKY97vgpFN//NFgH/pym/ohqGfYoMRrm0XkKN
	 wrAAYul7A88k1Q55OgB1S93JZspa8luWgeiGZnjhSm32Hbdz8FftxaO5MgSabibrih
	 AezzcWcogiYdyCMdZOvj7f5/263FH+CejYTSuX6EcFEtpAIrZ00oNQTUdytrtwCEsb
	 OcgeepzzBLwMrIz8XWvCLfAVuYV3J6kGxMcn+gjPrMGjaqNbO5uA52i5+4Qx7CmWdJ
	 gcBnWYwSram4Q==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 90BB63845F5
	for <usrp-users@lists.ettus.com>; Fri,  1 Jul 2022 01:40:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BqYifLIx";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id v38so2265088ybi.3
        for <usrp-users@lists.ettus.com>; Thu, 30 Jun 2022 22:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=1cOy6Y0btMF15WSsOcYexNXldw14WkAUfKWfIy5s7j8=;
        b=BqYifLIxZqml4W3qXKrkeEvr7BcooRu1JEXeZOiCj4WzrC2dg+WV+NXSLAnIngd2/o
         D4gOBcesxSpvUzbHUeih6QH7g1u2BBwxIh3t34Ghp3QuOKm4RDi7W7CSDqXt7u1WNMwG
         O0BguPywvkVoYxaP71DGaAQ7bm1wX6Hhs/oabMPECa1VPuUfLiR6BrTmZkZH2l9j6jiY
         tKOYCU8xO119VGZHpVhj3CubIDva4NBquiC9L7bSPIhrBNIZNZDImkEdsc35OzHUuttV
         U4PKEyT54trHKGCKfbQMGXRSyo4xaDlIDHlasts4mUbNUGx/MuokQrCyzYqcLP12VaLh
         7FrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1cOy6Y0btMF15WSsOcYexNXldw14WkAUfKWfIy5s7j8=;
        b=q6TprSngb97RuNEDgjUlvl5aYa3XUcVmlXT4T5xYKvAUr0Ka7ze3MPXG2zELsRBAjC
         GtFa3ZcZAlS/W6vmQbKfhKx5Jx90Xu0x3ADVEiqDpBff6+Pelh4Ds5cDAGNsIfi3BI8P
         1vSPDiRwWlAuOZGy6AMp74ykQvFyPkmG9Zy5R8OXrdxKtFWpG5bWjJiVcp1x7wjgzjrj
         tj/4QF1W4JWhLPC3Pkvxn5fsjsxMwO2QtLhF8fZo6BDyPGKhN9xVUBmAtNhGBMIYWiBP
         QzF07eMSSvWKApqadfdAxH1cyM1o7iUs59DI9k93Rop+dYZ7DrXQgJNXCfStU1c7WiSf
         npdw==
X-Gm-Message-State: AJIora/cmTY1wG2p7T9vvx1fqKIZP9bkWzGKyVCJU9/jnF6PEZ51rslF
	l3InYJ3JiXPjWTkzkpm/nPEDRiOUoYrRQHS7eGUh6eE2dozmWx3k
X-Google-Smtp-Source: AGRyM1tgK0ALTZE9t68vUgm5l5gr4kCWvjU/VqHYGYikdVyiNzxo4i/nldMx2zQhcyOMXUICApThM4JF5kEeRrYH5mQ=
X-Received: by 2002:a05:6902:102f:b0:66d:ff4:804b with SMTP id
 x15-20020a056902102f00b0066d0ff4804bmr13869882ybt.229.1656654036343; Thu, 30
 Jun 2022 22:40:36 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Fri, 1 Jul 2022 10:10:25 +0430
Message-ID: <CAA=S3Ps-+BXD0qqG32gdMVTznKGBjmT70JPPW5Nc1By287KTmQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: JGR3OQQ7G3UFD43ZQ4Z5XOSSMX2ORSVR
X-Message-ID-Hash: JGR3OQQ7G3UFD43ZQ4Z5XOSSMX2ORSVR
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How can convert a complex float 32 signal to complex int 16 signal for using in USRP??
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JGR3OQQ7G3UFD43ZQ4Z5XOSSMX2ORSVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5133252735950774889=="

--===============5133252735950774889==
Content-Type: multipart/alternative; boundary="0000000000005a1f5a05e2b7d3e8"

--0000000000005a1f5a05e2b7d3e8
Content-Type: text/plain; charset="UTF-8"

I recorded a complex signal file, I did it with HackRFONE,  For sending on
USRP I want to use the int16 option as input, My question is how can
convert a complex float 32 signal to complex int 16 for USRP?
what's the relation between complex float 32 and complex int 32 in USRP?
I know that in USRP numbers are in format complex int 16 and big-endian and
in Gnuradio numbers in format complex float 32 and little-endian...
https://files.ettus.com/manual/page_converters.html
I used volk lib but the float that I entered as input, is ceiled to bigger
integers. Is this a method valid for converting signals...?Or my data will
be corrupt!!!
Thanks in advance.


       lv_16sc_t* outputVector;
>
>        lv_32fc_t* inputVector;
>
>        inputVector->real(25.55);
>
>        inputVector->imag(45);
>
>        volk_32fc_convert_16ic(outputVector,inputVector,32);
>
>        qDebug()<<outputVector->real()<<"-----";
>
>
The output:

> 26 -----
>
>

--0000000000005a1f5a05e2b7d3e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I recorded a complex signal file, I did it with HackRFONE,=
=C2=A0 For sending on USRP I want to use the int16 option as input, My ques=
tion=C2=A0is how can convert a complex float 32 signal to complex int 16 fo=
r USRP?<div>what&#39;s the relation between complex float 32 and complex in=
t 32 in USRP?</div><div>I know that in USRP numbers are in format complex i=
nt 16 and big-endian and in Gnuradio numbers in format complex float 32 and=
 little-endian...</div><div><a href=3D"https://files.ettus.com/manual/page_=
converters.html">https://files.ettus.com/manual/page_converters.html</a></d=
iv><div>I used volk lib but the float that I entered as input, is ceiled to=
 bigger integers. Is this a method valid for converting=C2=A0signals...?Or =
my data will be corrupt!!!</div><div>Thanks in advance.</div><div><br></div=
><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><pre styl=
e=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(192,192,192=
)">       </span><span style=3D"color:rgb(128,0,128)">lv_16sc_t</span>*<spa=
n style=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(9,46,10=
0)">outputVector</span>;</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">       </span><span style=3D"color:rgb(128,0,128)">lv_32fc_t</s=
pan>*<span style=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rg=
b(9,46,100)">inputVector</span>;</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">       </span><span style=3D"color:rgb(9,46,100)">inputVector</=
span>-&gt;<span style=3D"color:rgb(0,103,124)">real</span>(<span style=3D"c=
olor:rgb(0,0,128)">25.55</span>);</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">       </span><span style=3D"color:rgb(9,46,100)">inputVector</=
span>-&gt;<span style=3D"color:rgb(0,103,124)">imag</span>(<span style=3D"c=
olor:rgb(0,0,128)">45</span>);</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">       </span><span style=3D"color:rgb(206,92,0)">volk_32fc_con=
vert_16ic</span>(<span style=3D"color:rgb(9,46,100)">outputVector</span>,<s=
pan style=3D"color:rgb(9,46,100)">inputVector</span>,<span style=3D"color:r=
gb(0,0,128)">32</span>);</pre>
<pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(19=
2,192,192)">       </span><span style=3D"color:rgb(0,0,128)">qDebug</span>(=
)<span style=3D"color:rgb(0,103,124)">&lt;&lt;</span><span style=3D"color:r=
gb(9,46,100)">outputVector</span>-&gt;<span style=3D"color:rgb(0,103,124)">=
real</span>()<span style=3D"color:rgb(0,103,124)">&lt;&lt;</span><span styl=
e=3D"color:rgb(0,128,0)">&quot;-----&quot;</span>;</pre></blockquote><div><=
br></div><div>The output:</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:=
rgb(0,128,0)">26 -----</span></pre></blockquote></div>

--0000000000005a1f5a05e2b7d3e8--

--===============5133252735950774889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5133252735950774889==--
