Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF5F3CEE8E
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 23:50:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9F603849C0
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 17:50:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nlzWHLmS";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C9D03849A2
	for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 17:49:44 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id s193so18240479qke.4
        for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 14:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=McvG8CnS82fHNCp0wAAk59C5JlPB4dYjx78dh9lRZyc=;
        b=nlzWHLmS/wcyBB130QBLXQPKEZZZczufnghK+8Im1RGaf7BuP24CXjAxUSFIoZ96sY
         gV9S9yhBoDkttQeQsCuEaD4rfjw4gj8eCQGUQEqkPebKsuNClg6MvKay7c/Js4xBb3sG
         4dYbj+iDcnLFBSIbrTK0Xki+/eeYqVdZbvVBglbKCeywUCMj9jm71XuFs6AuMu8wzx1S
         nemEv4FBHPW4bnrL9PNE+X9gB0UyBmt7NZVl+JoG1bTiRpH5Sfjg6yNHsI7q5a109xZX
         jjG8TTaXqxZviJx6rJgNAZEJ2UYjJgElarrk5+tH/CFM8kqoXAibc76Fn1RSAimf1yBx
         D1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=McvG8CnS82fHNCp0wAAk59C5JlPB4dYjx78dh9lRZyc=;
        b=n5Xlkf9dWloPeh960heCSMkgBEcWG+Xq1MLO+7HG8gzZZ9BXK2Uk0qqGrV3R16jJIS
         z0OO7lvVlOcYDp+BXO4URL0K0JFqH6K8+xqF5G6SdslBzk53rKNt0uIzBFJPfTTV8YnE
         TzWrymxvt+MtLkuPr3sAS/ADIhdA2KAWulX8tKB6OuOR3PRyQpaqAPCTz9Bav8fjm5C6
         afPZ4pQmwm3KhGISsf8bx+kNRMAYMJPTpnqufFE/5Mx5U3/ZBfa2KH+Cf059gqMbjeRQ
         RP+Wb0PZwmsS466m3rEr2AFEaFaLMCM/M2MMdZdMD1o/vGrIR84PHPaT7R+mBtwisRK4
         IOTg==
X-Gm-Message-State: AOAM532dXgO0vGH9lk1OdD7zQBZxFaoSfSSsKDxFNPrvAvfB2NByOvNX
	AtBZgWCOVK4Z8ucZcI3rJrYKLl99NCM=
X-Google-Smtp-Source: ABdhPJwocfNB8ZAn+wCoZAPPjhSwTXm6wvUtUevuCHqmPS9/f7QUvWdALTHLaqTZO/u178OKB+8k2w==
X-Received: by 2002:a05:620a:171e:: with SMTP id az30mr8835536qkb.325.1626731384075;
        Mon, 19 Jul 2021 14:49:44 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:182f:8d51:fc9e:d912:6045:c4e4])
        by smtp.gmail.com with ESMTPSA id y2sm1228791qkd.38.2021.07.19.14.49.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 14:49:43 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Jul 2021 17:49:42 -0400
Message-Id: <B8527CE3-30C1-4DD5-9673-B9D03C8FA7CD@gmail.com>
References: <f60044a054e844a19b1ff70a360bc9ad@tudelft.nl>
In-Reply-To: <f60044a054e844a19b1ff70a360bc9ad@tudelft.nl>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: CUAMDDPYIKIZJ5TGDSCIGSYVZVC55E32
X-Message-ID-Hash: CUAMDDPYIKIZJ5TGDSCIGSYVZVC55E32
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC TX Streamer issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CUAMDDPYIKIZJ5TGDSCIGSYVZVC55E32/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0859784240547356514=="


--===============0859784240547356514==
Content-Type: multipart/alternative; boundary=Apple-Mail-7B8981DA-F54C-4487-B4AA-9147E2330D8F
Content-Transfer-Encoding: 7bit


--Apple-Mail-7B8981DA-F54C-4487-B4AA-9147E2330D8F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes, that=E2=80=99s definitely a bug that shown itself a couple of times on t=
he thread. It also bit me once or twice.

<end transmission>

