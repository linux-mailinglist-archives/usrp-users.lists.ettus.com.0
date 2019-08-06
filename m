Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6587E8297E
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2019 04:05:43 +0200 (CEST)
Received: from [::1] (port=45756 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1huor7-0004eZ-9W; Mon, 05 Aug 2019 22:05:41 -0400
Received: from mail-lf1-f50.google.com ([209.85.167.50]:46975)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1huor3-0004Zf-9n
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 22:05:37 -0400
Received: by mail-lf1-f50.google.com with SMTP id z15so55350035lfh.13
 for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2019 19:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ZV/WMCWSlryEkus9HPw4KD/qoLWJaknIkwzYlh3QZE=;
 b=RAW4VRq5ZXTtzlEVFBLztMPEZMhFvyRC+q14P7EOh7VN6dN/Apt7dUsLXwKYQsa9v7
 L+q75HofPZFeslaWydM6AxqJC4WVLLaUhpT141V3OlI58qEdi2tvyD//0VkGGefGOd10
 GNmMuQ0zUQXfccIdJR2lwiKNRaasmqjI/jEXVoMfIK8++xy4B33V+q2Ijii5ss7oYF/S
 8qIAqKdngV/rjnD4NUnM2AbCZXJU7EmPdRQeQPcI8DGZkmCN91OQXEXeIUlg7BFoNrRc
 4BriIHd/tg/4sHEOXKLM612coLr//a2YjKeDupEGzGZmnoLX8INCCZyD+avMmEtOnP/P
 8v/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ZV/WMCWSlryEkus9HPw4KD/qoLWJaknIkwzYlh3QZE=;
 b=JTB1h6MecXIAdBcWD+4g5ruaVGQcGmO+f2QxxFGpkm+CN/I5SP+H3jwNp89P89VE1L
 NbWMJNBqIfDA1FvZo5/Fq/u4QGcYscBTnMUIjfeQy9ofgyZ+20UMK1mA4KKvN4TzUAhk
 DAc7SgMi8P+4hylKQfxrbNKRVjBJxdY7QooxVGPMhHm0acGVV6ThTsrOUrvllu/lzw1h
 xG1sQW2yLyw5pciym7ncJSzJa1wOWxJAim9TyIR8+LjWd4+Fb2CM1d7hY8CTNZezCohJ
 eH3cKitsxzZkzH+E9cqiU89PJZE9SJNtwwYFY/zr9rzG19okDVd/Ny0p3309Hvm7Vr9b
 wV7A==
X-Gm-Message-State: APjAAAUgI0gqDRhzDdK+iDrrePZXUD0ivBEJCk9AI2u5+wOdA0ZDUC5y
 nJl2PlH+y56sf7TEWLezrDOrczKrRbCQBRTncgRicJCp
X-Google-Smtp-Source: APXvYqxJ+7/NqXhpJ/dNsuZ1g4iS11TvAuDTR3FchXezSJZcZ4aK2cjiH5EKWlLyEdrjhGO3HUvFGTvPqPewS2cEbbI=
X-Received: by 2002:a19:234c:: with SMTP id j73mr472835lfj.96.1565057095917;
 Mon, 05 Aug 2019 19:04:55 -0700 (PDT)
MIME-Version: 1.0
References: <0DDB54B1-7013-468B-B0FB-CB0262804513@contoso.com>
 <c82d5049-525c-f985-fabc-7b29b2687225@inets.rwth-aachen.de>
 <255EAC65-3DFA-4CBC-AADD-3CD78FAEB801@ll.mit.edu>
 <C5ABC132-D9B2-4032-9C99-1FC373C139CF@ll.mit.edu>
In-Reply-To: <C5ABC132-D9B2-4032-9C99-1FC373C139CF@ll.mit.edu>
Date: Tue, 6 Aug 2019 11:04:20 +0900
Message-ID: <CAL7q81tvUgOhoKFAVb7m1aRTaRm8tO2_t1WwkeDG_8P+V_1HJw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4804661472913041510=="
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

--===============4804661472913041510==
Content-Type: multipart/alternative; boundary="00000000000041762e058f694074"

--00000000000041762e058f694074
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kirsten,

That warning means you did not provide a custom C++ block controller for
your RFNoC block. If you are only using the Nocscript xml to describe your
block (most blocks do this), then you can ignore the warning.

Jonathon

On Mon, Aug 5, 2019 at 10:49 PM Leong, Kirsten - 0551 - MITLL via
USRP-users <usrp-users@lists.ettus.com> wrote:

> Could this be because I get the warning =E2=80=98can=E2=80=99t find a blo=
ck controller for
> key fmdemod, using default block controller!=E2=80=99 or is this a separa=
te problem?
>
>
>
> Thanks,
>
> Kirsten
>
>
>
> *From: *USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> "Leong, Kirsten - 0551 - MITLL via USRP-users" <usrp-users@lists.ettus.co=
m
> >
> *Reply-To: *"Leong, Kirsten - 0551 - MITLL" <Kirsten.Leong@ll.mit.edu>
> *Date: *Friday, August 2, 2019 at 12:25 PM
> *To: *Lars Kuger <lku@inets.rwth-aachen.de>, "usrp-users@lists.ettus.com"
> <usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] Error 'Timeout on Chan 0'
>
>
>
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

--00000000000041762e058f694074
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Kirsten,<div><br></div><div>That warning means you did =
not provide a custom C++ block controller for your RFNoC block. If you are =
only using the Nocscript xml to describe your block (most blocks do this), =
then you can ignore the warning.</div><div><br></div><div>Jonathon</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, Aug 5, 2019 at 10:49 PM Leong, Kirsten - 0551 - MITLL via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-3542521512414290768WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Could this be because=
 I get the warning =E2=80=98can=E2=80=99t find a block controller for key f=
mdemod, using default block controller!=E2=80=99 or is this a separate prob=
lem?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Kirsten<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(181,196,223);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From: </span></b><spa=
n style=3D"color:black">USRP-users &lt;<a href=3D"mailto:usrp-users-bounces=
@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&=
gt; on behalf of &quot;Leong, Kirsten - 0551 - MITLL via USRP-users&quot; &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt;<br>
<b>Reply-To: </b>&quot;Leong, Kirsten - 0551 - MITLL&quot; &lt;<a href=3D"m=
ailto:Kirsten.Leong@ll.mit.edu" target=3D"_blank">Kirsten.Leong@ll.mit.edu<=
/a>&gt;<br>
<b>Date: </b>Friday, August 2, 2019 at 12:25 PM<br>
<b>To: </b>Lars Kuger &lt;<a href=3D"mailto:lku@inets.rwth-aachen.de" targe=
t=3D"_blank">lku@inets.rwth-aachen.de</a>&gt;, &quot;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&qu=
ot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt;<br>
<b>Subject: </b>Re: [USRP-users] Error &#39;Timeout on Chan 0&#39;<u></u><u=
></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I tried reformatting =
the xml file based off the uhd_rfnoc_adder.xml file; however, I still get t=
he same error. I=E2=80=99m not trying to throw any packets away so I cannot=
 ignore the error. My block is expecting to
 take in a complex 32bit floats and output a 32 bit float.</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
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
<b>Subject: </b>Re: [USRP-users] Error &#39;Timeout on Chan 0&#39;</span><u=
></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
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
<p>=C2=A0<u></u><u></u></p>
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
<br>
</span><u></u><u></u></p>
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

--00000000000041762e058f694074--


--===============4804661472913041510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4804661472913041510==--

