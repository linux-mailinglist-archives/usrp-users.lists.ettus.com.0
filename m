Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78980A2AA20
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 14:39:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AE7D385BE4
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 08:39:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738849177; bh=nY05yXx+OEdf2Z5KJqjtMgNqiohRvQ8So3+htO8z/rs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OOcArgLkFDNc3uH05pIRZvaMSSZPzYjUNJ8JoixejASBbRcO8OkvrKU9jVx+UtDNB
	 YVYdW7zEbFjEH2fYzE7mt5Dn/u+DDcos/w2HKQiAdhN3DPlZt6vxft5vrZtcSgPyLh
	 44dRXneiyAFXXigyFYQBCAPOWWjSOglkRRhAbZoCia7yZKMgCVdzcoK/TKa7Gn7uAb
	 ongHzpgAzNfyqarqpaiRdeyX6SPV0+RdPsJmeerVy/d3OzGPKWWA5Bw21SvMMZqvfd
	 MCLcm52CI2xyLiIOAU8QAC1qiWCHg7Nqe/vj64ZsNaF2Z2N547bHM9eykWQ0/Alg+G
	 XKa8h9df5o+PQ==
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 241F738561A
	for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2025 08:38:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aoXzxxj2";
	dkim-atps=neutral
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5440f22aabdso855187e87.0
        for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2025 05:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738849114; x=1739453914; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W5O3GrJyC+eCvj00qohSTKcKAbdBPkeumMNy7NxQsK0=;
        b=aoXzxxj2CMf1+Nxqv9U6mWZVVZ2nEiCHDM8t/M6tfCgV6KPVYWUAI0ZMiXxKQr7s7q
         PpOgLmTbJLADKPRC5f4XtC+qp6pTIhW6FM5snv0WVgdB/Ydd0W24AP+ejD7g8RrHqRs5
         Lb7swTROT4Nm3ljSxj7ncjS2A1Npz70DTL3BdN6VAeO3SLEPgUONVPlWqLxisuITpIWf
         am2YIRqniaCsX8h5u15QSpJ8ZnX0CP5g1WKfpaxfk/LBPl1ucUylczrb09d79c3HyUSc
         xkEbAA5FXhUSJTNLMfyTGNplvDr9VAPIACscIx0ASb1K0xDdN291C9dYIDNIaEqD6epg
         j+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738849114; x=1739453914;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W5O3GrJyC+eCvj00qohSTKcKAbdBPkeumMNy7NxQsK0=;
        b=TApChZ2Pr9C5/hPaDwErbL4EYoYFc+t4oGOf6WBMPhxiFk3VFlIhmsavmLryE8py04
         AUGQ8x3SZ0YG/+Pa1xmTd4IZGEZW9vcsbI1wmTzDtO2DCNuv9lux1WJaFzUoM/hK6aRb
         DwZdIMw0h58B1DMi4RF0aFE6TVZSZPC/tEwBxoDAXeCJB6NupLOADonBErKYkzVGKjDj
         jqwufvdqVxqRi6A0l8v3GQlop/XI2AQ1CqW+skxElgRuetqUAo/jrNrrBudfEgdxKYc0
         Eb6amggAI1SmAO/qoD3O7oiQYiHf5fbUzUzBHro194SEIonURaxc2+VS5UDgAb8SJUyE
         aHFg==
X-Forwarded-Encrypted: i=1; AJvYcCXNHxvdN2O3+XTd/QfUT7FD79GaeHXrCeK300s3blLIB53N483eV13QlMLFWiTnTA02BS7+33FbtuUS@lists.ettus.com
X-Gm-Message-State: AOJu0Yz5c9a/8z2fXZzqlwBEK2U3bBZe9wGvvcX5G8H8qI2LjhJ+xLIe
	nZZ1IaVzE1EB7cMN1bBmP+dywwYuGmQvwRbRK4B3QNUnM+HeO4GvSDOTUdNFzN9ftmr/nFBLorM
	yHVr2dkujb0K1/Qev6OqGvnqompXXTba5
X-Gm-Gg: ASbGncvW7Qp3hQnxbCEpwnhAzyxdamlIvoC2cr73XQJTFluV+p8avSgBpP6IayzJeIc
	uRBfEC+j8NW3uvtfpTC9YyH/lbP7qb1qKxDcIBj08U5YXEYttaC+5zMVzUpJf3Kq/k9VVPO1I
X-Google-Smtp-Source: AGHT+IHFIpmDmYtcnPGZWCF0IG5YtraCCAhchGQv8wgevlk1p2+HMCFqWLwfFyThsF71/VWpdFV5jkjFU95pJdiPl1c=
X-Received: by 2002:a05:6512:1084:b0:540:251e:b2b9 with SMTP id
 2adb3069b0e04-54405a67311mr2468386e87.41.1738849112854; Thu, 06 Feb 2025
 05:38:32 -0800 (PST)
MIME-Version: 1.0
References: <uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo@lists.ettus.com> <cf99ea0c-7fbd-4927-9f02-1975e7ff5ee5@gsi.de>
In-Reply-To: <cf99ea0c-7fbd-4927-9f02-1975e7ff5ee5@gsi.de>
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Date: Thu, 6 Feb 2025 07:37:56 -0600
X-Gm-Features: AWEUYZmc8Xzk30dsMvmWN7yIica3tMm3vH-PrT1FLYHU5muLjX0266kZ6k3d1CE
Message-ID: <CAE0dfYaVac822sghy2Cz1WNujnd2AXTBLqVL3R0q1pFbt-kE9g@mail.gmail.com>
To: Philipp Niedermayer <p.niedermayer@gsi.de>
Message-ID-Hash: LVI6532LVYE5WED3D2I6VKMJBTJT5PUI
X-Message-ID-Hash: LVI6532LVYE5WED3D2I6VKMJBTJT5PUI
X-MailFrom: alex.m.humberstone@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: meni.dali@sabra-microsystems.com, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Front Panel GPIO to RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LVI6532LVYE5WED3D2I6VKMJBTJT5PUI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2660994458312516501=="

