Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E3B58CC24
	for <lists+usrp-users@lfdr.de>; Mon,  8 Aug 2022 18:31:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EE773837DE
	for <lists+usrp-users@lfdr.de>; Mon,  8 Aug 2022 12:31:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659976278; bh=s36p2arnIJoqtXVwrmIHu0cVQWoNud3LU8iZuEsSp6Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yqzRdvmsmR/ayW7tzO8F3G0Xblhdba1gh3b1iTnLCOoX3baioyYfRSs3p6M5W3Jpr
	 PBNCpR8SPOa9/WHYfDIvrjDFTqomcGFe3vjHDMD3skPoFITL9cjDBCK7Rcj9mQnpVC
	 LF2Lb8vYEnEyQdmjVRNDsHNQXo7IDZdHyriUN6yVGZzS6M2bKUXvhG3+uUJr74yRyU
	 SrxvKUbEV5Xu/+0dXNucfitAC7vKD3sZAb7qmdCLCGwsz9yCOcQUu4kyPOGsu44IeT
	 hXsy1z1wUFrA/4da7XbFuV66ezpPgWGMJmR+0qWmUgr3cIx+MViLlNj0sC1FvyfpH2
	 3+46CUs243BEw==
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mm2.emwd.com (Postfix) with ESMTPS id C75A7380F84
	for <usrp-users@lists.ettus.com>; Mon,  8 Aug 2022 12:29:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="bXLZ5iZ/";
	dkim-atps=neutral
Received: by mail-vs1-f51.google.com with SMTP id j2so9379651vsp.1
        for <usrp-users@lists.ettus.com>; Mon, 08 Aug 2022 09:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=CQnqFlbbpSmt/Rbv5CPoFxO5aWlV2r9o4tdoRv+F7vI=;
        b=bXLZ5iZ/WBSEKW2u7OVsajkywGfrZ43XERKFzeb+3KegxeMR2tzdOUxea/8PKmr29d
         JQbRXr7mKm/OZh71RSfh0KMc8fWNpYGRfp2YhSU14aqvieM4UBeGOXMpjC3XO7uyMoeR
         iDIWnmlPyH0jOKsaFgeIqu4DM8+Bc0hnz0OiFA1pE+a1ZY52DQHKFKJLlDgX2YrU0U62
         6sFmhZyrU2sds68DaaeBIbESI26PjVhOdBZpPrYJaP9Gk6Zg6GseXkW0qGL1Sy74doKr
         GZItCNX2ZNwW6VLKdM9myxRRy3J8i/vqzzuHonYWCrNq2EjMCzu7ayNdsQYwrPJDvAjk
         hn9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=CQnqFlbbpSmt/Rbv5CPoFxO5aWlV2r9o4tdoRv+F7vI=;
        b=bB+THHaKwKQKTSFGwYFQ6PM3ZTxdrrLgv3adPzxrlLc6mkUfCoHssqGAmll0+xcBza
         SIzK6WaoALQ64WYLNJZeEGJLI44i5n13ikL/wUAMWfidksrxvsYP5O8AJlQo2O1l3kRT
         5Z9BOO+UX9ignVAStt03Y9aYr0D2oe8smhgYonaRYdTSU6+BxzjeJ6y+dtqPBQziNJTF
         rb4pkmQoN5HVS/XKQPpFlpbKjMhqlUAn7MLMen/lnoNp3Vzekd6P610lmlfSEpANf648
         NmcLLzYwyxxSLt/RMwzJbEIVspVWMfrk1GZ/nMhW2b4+chHsHpsX7VeoAQW8JAXQYI2u
         NOBA==
X-Gm-Message-State: ACgBeo0bprucI80SyOuH5CNwtjPKNOXnqxtAptlVVknd2OYR0CGq+kuy
	8SJ+zKpI4VJh6lFCT6ag2hZvfsD1QIKoiwpzNd82efnj
