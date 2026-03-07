Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDP8JOldrGl/pAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Sat, 07 Mar 2026 18:18:33 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E6D22CDEE
	for <lists+usrp-users@lfdr.de>; Sat, 07 Mar 2026 18:18:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12CED3862FA
	for <lists+usrp-users@lfdr.de>; Sat,  7 Mar 2026 12:18:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772903911; bh=LwtipoxUqG5bUW7TfJ+WUg1CYCTZztpu27TqA5AyFfQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zqqA0HDBckcPiEwe7UGruknDG30Fyx7ijxud2hKodyGXtMHxYr65JrBzc3q2G4NAx
	 8rlldAh6aa2RjCDrdBpvn/QrBgligWYzV6hPqLdPSvWHAu542/s2UlFOP5epb6AsFx
	 /mSGhRtlPAwzbJVL43uNQzX0Zq/KGom6z3wW96mDZM8w92ZUjaClHRM/s9keRsTCL8
	 9WAMemYmSsixN6lBUYYYC1iFBl1NWZdWQcx+92EGUDYsAeKJ5ZGayCL9QGJZmXSl0X
	 GMTJea1JhvfvIZK7gKaAXWu5USTeLC8j58h2VlCEIPu2VmAhbkKFEP+wbb8hwiYfbI
	 dyMpRJfk78SWQ==
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CBA23862F2
	for <usrp-users@lists.ettus.com>; Sat,  7 Mar 2026 12:18:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="shWrI6DX";
	dkim-atps=neutral
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64ae222d978so9907334d50.1
        for <usrp-users@lists.ettus.com>; Sat, 07 Mar 2026 09:18:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772903889; cv=none;
        d=google.com; s=arc-20240605;
        b=XnGAo6zpRHxsTC3kjpnipC69jNY5PYhtUZM0FuL0ErA4LSANBSK0a8hvOh71fsKhg9
         G3suihX7VeTRNIqukJ95PysnbY6ns/WZ2ERAFyHlGgS4B9PxtF6ocqrFUBfZPZc++K88
         vpzw2MrqdkPo+v/EUMJpv+ZTgz5xL+IUkIh2lixcI6FPyWUCf3cDokxH3+B3+ut1+L16
         HqMhgydYVFAK1h23clJwjxGZMCndP5Ob5YHeNQfZrh3nQiO602kmaIzsCgLsl+MFe+QE
         wDR8ruZWiwTCCD2qcugKHndwLu4RwsvPTXyxe0vlLr4g8m0sCytjXQ3P4F5dEZ+vhoJF
         FWYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FN52AQQyuBsH552FVQLqAJ2fNLjjT0N5zU+jDpX9UTs=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=fkOcixmgWHqHotVJnjApT+8jMdW0VT5+PLg3wg2yaG25hI3LtQzk32/tYee03CJ1Ye
         I6PYNPdFLUAhscNDrFBd9pYLn7VdpgEtenChIQwqgiQmVkS6o4dDUP9rbOC0+4QcUGzj
         S03LZscJVwlZUMLCIPUTtRxSiFHbIOdXvDY4J+kufTaKQcilxi43T7odIAivLHPq4WbP
         Db4/gDe30f3tgMVKDM4aVfp5+Zd786lHOC9sr1woO9adB7W6Dx2DDTXsG/q15H9562J4
         tvYV1NlWr7GDUtUa/RN2iJEOYphQQ6Ov4ltJsRYcwQ9EERAmt15ZQFJqHVNUEmAjTTFc
         Aijw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1772903889; x=1773508689; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FN52AQQyuBsH552FVQLqAJ2fNLjjT0N5zU+jDpX9UTs=;
        b=shWrI6DXwjwplAxZnOzTyXJtkWmguXCurMETQXZHctIv8g/Gx7dfE2YD499IEOXaau
         cDLEetKsPJ0S3o1eTKk2D8m1ETclxtMeC1VJQmg8SE9yM2GeJIWi3AnAupXrYywV28Hr
         MAcecFidsj8TKRsKB5AY7mxDCHLGd1MMQzToIoe3uB79q6dBVV+AGVuOKJM/Oq80Yj0a
         8UDZwyZArP1CO0kmf/DlBD6YdhYVdtj7vDbYRDwrvGMdtDe69ZlBDDopYP0wTxgV+Bpp
         qGBPRb4wolsyAfd/LZ5ilCez10GLWCwnwcXHxiFJDsBqO2Dazm4JLpdFEcVzBw4m0j7r
         wYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772903889; x=1773508689;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FN52AQQyuBsH552FVQLqAJ2fNLjjT0N5zU+jDpX9UTs=;
        b=oQZehkms9sBm3HpHOHHWegQYm3K8Byk1U6CWw1bp+xlyA2QWzHLyjoGm/ierUFSigP
         FJmjxI6d/zmiJRDmG/NtsmL18ziBy46dOysd5Owkmd6smeOZKuOLjgm41nnqldgGBDwG
         zWTQ+NmC3VWh7EARniYEwCRcnwaKe0uv/b4jMpG3wYPIA20G3WRhvvvbXebf2m3F10SO
         UYRlXnrTpiVnJYtLsj5De0rNPZ9cmoESrpKiyXg3L77NZ9Uy+fK+aaAgd5c8BelV4PZS
         Ork58WkM45//vVyiZ7HoDv0T+a+uWLi+mn3WPejU0F+K0kFHJK8Nl43prrjNFdHXVLHj
         RxiQ==