--===============2660994458312516501==
Content-Type: multipart/alternative; boundary="000000000000b096bc062d795bd8"

--000000000000b096bc062d795bd8
Content-Type: text/plain; charset="UTF-8"

I'm working on the same thing, so yes this would be super useful.

Does Ettus Research have any update on that GitHub issue #666?

Here's the link again:
https://github.com/EttusResearch/uhd/issues/666


Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, 88003
alex.m.humberstone@gmail.com
https://ece.nmsu.edu/



On Mon, 3 Feb 2025 at 02:15, Philipp Niedermayer <p.niedermayer@gsi.de>
wrote:

> Hi,
>
> this is currently not possible without changing the UHD core manually
> and re-routing those GPIO lines in the Verilog core code. Some years ago
> I opened a feature request, it contains some hints on what others tried
> and what would be required. Unfortunately, I never got an answer.
>
> Would be wonderful if you could support that by voting on the issue and
> express your interest there. Or if you manage to get it working, share
> your solution with a PR.
>
> Here is the link: https://github.com/EttusResearch/uhd/issues/666
>
> Best regards
> Philipp
>
>
> Am 3.2.25 um 9:00 schrieb meni.dali@sabra-microsystems.com:
> >
> > Hello,
> >
> > I need to establish direct routing between the USRP X410's front panel
> > GPIO pins and custom RFNoC blocks.
> >
> > Specifically, I want to read the GPIO signals directly into my RFNoC
> > block.
> >
> > Does anyone have experience implementing such direct GPIO-to-RFNoC
> > connection on the X410?
> >
> > Any examples or technical documentation would be helpful.
> >
> > Thanks
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b096bc062d795bd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div style=3D"font-family:monospace;font-size:large" =
class=3D"gmail_default">I&#39;m working on the same thing, so yes this woul=
d be super useful.</div><div style=3D"font-family:monospace;font-size:large=
" class=3D"gmail_default"><br></div><div style=3D"font-family:monospace;fon=
t-size:large" class=3D"gmail_default">Does=C2=A0Ettus Research have any upd=
ate on that GitHub issue #666?</div><div style=3D"font-family:monospace;fon=
t-size:large" class=3D"gmail_default"><br></div><div style=3D"font-family:m=
onospace;font-size:large" class=3D"gmail_default">Here&#39;s the link again=
:</div><div style=3D"font-family:monospace;font-size:large" class=3D"gmail_=
default"><a href=3D"https://github.com/EttusResearch/uhd/issues/666">https:=
//github.com/EttusResearch/uhd/issues/666</a></div><div style=3D"font-famil=
y:monospace;font-size:large" class=3D"gmail_default"><br></div><br clear=3D=
"all"></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-=
family:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span s=
tyle=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div><=
font size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></f=
ont></div><div><font size=3D"4"><span style=3D"font-family:monospace">Klips=
ch School of Electrical Engineering<br></span></font></div><div><font size=
=3D"4"><span style=3D"font-family:monospace">New Mexico State University (N=
MSU)<br><span><span>Las Cruces, </span></span>New Mexico, 88003</span></fon=
t></div><div><font size=3D"4"><span style=3D"font-family:monospace"><a href=
=3D"mailto:alex.m.humberstone@gmail.com" target=3D"_blank">alex.m.humbersto=
ne@gmail.com</a><br></span></font></div><div><font size=3D"4"><font face=3D=
"monospace"><a href=3D"https://ece.nmsu.edu/" target=3D"_blank">https://ece=
.nmsu.edu/</a></font><br></font></div><div><font size=3D"4"><font face=3D"m=
onospace"><br></font></font></div><div><font size=3D"4"><span style=3D"font=
-family:monospace"></span></font></div></div></div></div><br></div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, 3 Feb 2025 at 02:15, Philipp Niedermayer &lt;<a href=3D"mai=
lto:p.niedermayer@gsi.de">p.niedermayer@gsi.de</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
this is currently not possible without changing the UHD core manually <br>
and re-routing those GPIO lines in the Verilog core code. Some years ago <b=
r>
I opened a feature request, it contains some hints on what others tried <br=
>
and what would be required. Unfortunately, I never got an answer.<br>
<br>
Would be wonderful if you could support that by voting on the issue and <br=
>
express your interest there. Or if you manage to get it working, share <br>
your solution with a PR.<br>
<br>
Here is the link: <a href=3D"https://github.com/EttusResearch/uhd/issues/66=
6" rel=3D"noreferrer" target=3D"_blank">https://github.com/EttusResearch/uh=
d/issues/666</a><br>
<br>
Best regards<br>
Philipp<br>
<br>
<br>
Am 3.2.25 um 9:00 schrieb <a href=3D"mailto:meni.dali@sabra-microsystems.co=
m" target=3D"_blank">meni.dali@sabra-microsystems.com</a>:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I need to establish direct routing between the USRP X410&#39;s front p=
anel <br>
&gt; GPIO pins and custom RFNoC blocks.<br>
&gt;<br>
&gt; Specifically, I want to read the GPIO signals directly into my RFNoC <=
br>
&gt; block.<br>
&gt;<br>
&gt; Does anyone have experience implementing such direct GPIO-to-RFNoC <br=
>
&gt; connection on the X410?<br>
&gt;<br>
&gt; Any examples or technical documentation would be helpful.<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b096bc062d795bd8--

--===============2660994458312516501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2660994458312516501==--