X-Google-Smtp-Source: AA6agR4ZKSJZdDibdckZK/FBSh/FvStiXQ7lj2QidXnd2XgQopL/QbWgSHtm7JyIz1tqsFziDWBwiNa4ffz0IMCMF1s=
X-Received: by 2002:a67:b34b:0:b0:380:46bb:974e with SMTP id
 b11-20020a67b34b000000b0038046bb974emr7582637vsm.77.1659976141092; Mon, 08
 Aug 2022 09:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <CALooG3-tGbHmBpZUvb8z3daaB61QW=w1-SrOKx5LuryiL4i-HA@mail.gmail.com>
In-Reply-To: <CALooG3-tGbHmBpZUvb8z3daaB61QW=w1-SrOKx5LuryiL4i-HA@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Mon, 8 Aug 2022 12:28:25 -0400
Message-ID: <CAL7q81uunsoLn00fzCLdVqWPNssurXfoBw7pqyLL6DoaNHfT6A@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: 6XCOZM4WC6OLLGCJZYW6ALVM6EZQHDMS
X-Message-ID-Hash: 6XCOZM4WC6OLLGCJZYW6ALVM6EZQHDMS
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Building Custom IP and Working it via UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6XCOZM4WC6OLLGCJZYW6ALVM6EZQHDMS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3232199607890387325=="

--===============3232199607890387325==
Content-Type: multipart/alternative; boundary="00000000000039cf6105e5bd5006"

--00000000000039cf6105e5bd5006
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yasir,

I suggest taking a look at this example using the Siggen block:
https://github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps/rfnoc_=
siggen_example.cpp.
As for adding IP, rfnoc-example has an example using a complex multiplier:
https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-exampl=
e/fpga/ip/.
I also suggest updating your E320 and Host UHD version to 4.2 as there have
been several bug fixes since UHD 4.0.

Jonathon


On Mon, Aug 8, 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous11=
@gmail.com>
wrote:

> Hi everyone,
>
>   I have a E320 device and I am trying to learn how to build my own custo=
m
> IPs. The thing is that the IPs which were implemented by Ettus were not
> enough for me. Therefore; I need to build my own custom IPs. I have all t=
he
> HDL codes that I need to build on E320, but I am having a problem with E3=
20
> development flow.
>
>   To learn how to add my custom IPs, I have analyzed the Rfnoc-example in
> the uhd repository. In that example, they showed basic Gain IP (which use=
s
> multiply IP). Firstly, I have synthesized and implemented that example.
> After that, I loaded the bit file into USRP and tested it
> with a init_gain_block C++ file. I tried to write a value to register and
> read back from the same register. It worked fine. I also changed the
> default UHD C++ code and wrote a basic UHD C++ code to amplify a signal b=
y
> looking at example UHD C++ codes. That worked fine, too. The Signal given
> from ADC is amplified and given back to DAC. After that I changed the
> multiply IP with DDS IP and tried to build it to generate a signal. The
> thing is that I implemented it successfully and the bit file was generate=
d,
> but it did not work after loading it into the device.
>
> There are 2 problems:
> 1 -) Since all the example UHD C++ codes are meant to transfer data
> between host and device, I do not know how to make it work. Because, my D=
DS
> IP does not need to transfer data between host and device. I just need to
> write a frequency value to register and DDS will generate a signal. After
> that, I expect it to work fine. To do that, in UHD C++ code I have used
> rfnoc_graph and connected my block with the DUC block. Also I connected t=
he
> DUC block with the Radio block. I expect this to work seamlessly, but it
> did not. I could not figure out how to write a C++ code to make this work=
.
> The code gives an error which is "[ERROR] [RFNOC::GRAPH] Caught exception
> while initializing graph: Environment Error: IOError: Timed out getting
> recv buff for management transaction"
>
> 2 -) While building DDS IP, I have opened a Vivado 2019.1 and generated a
> DDS IP. Then, I used the .xci file in uhd. I do not know if this is the
> right way, but UHD gives no error while implementing it.
>
>
>
> USRP Device :E320
> UHD Version : 4.0.0.0
> Host OS : Ubuntu 20.04.4
>
> Kind Regards,
> Yasir
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000039cf6105e5bd5006
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Yasir,<div><br></div><div>I suggest taking a look =
at this example using the Siggen block:=C2=A0<a href=3D"https://github.com/=
EttusResearch/rfnoc-apps/blob/testing/master/apps/rfnoc_siggen_example.cpp"=
>https://github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps/rfnoc=
_siggen_example.cpp</a>. As for adding IP, rfnoc-example has an example usi=
ng a complex multiplier:=C2=A0<a href=3D"https://github.com/EttusResearch/u=
hd/tree/master/host/examples/rfnoc-example/fpga/ip/">https://github.com/Ett=
usResearch/uhd/tree/master/host/examples/rfnoc-example/fpga/ip/</a>. I also=
 suggest updating your E320 and Host UHD version to 4.2 as there have been =
