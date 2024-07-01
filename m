Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5484091D979
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 09:53:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BE9538520A
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 03:53:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719820423; bh=q78tfEjiCEt+POucYxTI6JMgaoiXObYrcEGU7yV0m6M=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=p16DhctdDMkbNWLRF5X441eIYe1QFk8FB25PRXffoAmH/wMU+jYuvEr2f5VEELOm2
	 hBJGfi7HTkKzYs6+19pqh59/ySihM5Mn1+y7KrZDymAX9YNLe9/+7tSZhdDb2IlQ8T
	 x1PDvPV8LQeLrroNtE4eMk1lkIgrAvdu7lgaQPZXA7fgn5mOZZg/VC7TzMP8hdnjEn
	 dVFrd4sysb4RVkf1TtmnP4QmSeY2TCp5dWUgRjZzhGaNirTKMIOG+x1ZWzS8vVkaCu
	 6U9ML/CmJEIceKvhX2kPuBShBgPq9HeYLFSEiPXg3wLyD63swKK1FZ5BRd+OZIUIx1
	 pMogblqGvTaxg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id A3718385106
	for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2024 03:53:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="VHcnuHJX";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a724a8097deso308754266b.1
        for <usrp-users@lists.ettus.com>; Mon, 01 Jul 2024 00:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719820385; x=1720425185; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EKu2EGSLDqM1CGVnCDkERfCz5flPbghj7ta0YRjEaAE=;
        b=VHcnuHJX7ViAG6Yp/WZDs8RwtxYUR/1m48YBY65MzQK2/1Y4FSsmjbzbb3nWqEa7Ye
         LhjhYn/sKBh/U6fZdsHUhFAIWYdMfgzvLREjyII35Z7ChfOCvPyYilqSc8BRYcctQIUA
         6dXg/4i+XZNwE4ZtmAwgx4ZS+gFYAaxq8tuPCavGISAFwJwPklVmoZWaqgUEfu56ywnq
         eHv2GSYeCko26Q02dix+fkj1DiLGCJWm9ld5qSxL9Z3x5wZhCIVXlTfWHrhtMYssYdC+
         tEhIQ8y+j5Phn00a8uMnCP4UDfaBxWqbv15fJGXMpFsl5ZoOAT2y9soCS1dwy+PYpZdt
         NQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719820385; x=1720425185;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EKu2EGSLDqM1CGVnCDkERfCz5flPbghj7ta0YRjEaAE=;
        b=Kodn3y8Lc68J5E96gOlBva2qOyADK6QbSQtd86AuZBDNT8PLN8Jo2DtTGiXrp57EFp
         +aTvwGFT8ec1CFtZvb39r9peLxBhqxodj3WQHh44pMvmq1nM1L2rV/4qGSWW9XxqYfe2
         n/GQB9atpScmEmqsve29qSUey0gQ+sI38KzbzJbBh9PgfM5KJW328b/XRlNMwbdbP3o9
         dSjf9BuCsKaH3XCESApsbzZiJ/Yfw7W6kULBmdlHt306eUHyvnZ55NuolUgrGdlEVVRM
         34LZpZT+jeE+mfkdebCYVeBhJ/boGjgUC6RPNyp46EkzEGuEzHId4AgbUIZLBiRLimc/
         UvcA==
X-Gm-Message-State: AOJu0YxawoQcLfIUFlr4a9sppToxSr7D2rQ0BqhuueFz6pVIsWsnYO4V
	sOvPicJbn8KNa+yWJnXOxOo9H83LPvsxia3h8/b73uSysdOYWXUNtkJvpY3B16zf57ro5WceG1S
	vii/TGbxfOYQ9Kvbbb1xDjftGqa0F+QqWCjXV1MKxff1aCEwlMvw=
X-Google-Smtp-Source: AGHT+IFD3Ah3+uNgSyZXgLrwV1EzFcMobvQ7oxQFU9LiDR6ViB0rxAW2K1gtTBXwOolX1NXqI9lv7V/SQ6vN9YwhHIA=
X-Received: by 2002:a17:906:b756:b0:a72:8631:2e01 with SMTP id
 a640c23a62f3a-a7514498a41mr280220566b.64.1719820384550; Mon, 01 Jul 2024
 00:53:04 -0700 (PDT)