X-Gm-Message-State: AOJu0YxkcPd5ICgTzk6xTOKT0aO5hYaeKTGf0k/tRIB4ddmlHYLCtbbF
	izvF2BmikdfxN5i8+4aj4tTaGUDQz5EqOgdR4e9po9rB4vaaf7Jqr4sX0rWD0v6JMQTR7CYSRQb
	Gib3YAlgFtF0V13ydUbOq1Q7tAafrzakCpCCMo2IXgoCgTgfUyuQOSEm0Tg==
X-Gm-Gg: ATEYQzzNqejNfqnQ7Xb5LieLgqI1XcecCSQQ8MXCIwsk179DofexQy9m0/XJDls4qOT
	ZFAWHAT5n9PRQ2oIs/OYCVhZ6gdnwikRlkAPDnveluqPxOOz/LJHRcMtzjkVabti4ohodmqaYSr
	C7kqfJT3spAjhqhdlneEyaIE1xYQo3Cqerb0fO22Vj/Udp9kS4SmHsDvf4BvnFaNdVAaTqPWWwL
	iOnqraWb++MQkeC76AFwrYmUzGsq0JeP/ZQd3/Fth/xu+7kK9zrvXSob5j+MB+sBGCYrT5bcoco
	CurB0sU=
X-Received: by 2002:a05:690e:1188:b0:649:d7e7:ef03 with SMTP id
 956f58d0204a3-64d1407eca2mr5585919d50.1.1772903889324; Sat, 07 Mar 2026
 09:18:09 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB912604328C9A23C7AD07A357EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB9126597BD93B0B0244260DF2EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126597BD93B0B0244260DF2EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Sat, 7 Mar 2026 12:17:58 -0500
X-Gm-Features: AaiRm53dzkqqfoEYCRePpn4QQckHsLYHb-C6flOf-gaR7uCZ2S4eB7IBwXRNT7U
Message-ID: <CAGNhwTN=Sd5uxnesHrBf6tEzVgpwh5NMiR3chUSmOspuj1B9rw@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: YUHOJOVCW2YTUN7ZBJV7JTJJW65LJNOI
X-Message-ID-Hash: YUHOJOVCW2YTUN7ZBJV7JTJJW65LJNOI
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 X4_200 image TX underflows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YUHOJOVCW2YTUN7ZBJV7JTJJW65LJNOI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7003806533514338321=="
X-Rspamd-Queue-Id: D0E6D22CDEE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-0.657];
	FROM_NEQ_ENVFROM(0.00)[michael.dickens@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emerson.com:email,ettus.com:email,ni.com:email,aero.org:email]
X-Rspamd-Action: no action

--===============7003806533514338321==
Content-Type: multipart/alternative; boundary="0000000000008b602f064c725aaf"

--0000000000008b602f064c725aaf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene - Which NIC(s) & NVM & OS driver version (default from system?
from binary or source?)? If there are updates on any of these they might be
worth trying.

Can you try the UHD-4.9 branch and see if that helps? It contains some data
transport / networking fixes that are not in a 4.9 release; that will be
part of the 4.10 release.

These are all useful to try to help debug the issue. Please let us know if
you have any success with these & if not we'll dig further.
---
Michael L Dickens, PhD
Emerson/NI/Ettus SDR RF Principal Application Engineer
Teams: +1-512-683-5305
Cell: +1-512-585-1391
michael.l.dickens@emerson.com <michael.dickens@ni.com>
michael.dickens@ettus.com


On Fri, Mar 6, 2026 at 5:52=E2=80=AFPM Eugene Grayver <eugene.grayver@aero.=
org>
wrote:

> I am also seeing this warning:
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from
> 0/Radio#0:INPUT_EDGE:0, no neighbour found!
> ------------------------------
> *From:* Eugene Grayver <eugene.grayver@aero.org>
> *Sent:* Friday, March 6, 2026 1:17 PM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* X440 X4_200 image TX underflows
>
>
>    - I am trying to send out 16 channels of 40 Msps data from two X440s.
>    - Getting many underflows (~1/s or more)
>    - As far as I can tell the X440 are synchronized correctly
>    - Set time to 0 on next PPS (external)
>       - Start TX at a future time (5s) using a time_spec in TX metadata
>       - Each TX streamer is in a separate thread
>    - Each thread pinned to a different core
>       - CPU utilization is about 20%
>       - I am *NOT *reading anything from disk =E2=80=94 just sending the =
same
>    buffer over and over
>    - wmem_max size is 25 MB
>    - MTU is 9000
>    - UHD 4.9.0
>
>
> What could be wrong?
>
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008b602f064c725aaf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Eugene - Which NIC(s) &amp; NVM &amp; OS driver ve=
rsion (default from system? from binary or source?)? If there are updates o=
n any of these they might be worth trying.</div><div><br></div><div>Can you=
 try the UHD-4.9 branch and see if that helps? It contains some data transp=
ort / networking fixes that are not in a 4.9 release; that will be part of =
the 4.10 release.</div><div><br></div><div>These are all useful to try to h=
elp debug the issue. Please let us know if you have any success with these =
&amp; if not we&#39;ll dig further.</div><div><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><div style=3D"border:0px;font-stretch:inherit;line-height:inherit;=
margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><div style=
=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:=
0px;vertical-align:baseline"><div style=3D"border:0px;font-stretch:inherit;=
line-height:inherit;margin:0px;padding:0px;vertical-align:baseline"><font f=
ace=3D"arial, sans-serif">---</font></div><div style=3D"border:0px;font-str=
etch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-align:base=
line"><font face=3D"arial, sans-serif">Michael L Dickens, PhD</font></div><=
div style=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0px=
;padding:0px;vertical-align:baseline"><font face=3D"arial, sans-serif">Emer=
son/NI/Ettus SDR RF=C2=A0</font><span style=3D"font-family:arial,sans-serif=
">Principal</span><font face=3D"arial, sans-serif">=C2=A0Application Engine=
er</font><br></div><div style=3D"border:0px;font-stretch:inherit;line-heigh=
t:inherit;margin:0px;padding:0px;vertical-align:baseline"><span style=3D"fo=
nt-family:arial,sans-serif">Teams: +1-512-683-5305</span></div><div style=
=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:=
0px;vertical-align:baseline"><font face=3D"arial, sans-serif">Cell: +1-512-=
585-1391</font></div><div style=3D"border:0px;font-stretch:inherit;line-hei=
ght:inherit;margin:0px;padding:0px;vertical-align:baseline"><a href=3D"mail=
to:michael.dickens@ni.com" style=3D"color:rgb(17,85,204);font-family:arial,=
sans-serif" target=3D"_blank">michael.l.dickens@emerson.com</a></div><div s=
tyle=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0px;padd=
ing:0px;vertical-align:baseline"><font face=3D"arial, sans-serif"><a href=
=3D"mailto:michael.dickens@ettus.com" style=3D"color:rgb(17,85,204)" target=
=3D"_blank">michael.dickens@ettus.com</a></font></div></div></div></div></d=
iv></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Mar 6, 2026 at 5:52=E2=80=AFPM Eugene Grayver &l=
t;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayv=
er@aero.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am also seeing this warning:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from 0/Radi=
o#0:INPUT_EDGE:0, no neighbour found!</div>
<div id=3D"m_2014709715583823344m_-4917450617223062255appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_2014709715583823344m_-4917450617223062255divRplyFwdMsg" dir=3D=
"ltr"><font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"=
#000000"><b>From:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@a=
ero.org" target=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Sent:</b> Friday, March 6, 2026 1:17 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> X440 X4_200 image TX underflows</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">I am trying to send out 16 channels of 40 Msps d=
ata from two X440s.</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Getting many underflows (~1/s or more)</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">As far as I can tell the X440 are synchronized c=
orrectly</div>
</li><ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Set time to 0 on next PPS (external)</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Start TX at a future time (5s) using a time_spec=
 in TX metadata</div>
</li></ul>
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Each TX streamer is in a separate thread</div>
</li><ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Each thread pinned to a different core</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">CPU utilization is about 20%</div>
</li></ul>
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">I am <b>NOT </b>reading anything from disk =E2=
=80=94 just sending the same buffer over and over</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">wmem_max size is 25 MB</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">MTU is 9000</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">UHD 4.9.0</div>
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
What could be wrong?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_2014709715583823344m_-4917450617223062255x_Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000008b602f064c725aaf--

--===============7003806533514338321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7003806533514338321==--
