Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23ED77FFD6
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 19:45:30 +0200 (CEST)
Received: from [::1] (port=54014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htbcO-0007xV-9g; Fri, 02 Aug 2019 13:45:28 -0400
Received: from mail-lf1-f53.google.com ([209.85.167.53]:43262)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1htbcL-0007kU-8X
 for usrp-users@lists.ettus.com; Fri, 02 Aug 2019 13:45:25 -0400
Received: by mail-lf1-f53.google.com with SMTP id c19so53500510lfm.10
 for <usrp-users@lists.ettus.com>; Fri, 02 Aug 2019 10:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oEG7TrA1ApwEPu2vgAfMzjUjyKFUuBLLRoLrHRNgYOo=;
 b=OVAAKCeUxbDcnh7UE9khr+iU1xET5dUq8ZNhZgZq6VTl1BX6d9WcvnUL0IJ+GXzDMz
 6OJdpf+wmDj3low9meEg/VLKkPaL2f5hzJCTriFAHgcPqKCX6tzLE2qi74wH57bi2kZQ
 InXqICo6SPmNzW9fX/8O2Jm+wzx6OPQwzRIh6zeK8ZSmYVqap0StC7FYKQWge8q8t5mG
 FexjriWYqhfZB3zq6cOlWW94URpBPkbW2wL2rYr1ewuwk3SgJwpa4jdyJqm1ZKP04zJW
 1iErv3SBfX2FgXgUl7TOwwR9uU7AtnMKi4fzvRIJkBRkzHI3xmy0qJLUJtnInvM5AzIm
 uE5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oEG7TrA1ApwEPu2vgAfMzjUjyKFUuBLLRoLrHRNgYOo=;
 b=ApYfMqoIHI4ogMmNh8GSaU5tQZ5ZOOJxwRUCWWduAAOQN/zbwqWBaJguaU+5eTh0Ow
 2GytQ2qrpVct2soLEzuwR/RwRyebOE8GlDrHagYv/ySQ9vMRuj7RNpySXkPPEJL310oV
 N0HgubJshQGBxbuCPng+mZ5J0VtDVp58frCwZ+zPFG11nHyJQbnfAi8CHWS/pIaxeVIW
 glazC8dqR0f7TAuqM6FsM9HG5c/AoejBco78Wl73Oel0zPUKrwQAxlq2ifWDCYMeTYWX
 ZeI6V86l39akfEEZxRFRljz2G+e+BsL425nU+bZZfTfJosGRz/LYuYTEB2C7FXy6Ymbd
 o1jg==
X-Gm-Message-State: APjAAAULC2W7zDuh+LLqsu+sIqrjYFL/+ZrgUoO3OWrdudEqAyTbmx5c
 7GdKNQzv2T8mllU4Fhbtxvzt2tN1Az2m5K2/qjD+wblk
X-Google-Smtp-Source: APXvYqyH80sgBK9WQa+vLz2LS///hgHUp4OOdVffxNGp/bHNYw0RBPy39ObJm8iHYcqUJ3LW6iDECeSwrO9GoIl1+1c=
X-Received: by 2002:ac2:5bc7:: with SMTP id u7mr30468691lfn.167.1564767883866; 
 Fri, 02 Aug 2019 10:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <0DDB54B1-7013-468B-B0FB-CB0262804513@contoso.com>
 <c82d5049-525c-f985-fabc-7b29b2687225@inets.rwth-aachen.de>
 <255EAC65-3DFA-4CBC-AADD-3CD78FAEB801@ll.mit.edu>
In-Reply-To: <255EAC65-3DFA-4CBC-AADD-3CD78FAEB801@ll.mit.edu>
Date: Sat, 3 Aug 2019 02:44:08 +0900
Message-ID: <CAL7q81tXWQ3nPPqQYeFTLx5dg9_6UgHXgW3k7P8AqH07FVwL+A@mail.gmail.com>
To: "Leong, Kirsten - 0551 - MITLL" <Kirsten.Leong@ll.mit.edu>
Subject: Re: [USRP-users] Error 'Timeout on Chan 0'
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1879132974690028830=="
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

--===============1879132974690028830==
Content-Type: multipart/alternative; boundary="000000000000dfccfc058f25e99c"

--000000000000dfccfc058f25e99c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kirsten,

Have you used chipscope on your block and checked that it is sending out
samples? If not, I would suggest at minimum looking at the status of the
m_data and s_data AXI stream buses on AXI wrapper. Here is a guide on how
to setup chipscope: https://kb.ettus.com/Debugging_FPGA_images

Jonathon

On Sat, Aug 3, 2019 at 1:24 AM Leong, Kirsten - 0551 - MITLL via USRP-users
<usrp-users@lists.ettus.com> wrote:

> I tried reformatting the xml file based off the uhd_rfnoc_adder.xml file;
> however, I still get the same error. I=E2=80=99m not trying to throw any =
packets
> away so I cannot ignore the error. My block is expecting to take in a
> complex 32bit floats and output a 32 bit float.
>
>
>
> *From: *USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Lars
> Kuger via USRP-users <usrp-users@lists.ettus.com>
> *Reply-To: *Lars Kuger <lku@inets.rwth-aachen.de>
> *Date: *Friday, August 2, 2019 at 10:14 AM
> *To: *"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] Error 'Timeout on Chan 0'
>
>
>
> Hello Kirsten,
>
> I remember getting the same error message while developing a custom RFNoC
> block. I found the problem to be caused by the corresponding xml file whi=
ch
> is located in the grc folder. I am not sure what part of the file exactly
> caused the error message (maybe the ordering of the parameters or tags
> within the parameters) but I eventually solved it by replacing the file
> with the xml file from a working block and modifying that one.
>
> Best regards,
> Lars
>
>
>
> On 02.08.19 15:50, Leong, Kirsten - 0551 - MITLL via USRP-users wrote:
>
> Hello,
>
>
>
> I am using a USRP X310 and am using gnuradio companion to test a custom
> block. The current diagram flows as follows: File Source->RFNoC
> FIFO->custom block->complex to image->frequency sink. However, when I try
> to execute, I get the error =E2=80=98timeout on chan 0=E2=80=99. My testb=
ench passes all 5
> cases; I can read signals on the inputs and outputs of the noc block and
> the flow graph works once I remove my custom block. Where else should I b=
e
> looking?
>
>
>
> Thanks,
>
> Kirsten
>
>
>
> _______________________________________________
>
> USRP-users mailing list
>
> USRP-users@lists.ettus.com
>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000dfccfc058f25e99c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Kirsten,<div><br></div><div>Have you used chipscope on =
your block and checked that it is sending out samples? If not, I would sugg=
est at minimum looking at the status of the m_data and s_data AXI stream bu=
ses on AXI wrapper. Here is a guide on how to setup chipscope:=C2=A0<a href=
=3D"https://kb.ettus.com/Debugging_FPGA_images">https://kb.ettus.com/Debugg=
ing_FPGA_images</a></div><div><br></div><div>Jonathon</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Aug 3, 2=
019 at 1:24 AM Leong, Kirsten - 0551 - MITLL via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_7078713150829722262WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I tried reformatting =
the xml file based off the uhd_rfnoc_adder.xml file; however, I still get t=
he same error. I=E2=80=99m not trying to throw any packets away so I cannot=
 ignore the error. My block is expecting to
 take in a complex 32bit floats and output a 32 bit float.<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(181,196,223);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From: </span></b><spa=
n style=3D"color:black">USRP-users &lt;<a href=3D"mailto:usrp-users-bounces=
@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&=
gt; on behalf of Lars Kuger via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Reply-To: </b>Lars Kuger &lt;<a href=3D"mailto:lku@inets.rwth-aachen.de"=
 target=3D"_blank">lku@inets.rwth-aachen.de</a>&gt;<br>
<b>Date: </b>Friday, August 2, 2019 at 10:14 AM<br>
<b>To: </b>&quot;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject: </b>Re: [USRP-users] Error &#39;Timeout on Chan 0&#39;<u></u><u=
></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
<p>Hello Kirsten,<u></u><u></u></p>
<p>I remember getting the same error message while developing a custom RFNo=
C block. I found the problem to be caused by the corresponding xml file whi=
ch is located in the grc folder. I am not sure what part of the file exactl=
y caused the error message (maybe
 the ordering of the parameters or tags within the parameters) but I eventu=
ally solved it by replacing the file with the xml file from a working block=
 and modifying that one.<u></u><u></u></p>
<p>Best regards,<br>
Lars<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 02.08.19 15:50, Leong, Kirsten - 0551 - MITLL via=
 USRP-users wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hello,</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I am using a USRP X31=
0 and am using gnuradio companion to test a custom block. The current diagr=
am flows as follows: File Source-&gt;RFNoC FIFO-&gt;custom block-&gt;comple=
x to image-&gt;frequency sink. However, when I
 try to execute, I get the error =E2=80=98timeout on chan 0=E2=80=99. My te=
stbench passes all 5 cases; I can read signals on the inputs and outputs of=
 the noc block and the flow graph works once I remove my custom block. Wher=
e else should I be looking?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks,</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Kirsten</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><br>
<br>
<u></u><u></u></span></p>
<pre>_______________________________________________<u></u><u></u></pre>
<pre>USRP-users mailing list<u></u><u></u></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><u></u><u></u></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</a><u></u><u></u></pre>
</blockquote>
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

--000000000000dfccfc058f25e99c--


--===============1879132974690028830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1879132974690028830==--