> On Jul 19, 2021, at 05:05, Cherif Diouf <C.E.V.Diouf@tudelft.nl> wrote:
>=20
> =EF=BB=BF
> Thanks Paul!
>=20
>=20
>=20
> Indeed a DUC is needed. However I still had the same error after inserting=
 a DUC block in the transmission chain.
>=20
> It turns out that the "wire format" parameter of the RF_TX_streamer was se=
t to "automatic". It has to be changed to "complex int16" to make the flowgr=
aph work.
>=20
>=20
>=20
> Best Regards
>=20
> Cherif
>=20
> From: Paul Atreides <maud.dib1984@gmail.com>
> Sent: Monday, July 12, 2021 4:12:33 PM
> To: Cherif Diouf
> Cc: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] RFNoC TX Streamer issue
> =20
> the default X310 image has static connections in between the radio and the=
 endpoint on the crossbar, so while the dynamic routing of the stream is sti=
ll available, the two need to be used as a pair
> in the image the layout is like this:
> RX->DDC->EP->crossbar
> EP->DUC->EP->crossbar
>=20
> the crossbar isn't exposed to the user via GNURadio, but i'm alluding to t=
he deepre architecture of RFNoC.=20
> i'd recommend watching and reviewing these two presentations and their acc=
ompanying video thoroughly as they describe the general architecture and mov=
e into development.
>=20
> Presentations:
> https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part1.pdf
> https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf
> Video: https://youtu.be/M9ntwQie9vs
>=20
>=20
>=20
>=20
>=20
>> On Mon, Jul 12, 2021 at 7:41 AM Cherif Diouf <C.E.V.Diouf@tudelft.nl> wro=
te:
>> Hi,
>>=20
>> =20
>>=20
>> I am using an X310 device and I have freshly install RFNoC 4, (Vivado 201=
9.1, UHD 4.0, GNU Radio 3.8, gr-ettus )using the migration guide
>>=20
>> =20
>>=20
>> (https://kb.ettus.com/RFNoC_4_Migration_Guide#Prerequisites).
>>=20
>> =20
>>=20
>> I tried to build a simple GNU Radio flowgraph
>>=20
>> =20
>>=20
>> GNU Radio source signal (cosine) -> RFNoC TX streamer -> RFNoC Radio.
>>=20
>> But when I run the graph I obtain the following error:
>>=20
>> "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 1584, in=
 make
>>     return _ettus_swig.rfnoc_tx_streamer_make(graph, num_chans, stream_ar=
gs, vlen)
>> RuntimeError: LookupError: KeyError: [convert] Cannot find an item size f=
or: `'
>>=20
>> =20
>>=20
>> Do you have any idea where it should come from.
>>=20
>> =20
>>=20
>> Best Regards
>>=20
>> Cherif
>>=20
>> =20
>>=20
>> Below is the full tx script
>>=20
>> =20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-7B8981DA-F54C-4487-B4AA-9147E2330D8F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes, that=E2=80=99s definitely a bug that s=
hown itself a couple of times on the thread. It also bit me once or twice.<b=
r><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit=
-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-c=
olor: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color: rgba(7=
7, 128, 180, 0.230469); ">end transmission&gt;</span></div><div dir=3D"ltr">=
<br><blockquote type=3D"cite">On Jul 19, 2021, at 05:05, Cherif Diouf &lt;C.=
E.V.Diouf@tudelft.nl&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=




<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-=
family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Thanks Paul!</p>
<p><br>
</p>
<p>Indeed a DUC is needed. However I still had the same error after insertin=
g a DUC block in the transmission chain.</p>
<p>It turns out that the "wire format" parameter of the RF_TX_streamer was s=
et to "automatic". It has to be changed to "complex int16" to make the flowg=
raph work.</p>
<p><br>
</p>
<p>Best Regards</p>
<p>Cherif<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Paul Atreides &lt;maud.=
dib1984@gmail.com&gt;<br>
<b>Sent:</b> Monday, July 12, 2021 4:12:33 PM<br>
<b>To:</b> Cherif Diouf<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] RFNoC TX Streamer issue</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">the default X310 image has static connections in between th=
e radio and the endpoint on the crossbar, so while the dynamic routing of th=
e stream is still available, the two need to be used as a pair
<div>in the image the layout is like this:<br>
RX-&gt;DDC-&gt;EP-&gt;crossbar</div>
<div>EP-&gt;DUC-&gt;EP-&gt;crossbar</div>
<div><br>
</div>
<div>the crossbar isn't exposed to the user via GNURadio, but i'm alluding&n=
bsp;to the deepre architecture of RFNoC.&nbsp;</div>
<div>i'd recommend watching and reviewing these two presentations and their a=
ccompanying video thoroughly as they describe the general architecture and m=
ove into development.</div>
<div><br>
</div>
<div>Presentations:</div>
<div><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.g=
nuradio.org_grcon_grcon20_grcon20-5FRFNoC-5F4-5FPart1.pdf&amp;d=3DDwMFaQ&amp=
;c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-TBPLK0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I17C=
Laka29UJ1VwI3mC9u8FAc7Ss&amp;m=3DT5xzZT03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0=
&amp;s=3DANq-0G3cy_sy99pwI7IZKSpPh3pWmhqTsa8Z2zOpAwM&amp;e=3D">https://www.g=
nuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part1.pdf</a><br>
</div>
<div><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.g=
nuradio.org_grcon_grcon20_grcon20-5FRFNoC-5F4-5FPart2.pdf&amp;d=3DDwMFaQ&amp=
;c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-TBPLK0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I17C=
Laka29UJ1VwI3mC9u8FAc7Ss&amp;m=3DT5xzZT03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0=
&amp;s=3DGhe7bIuG2SWXOTBWVRShnk-52URdR5R-NweFvuXvMfA&amp;e=3D">https://www.g=
nuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf</a><br>
</div>
<div>Video:&nbsp;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhtt=
ps-3A__youtu.be_M9ntwQie9vs&amp;d=3DDwMFaQ&amp;c=3DXYzUhXBD2cD-CornpT4QE19xO=
JBbRy-TBPLK0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&amp;m=
=3DT5xzZT03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0&amp;s=3DkPxLeYnGzBwS8yb0mxtaG=
X4U0AaR_6A70-v3fkjOoMM&amp;e=3D">https://youtu.be/M9ntwQie9vs</a></div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 12, 2021 at 7:41 AM Cherif=
 Diouf &lt;<a href=3D"mailto:C.E.V.Diouf@tudelft.nl">C.E.V.Diouf@tudelft.nl<=
/a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
<div lang=3D"NL">
<div class=3D"gmail-m_-58900789772059627WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am using an X310 device and I h=
ave freshly install RFNoC 4, (Vivado 2019.1, UHD 4.0, GNU Radio 3.8, gr-ettu=
s )using the migration guide<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">(<a href=3D"https://urldefense.p=
roofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_RFNoC-5F4-5FMigration-5FGuid=
e-23Prerequisites&amp;d=3DDwMFaQ&amp;c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-TBPL=
K0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&amp;m=3DT5xzZT0=
3jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0&amp;s=3DxpfY1DXL76DEvQLSMjBIK3hMEAmS0SP=
nqehrvYA6wuk&amp;e=3D" target=3D"_blank">https://kb.ettus.com/RFNoC_4_Migrat=
ion_Guide#Prerequisites</a>).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I tried to build a simple GNU Ra=
dio flowgraph<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">GNU Radio source signal (cosine)=
 -&gt; RFNoC TX streamer -&gt; RFNoC Radio.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">But when I run the graph I obtai=
n the following error:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"color:black">"/usr/l=
ocal/lib/python3/dist-packages/ettus/ettus_swig.py", line 1584, in make<br>
&nbsp;&nbsp;&nbsp; return _ettus_swig.rfnoc_tx_streamer_make(graph, num_chan=
s, stream_args, vlen)<br>
RuntimeError: LookupError: KeyError: [convert] Cannot find an item size for:=
 `'</span></b><b><span lang=3D"EN-GB" style=3D"font-size:12pt;color:black"><=
u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Do you have any idea where it sh=
ould come from.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Best Regards<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Cherif<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Below is the full tx script<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>


</div></blockquote></body></html>=

--Apple-Mail-7B8981DA-F54C-4487-B4AA-9147E2330D8F--

--===============0859784240547356514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0859784240547356514==--