MIME-Version: 1.0
References: <DS0PR01MB79635F144100CD6C4EDE94E087D72@DS0PR01MB7963.prod.exchangelabs.com>
 <CAFOi1A72R2wVz+i7qMLpxYw+1xAwLMhw55emCDQJvCnx3F6FHQ@mail.gmail.com>
 <SA3PR01MB796705BF695CA698FB45A75F87D02@SA3PR01MB7967.prod.exchangelabs.com>
 <CAFOi1A7Ru1JSLE3BrsKpJCs3eFYMy_iSb-7eRCxfAMSt1B_BqA@mail.gmail.com>
 <SA3PR01MB7967631BE9CD4F7EFC384E3C87D02@SA3PR01MB7967.prod.exchangelabs.com>
 <CAFOi1A5XYtiE1RCEz5Ktond=5byycLWArvehG-qgLcBEFJySMQ@mail.gmail.com> <SA3PR01MB79678C8840C684BD0CDB128187D02@SA3PR01MB7967.prod.exchangelabs.com>
In-Reply-To: <SA3PR01MB79678C8840C684BD0CDB128187D02@SA3PR01MB7967.prod.exchangelabs.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 1 Jul 2024 09:52:50 +0200
Message-ID: <CAFOi1A5QMRn6cqA0Ctdtwfs3QSzfze9OSe+BrYV=2rM-X1o73Q@mail.gmail.com>
To: Mark Rosenbaum <m_rosen@mit.edu>
Message-ID-Hash: NN3D7GTJNRPXBUTQQWS46E235F24VRS2
X-Message-ID-Hash: NN3D7GTJNRPXBUTQQWS46E235F24VRS2
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bricked B210 due to wiped EEPROM
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NN3D7GTJNRPXBUTQQWS46E235F24VRS2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6332815801236012641=="

--===============6332815801236012641==
Content-Type: multipart/alternative; boundary="000000000000195af0061c2ae317"

--000000000000195af0061c2ae317
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, that error can mean a bunch of things. It might be faulty hardware,
unfortunately.

--M

On Fri, Jun 28, 2024 at 6:19=E2=80=AFPM Mark Rosenbaum <m_rosen@mit.edu> wr=
ote:

> Martin,
> I actually re-ran the command you asked me too again just to make sure an=
d
> I have a different error now!(Not sure if that's good or bad though.)  Th=
e
> new error is actually my original error I was trying to fix which got me
> into this whole mess. The message is "Error: RuntimeError: fx3 is in stat=
e
> 5".  Any idea where to go from here?
> --
> Mark
> ------------------------------
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Friday, June 28, 2024 12:12 PM
> *To:* Mark Rosenbaum <m_rosen@mit.edu>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Bricked B210 due to wiped EEPROM
>
> Yeah that's probably the last resort. Just hard-code all product IDs and
> whatnot until it works. Good luck!
>
> --M
>
> On Fri, Jun 28, 2024 at 5:52=E2=80=AFPM Mark Rosenbaum <m_rosen@mit.edu> =
wrote:
>
> Martin,
> Just tried exactly that to no avail.  Gives the exact same error.  Is
> there any way to maybe modify the program and recompile to bypass
> error/product code checking?  It looks to me like the check is found on
> line 149 of b200_impl.cpp(
> https://github.com/EttusResearch/uhd/blob/a5ed1872be6d0fc36de9a7e0b508933=
da1f119bc/host/lib/usrp/b200/b200_impl.cpp#L149C1-L149C3), but
> I may be wrong.
> --
> Mark
> ------------------------------
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Friday, June 28, 2024 11:42 AM
> *To:* Mark Rosenbaum <m_rosen@mit.edu>
> *Subject:* Re: [USRP-users] Bricked B210 due to wiped EEPROM
>
> Try specifying absolutely everything on the command line:
>
> ./usrp_burn_mb_eeprom --args=3D"fpga=3D/path/to/fpga/usrp_b210_fpga.bin" =
--values revision=3D<REV>,product=3D<PRODUCT_ID>,serial=3D<SERIAL>,name=3D"=
b200name"
>
> Serial number is on the PCB. PRODUCT_ID is 1, I think for B210 (see https=
://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/b200/b200_iface.h=
pp#L20). Revision is encoded somewhere on the PCB, I'm not sure -- just put=
 5 here and see if things work. Name is up to you of course.
>
> The most important thing is the correct FPGA bin-file.
>
> --M
>
>
> On Fri, Jun 28, 2024 at 3:05=E2=80=AFPM Mark Rosenbaum <m_rosen@mit.edu> =
wrote:
>
> Hey Martin,
> Tried that as almost a first thing after the issue occurred.  The command
> successfully runs with no error but the same issue persists, where any
> other command gives me the "Error: RuntimeError: B200 unknown product cod=
e:
> 0xe3e0" message.
> --
> Mark
> ------------------------------
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Friday, June 28, 2024 5:26 AM
> *To:* Mark Rosenbaum <m_rosen@mit.edu>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Bricked B210 due to wiped EEPROM
>
> Hi Mark,
>
> b2xx_fx3_utils --init-device is your friend. After you run that, you can
> run `usrp_burn_mb_eeprom` again to configure serial number etc.
>
> --M
>
> On Thu, Jun 27, 2024 at 8:45=E2=80=AFPM Mark Rosenbaum <m_rosen@mit.edu> =
wrote:
>
> Hi All,
> I was recently working on fixing an issue with my B210 and accidentally
> re-flashed the bootloader. In the process it seems to have fully wiped th=
e
> EEPROM and now when attempting to perform any action on the device I get
> the following error:
> "Error: RuntimeError: B200 unknown product code: 0xe3e0".
> Is there any way to go back and re-flash the original values?  I've tried
> to use the usrp_burn_mb_eeprom command with the recover_mb_eeprom but it
> still fails with the same error.
> Thanks,
> Mark
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000195af0061c2ae317
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry, that error can mean a bunch of things. It migh=
t be faulty hardware, unfortunately.</div><div><br></div><div>--M<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Jun 28, 2024 at 6:19=E2=80=AFPM Mark Rosenbaum &lt;<a href=3D"mailt=
o:m_rosen@mit.edu">m_rosen@mit.edu</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div class=3D"msg-1623422155006628540">




<div dir=3D"ltr">
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
Martin,</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
I actually re-ran the command you asked me too again just to make sure and =
I have a different error now!(Not sure if that&#39;s good or bad though.)=
=C2=A0 The new error is actually my original error I was trying to fix whic=
h got me into this whole mess. The message
 is &quot;Error: RuntimeError: fx3 is in state 5&quot;.=C2=A0 Any idea wher=
e to go from=C2=A0here?</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
--</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
Mark</div>
<div id=3D"m_-1623422155006628540appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-1623422155006628540divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blan=
k">martin.braun@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, June 28, 2024 12:12 PM<br>
<b>To:</b> Mark Rosenbaum &lt;<a href=3D"mailto:m_rosen@mit.edu" target=3D"=
_blank">m_rosen@mit.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Bricked B210 due to wiped EEPROM</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>Yeah that&#39;s probably the last resort. Just hard-code all product I=
Ds and whatnot until it works. Good luck!</div>
<div><br>
</div>
<div>--M<br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, Jun 28, 2024 at 5:52=E2=80=AFPM Mark Rosenbaum &lt=
;<a href=3D"mailto:m_rosen@mit.edu" target=3D"_blank">m_rosen@mit.edu</a>&g=
t; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Martin,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Just tried exactly that to no=C2=A0avail.=C2=A0 Gives the exact same error.=
=C2=A0 Is there any way to maybe modify the program and recompile to bypass=
 error/product code checking?=C2=A0 It looks to me like the check is found =
on line 149 of b200_impl.cpp(<a href=3D"https://github.com/EttusResearch/uh=
d/blob/a5ed1872be6d0fc36de9a7e0b508933da1f119bc/host/lib/usrp/b200/b200_imp=
l.cpp#L149C1-L149C3" id=3D"m_-1623422155006628540x_m_527617589268171985LPln=
k394935" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/a5ed18=
72be6d0fc36de9a7e0b508933da1f119bc/host/lib/usrp/b200/b200_impl.cpp#L149C1-=
L149C3</a>),=C2=A0but
 I may be wrong.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
--</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Mark</div>
<div id=3D"m_-1623422155006628540x_m_527617589268171985appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-1623422155006628540x_m_527617589268171985divRplyFwdMsg" dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font=
-size:11pt"><b>From:</b> Martin Braun &lt;<a href=3D"mailto:martin.braun@et=
tus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, June 28, 2024 11:42 AM<br>
<b>To:</b> Mark Rosenbaum &lt;<a href=3D"mailto:m_rosen@mit.edu" target=3D"=
_blank">m_rosen@mit.edu</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Bricked B210 due to wiped EEPROM</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>Try specifying absolutely everything on the command line:</div>
<div><br>
</div>
<div>
<pre><code>./usrp_burn_mb_eeprom --args=3D&quot;fpga=3D/path/to/fpga/usrp_b=
210_fpga.bin&quot; --values revision=3D&lt;REV&gt;,product=3D&lt;PRODUCT_ID=
&gt;,serial=3D&lt;SERIAL&gt;,name=3D&quot;b200name&quot;<br><br></code></pr=
e>
<pre><code>Serial number is on the PCB. PRODUCT_ID is 1, I think for B210 (=
see </code><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host=
/lib/usrp/b200/b200_iface.hpp#L20" target=3D"_blank">https://github.com/Ett=
usResearch/uhd/blob/master/host/lib/usrp/b200/b200_iface.hpp#L20</a>). Revi=
sion is encoded somewhere on the PCB, I&#39;m not sure -- just put 5 here a=
nd see if things work. Name is up to you of course.<br><br></pre>
<pre>The most important thing is the correct FPGA bin-file.<br><br></pre>
<pre>--M<br></pre>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, Jun 28, 2024 at 3:05=E2=80=AFPM Mark Rosenbaum &lt=
;<a href=3D"mailto:m_rosen@mit.edu" target=3D"_blank">m_rosen@mit.edu</a>&g=
t; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
Hey Martin,=C2=A0</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
Tried that as almost a first thing after the issue occurred.=C2=A0 The comm=
and successfully runs with no error but the same issue persists, where any =
other command gives me the &quot;Error: RuntimeError: B200 unknown product =
code: 0xe3e0&quot; message.</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
--</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
Mark=C2=A0</div>
<div id=3D"m_-1623422155006628540x_m_527617589268171985x_m_-868458915731100=
4311appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-1623422155006628540x_m_527617589268171985x_m_-868458915731100=
4311divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"=
#000000" style=3D"font-size:11pt"><b>From:</b> Martin Braun &lt;<a href=3D"=
mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>=
&gt;<br>
<b>Sent:</b> Friday, June 28, 2024 5:26 AM<br>
<b>To:</b> Mark Rosenbaum &lt;<a href=3D"mailto:m_rosen@mit.edu" target=3D"=
_blank">m_rosen@mit.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Bricked B210 due to wiped EEPROM</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi Mark,</div>
<div><br>
</div>
<div>b2xx_fx3_utils --init-device is your friend. After you run that, you c=
an run `usrp_burn_mb_eeprom` again to configure serial number etc.</div>
<div><br>
</div>
<div>--M<br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Jun 27, 2024 at 8:45=E2=80=AFPM Mark Rosenbaum &lt=
;<a href=3D"mailto:m_rosen@mit.edu" target=3D"_blank">m_rosen@mit.edu</a>&g=
t; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I was recently working on fixing an issue with my B210 and accidentally re-=
flashed the bootloader. In the process it seems to have fully wiped the EEP=
ROM and now when attempting to perform any action on the device I get the f=
ollowing error:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
&quot;Error: RuntimeError: B200 unknown product code: 0xe3e0&quot;.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Is there any way to go back and re-flash the original values?=C2=A0 I&#39;v=
e tried to use the usrp_burn_mb_eeprom command with the recover_mb_eeprom b=
ut it still fails with the same error.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Mark</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>

</div></blockquote></div>

--000000000000195af0061c2ae317--

--===============6332815801236012641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6332815801236012641==--