several bug fixes since UHD 4.0.</div><div><br></div><div>Jonathon</div><di=
v><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Aug 8, 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt=
;<a href=3D"mailto:simultaneous11@gmail.com">simultaneous11@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hi everyone,<div><br><div>=C2=A0 I have a E320 device and I am t=
rying to learn how to build my own custom IPs. The thing is that the IPs wh=
ich were implemented by Ettus were not enough for me. Therefore; I need to =
build my own custom IPs. I have all the HDL codes that I need to build on E=
320, but I am having a problem with E320 development flow.</div><div><br></=
div><div>=C2=A0 To learn how to add my custom IPs, I have analyzed the Rfno=
c-example in the uhd repository. In that example, they showed basic Gain IP=
 (which uses multiply IP). Firstly, I have synthesized and implemented that=
 example. After that, I loaded the bit file into USRP and tested it with=C2=
=A0a=C2=A0init_gain_block C++ file. I tried to write a value to register an=
d read back from the same=C2=A0register. It worked fine. I also changed the=
 default UHD C++ code and wrote a basic UHD C++ code to amplify a signal by=
 looking at example=C2=A0UHD C++ codes. That worked fine, too. The Signal g=
iven from ADC is amplified and given back to DAC. After that I changed the =
multiply IP with DDS IP and tried to build it to generate a signal. The thi=
ng is that I implemented it successfully and the bit file was generated, bu=
t it did not work after loading it into the device.=C2=A0</div><div><br></d=
iv><div>There are 2 problems:</div><div>1 -) Since all the example UHD C++ =
codes are meant to transfer data between host and device, I do not know how=
 to make it work. Because, my DDS IP does not need to transfer data between=
 host and device. I just need to write a frequency value to register and DD=
S will generate a signal. After that, I expect it to work fine. To do that,=
 in UHD C++ code I have used rfnoc_graph and connected my block with the DU=
C block. Also I connected the DUC block with the Radio block. I expect this=
 to work seamlessly, but it did not.=C2=A0I could=C2=A0not figure out how t=
o write a C++ code to make this work.</div><div>The code gives an error whi=
ch is &quot;[ERROR] [RFNOC::GRAPH] Caught exception while initializing grap=
h: Environment Error: IOError: Timed out getting recv buff for management t=
ransaction&quot;</div><div><br></div><div>2 -) While building DDS IP, I hav=
e opened a Vivado 2019.1 and generated a DDS IP. Then, I used the .xci file=
 in uhd. I do not know if this is the right way, but UHD gives no error whi=
le implementing it.</div><div><br></div><div><br></div><div><br></div><div>=
USRP Device :E320</div><div>UHD Version : 4.0.0.0</div><div>Host OS : Ubunt=
u 20.04.4</div></div><div><br></div><div>Kind Regards,</div><div>Yasir</div=
><div><br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000039cf6105e5bd5006--

--===============3232199607890387325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3232199607890387325==--
